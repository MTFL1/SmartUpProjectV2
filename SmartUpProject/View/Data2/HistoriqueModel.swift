//
//  Historique.swift
//  SmartUpProject
//
//  Created by apprenant48 on 12/03/2024.
//

import Foundation

class Historique: Identifiable, ObservableObject{
    var id = UUID()
    var name : String
    var icon : String
    var date : String
    
    init(id: UUID = UUID(), name: String, icon: String, date: String) {
        self.id = id
        self.name = name
        self.icon = icon
        self.date = date
    }
    
}
