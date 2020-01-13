const express = require ('express')
const router = express.Router();

var Pubs = require('../../controllers/pubs');

router.get('/pubs', function (req, res) {
    Pubs.listar()
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).jsonp(erro))
})

router.get('/pubs/:id', function (req, res) {
    Pubs.consultar(req.params.id)
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).jsonp(erro))
})

router.get('/pubs/', (req, res) => {
    var purl = url.parse(req.url, true);
    var query = purl.query;
    Pubs.listaType(query.type)
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).send('Erro na listagem de tipos!'));
});

router.get('/pubs/', (req, res) => {
    var purl = url.parse(req.url, true);
    var query = purl.query;
    Premio.listaTypeYear(query.type, query.year)
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).send('Erro na listagem de tipos por ano!'));
});

router.get('/pubs', (req, res) => {
    var purl = url.parse(req.url, true);
    var query = purl.query;
    Premio.listaAutor(query.author)
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).send('Erro na listagem dos Autores!'));
});


module.exports = router;
