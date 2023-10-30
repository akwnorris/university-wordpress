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
        alert("testing");
    }
}

export default MyNotes;