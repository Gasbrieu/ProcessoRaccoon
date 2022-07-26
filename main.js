//node.js v12.22.5
const countWords = (word = 'Paralalelepipedo') => {
    word  = Array.from(word)
    let aux = []
    for(i = 0; i < word.length; i++){
        let str = word[i]
        if(!aux.find(function(e){return e == str})){
            console.log(word[i] + ' : ' + word.filter(function(e){return e == str}).length)
            aux.push(word[i])
        }
    }
}
countWords() //caso um parâmetro não seja passado, o valor default corresponde a palavra usada como exemplo no teste
