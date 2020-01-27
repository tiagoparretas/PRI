var express = require('express');
var router = express.Router();
var axios = require('axios')

router.get('/:idLeg', function(req, res, next) {
    var id = req.params.idLeg;
    axios.all([
    axios.get('http://clav-api.dglab.gov.pt/api/legislacao/'+id+'?apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzg4NjAwNTQsImV4cCI6MTU4MTQ1MjA1NH0.HIlH4_Ao6504qaLhhbZ2_OtDzaZaG5FeYy-Yc2d9lwQ'),
    axios.get('http://clav-api.dglab.gov.pt/api/legislacao/'+id+'/processos/?apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzg4NjAwNTQsImV4cCI6MTU4MTQ1MjA1NH0.HIlH4_Ao6504qaLhhbZ2_OtDzaZaG5FeYy-Yc2d9lwQ')])
       .then(axios.spread((leg, pro) => { 
           res.render('legislacao',{leg:leg.data,pro:pro.data})
       }))
       .catch(error => console.log(error));
  })


module.exports = router;