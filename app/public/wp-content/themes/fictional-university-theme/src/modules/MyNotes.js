import $ from 'jquery';

class MyNotes {
    constructor() {
        this.events();
    }

    events() {
        $(".delete-note").on("click", this.deleteNote);
    }

    //Methods go here
    deleteNote() {
        $.ajax({
            url: universityData.root_url + '/wp-json/wp/v2/note/91',
            type: 'DELETE',
            success: (response) => {
                console.log("Congrats");
                console.log(response);
            },
            error: (response) => {
                console.log("Sorry");
                console.log(response);
            }
        });
    }
}

export default MyNotes;