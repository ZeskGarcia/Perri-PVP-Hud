
window.addEventListener("message", (event) => {
        let e = event.data;

        if (e.action === "update") {
            $("#hola").css({"width": Math.round(e.health) + "%", "top": 100 - Math.round(e.health) + "%"});
            

}})



