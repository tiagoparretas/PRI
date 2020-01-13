var express = require('express');
var router = express.Router();
var Pubs = require('../../controllers/pubs');

router.get('/', (req, res) => {
    Pubs.listaTipos()
        .then(dados => res.jsonp(dados))
        .catch(erro => res.status(500).send('Erro na listagem de tipos!'));
});

module.exports = router;