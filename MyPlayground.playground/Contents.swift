import UIKit

protocol Note {}

struct Drawing: Note {
    var picture: String = ""
}

struct Photo: Note {
    var photo: String = ""
}

class Diary<T> {
    var notes = [Note]()
    
    func makeNote(note: Note) {
        print("New note was written")
        notes.append(note)
    }
}

extension Diary where T == Drawing {
    func makeADrawNote() {
        print("Picture was drawn")
    }
}

let firstDiary = Diary<Photo>()
firstDiary.makeNote(note: Photo(photo: "new photo"))

let secondDiary = Diary<Drawing>()
secondDiary.makeADrawNote()
