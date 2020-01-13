var Pub = require('../models/pubs')
var mongoose = require('mongoose')

const Pubs = module.exports


//GET /api/pubs - Devolve a lista de publicações apenas com os campos "id", "title", "year" e "type";
Pubs.listar = () => {
    return Pub
        .find({},{_id : true, title: true, year: true, type : true })
        .exec()
}

//GET /api/pubs/:id - Devolve a informação completa de uma publicação;
Pubs.consultar = id => {
    return Pub
        .findOne({id : id})
        .exec()
}

//GET /api/types - Devolve a lista de tipos, sem repetições;
Pubs.listaTipos = () => {
    return Pubs.distinct("type")
                 .exec();
}

//GET /api/pubs?type=YYY - Devolve a lista de publicações que tenham o campo "type" com o valor "YYY";
//db.filmes.find({title: /Love/},{_id:false, title:true, year:true})
Pubs.listaType = (type) => {
        return Pubs.find({},{
                            type: type,
                        })
                      .exec();

}

//GET /api/pubs?type=YYY&year=AAAA - Devolve a lista de publicações que tenham o campo "type" com o valor "YYY" 
//                                    e o campo "year" com um valor superior a "AAAA";
Pubs.listaTypeYear = (type, year) => {
    if (categoria && data) {
        return Premio.find({},{
                            type: type, 
                            year: {$gt: year}
                        })
                      .exec();
    }
    else if (type && !year) {
        return Pubs.find({type: type})
                         .exec();
    }
    else {
        return Pubs.find({},{_id: 0, year: 1, type: 1}) 
                     .exec();
    }
}

//GET /api/autores - Devolve uma lista ordenada alfabeticamente com os nome dos autores ;
Pubs.listar = () => {
    return Pub
        .aggregate( { authors : "$authors" }, {$sort: authors} )
        .exec()
}

//GET /api/pubs?autor=AAA - Devolve uma lista com as publicações do autor.
Pubs.listaAutor = (autor) => {
    return Pub.aggregate(
        [{$unwind:"$autores"}, 
        {author: autor},
        ])
        .exec();
}

