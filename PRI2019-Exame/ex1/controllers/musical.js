var Mus = require('../models/musical')
var mongoose = require('mongoose')


module.exports.listar = () => {
    return Mus
        .find({},{'obra.id' : 1, 'obra.titulo':1, 'obra.tipo' : 1, 'obra.compositor': 1})
        .exec()
}

module.exports.consultar = id => {
    return Mus
        .find({'obra.id': id})
        .exec()
}

module.exports.listaCompositores = () => {
    return Mus
        .distinct('obra.compositor')
        .exec()
}

module.exports.musCompositor = (comp) => {
    return Mus
        .aggregate([{$unwind: "$obra.compositor"},
                    {$match:{'obra.compositor': comp}},
                    {'obra.id': 1, 'obra.titulo': 1}
        ])
}

module.exports.musInstrumento = (inst) => {
    return Mus
        .aggregate([{$unwind: "$obra.instrumento.instrumento"},
                    {$project: {'obra._id': 1, 'obra.titulo': 1, 'obra.partitura': 1}}
        ])
}

module.exports.listaQuant = () => {
    return Mus
        .aggregate([
        {$unwind: "$obra"},
        {
            $group: {_id: "$obra.partitura", numPartitura: {$sum: 1},
            id:  {$push: {t: "$obra.id"}, titulo:  {$push: {t: "$obra.titulo"}}}}
        }
        ])
}
