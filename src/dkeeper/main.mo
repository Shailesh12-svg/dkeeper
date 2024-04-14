import Text "mo:base/Text";
import List "mo:base/List";
import Debug "mo:base/Debug";
actor Dkeeper {
  //Creating note datatypes
  public type Note = {
    title : Text;
    content : Text;
  };

  //Creating a variable of type List

  var notes : List.List<Note> = List.nil<Note>();

  //Creting a note
  public func createNote(titleText : Text, contentText : Text) {
    let newNote : Note = {
      title = titleText;
      content = contentText;
    };
    notes := List.push(newNote, notes);
    Debug.print(debug_show (notes));
  };
};
