window.addEventListener("message", (event) => {
        let perri = event.data;

        if (perri.action === "update") {
            $("#vida").css({"width": Math.round(perri.vidaa) + "%", "top": 100 - Math.round(perri.vidaa) + "%"});
    
        }})



