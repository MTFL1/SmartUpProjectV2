//
//  NoteDetailView.swift
//  MyNoteBook
//
//  Created by apprenant37 on 18/03/2024.
//

import SwiftUI

struct NoteDetailView: View {
    var noteTitle: String
    @Binding var noteContent: String
    let currentDate = Date() // Date actuelle
    
    var body: some View {
        VStack {
            TextEditor(text: $noteContent)
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            Spacer() // Pousse la date vers le bas de la vue

            HStack {
                Spacer()
                Text(currentDateFormatted())
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
        }
        .navigationBarTitle(truncateTitle(noteTitle), displayMode: .inline) // Utilisez le titre tronqué
    }

    // Fonction pour obtenir la date actuelle sous forme de chaîne de caractères
       private func currentDateFormatted() -> String {
           let formatter = DateFormatter()
           formatter.dateStyle = .medium
           formatter.timeStyle = .short
           return formatter.string(from: currentDate)
       }
    // Fonction pour tronquer le titre si nécessaire
    private func truncateTitle(_ title: String) -> String {
        let maxTitleLength = 20
        if title.count > maxTitleLength {
            return String(title.prefix(maxTitleLength)) + "..." // Ajoute "..." si le titre est tronqué
        } else {
            return title
        }
    }
}
//}
#Preview {
    NoteDetailView(noteTitle: "", noteContent: .constant(""))
}
