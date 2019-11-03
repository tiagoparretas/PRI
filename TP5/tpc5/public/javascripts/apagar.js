function apagarItem (ident){
    console.log('Vou apagar o item: ' + ident)
    axios.delete('/compras/' + ident)
        .then(response => window.location.assign('/compras'))
        .catch(error => console.log(erro))
}