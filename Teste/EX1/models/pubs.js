const mongoose = require('mongoose')

var pubSchema = new mongoose.Schema({
    type: String,
    id: String,
    authors: Array,
    title: String,
    booktitle: String,
    address: String,
    year: Number,
    month: String,
    doi:String,
    isbn:String
})

module.exports = mongoose.model('pubs', pubSchema)