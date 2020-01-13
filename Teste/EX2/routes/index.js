var express = require('express');
var axios = require('axios');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res) {
    axios.get('http://clav-api.dglab.gov.pt/api/tipologias')
        .then(resposta => res.render('index', {lista: resposta.data}))
        .catch(erro => {
            res.render('error', {title: 'Erro', error: erro, message: ''})
        });
});


module.exports = router;
