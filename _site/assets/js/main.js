function debug(name) {
    alert(name)
}

function play_audio(name) {
    var plyr = document.getElementById('player')
    plyr.src = name
    plyr.play()
}

