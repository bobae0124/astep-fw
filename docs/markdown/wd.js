console.log("Custom script")

window.document.body.onload = function() {
    WaveDrom.ProcessAll()

    /*const wdScripts = window.document.body.querySelectorAll("script.wd");

    wdScripts.forEach( scriptElement => {
        console.log("Found script element: ")
    })*/
}
