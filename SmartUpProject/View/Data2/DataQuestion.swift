//
//  Data.swift
//  TestSwiftData
//
//  Created by Apprenant 39 on 15/03/2024.
//

import Foundation

class Question : Identifiable, ObservableObject {
    
    let id = UUID()
    let intitule: String
    let reponse: [String]
    let choix: [String]
 @Published  var selection : String?
    
    init(intitule: String, reponse: [String], choix: [String], selection: String? = nil) {
        self.intitule = intitule
        self.reponse = reponse
        self.choix = choix
        self.selection = selection
    
    }
}


var question = Question(intitule: "Question numÃ©ro une ", reponse: ["A","B","C","D"], choix: ["A","B","C","D"])
