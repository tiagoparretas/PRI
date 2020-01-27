const mongoose = require('mongoose')

var partSchema = new mongoose.Schema({
    type: String,
    path : String,
    voz : String,
    clave: String,
    afinacao: String
  });

var instSchema = new mongoose.Schema({
    designacao: String,
    partitura : partSchema
  });

var musSchema = new mongoose.Schema({
    _id: mongoose.Schema.Types.ObjectId,
    id : String,
    titulo : String,
    tipo : String,
    compositor : String,
    instrumentos : [instSchema]

  });

module.exports = mongoose.model('musical', musSchema)