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
    var phrase : String
    var valeur : String
    var page : String
    var total : Double
 @Published  var selection : String?
    
    init(intitule: String, reponse: [String], choix: [String], phrase: String, valeur: String, page: String, total: Double, selection: String? = nil) {
        self.intitule = intitule
        self.reponse = reponse
        self.choix = choix
        self.phrase = phrase
        self.valeur = valeur
        self.page = page
        self.total = total
        self.selection = selection
    }
}


var question = Question(intitule: "Question numÃ©ro une ", reponse: ["A","B","C","D"], choix: ["A","B","C","D"], phrase: "Prêt pour le début de l'aventure?", valeur: "10%", page: "1/11 ", total: 10)
