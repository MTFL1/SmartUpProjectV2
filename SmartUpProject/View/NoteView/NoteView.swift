//
//  ContentView.swift
//  MyNoteBook
//
//  Created by apprenant37 on 18/03/2024.
//

import SwiftUI


struct Note : Identifiable {

var id = UUID()
var content : String }

struct NoteView: View {
    @State private var selectedNoteID: UUID?
    @State private var notes = [Note]()
    @State private var newNoteContent = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    TextField("Ajouter une nouvelle note", text: $newNoteContent)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button(action: addNote) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                }
                .padding()
                
                List {
                    ForEach($notes) { $note in
                        NavigationLink(destination: NoteDetailView(noteTitle: truncateTitle(note.content), noteContent: $note.content), tag: note.id, selection: $selectedNoteID) {
                            Text(truncateTitle(note.content)) // Utilisez le titre tronqué
                        }
                    }
                    .onDelete(perform: deleteNote)
                }
                .navigationTitle("Mes Notes")
            }
        }
    }
    
    func addNote() {
        if !newNoteContent.isEmpty {
            let newNote = Note(content: newNoteContent)
            notes.append(newNote)
            newNoteContent = ""
        }
    }
    
    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
    }
}

// Déplacez la fonction à l'extérieur de ContentView
func truncateTitle(_ title: String) -> String {
    let maxTitleLength = 20
    if title.count > maxTitleLength {
        return String(title.prefix(maxTitleLength)) + "..." // Ajoute "..." si le titre est tronqué
    } else {
        return title
    }
}


   #Preview {
  ContentView()
    
}
