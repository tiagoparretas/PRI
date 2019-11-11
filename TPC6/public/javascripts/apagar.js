function apagarFilme (ident){
	console.log('Vou apagar o item ' + ident)
	axios.delete('filmes/' + ident)
		.then(response=> window.location.assign('/'))
		.catch(error=>console.log(error))
}