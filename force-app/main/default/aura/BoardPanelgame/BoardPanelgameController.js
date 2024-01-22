({
    startgame : function(component, event, helper) {
        //access the combobox
        let getcombobox = component.find("gamemode");

        // access the combobox value
        let gettheselectedvalue = getcombobox.get(!v.value);
        console.log('The start new button game is clicked, the game mode is'+gettheselectedvalue);
        alert('The start new button game is clicked, the game mode is'+gettheselectedvalue);
    },
    reshuffleboard : function(component, event, helper) {
        console.log('The reshuffle is called');
    }
})
