//
//  LesIncubateurs.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import Foundation
import MapKit

class LesIncubateurs : Identifiable, ObservableObject {
    
    var id = UUID()
    
    var nom : String
    var adresse1 : String
    var adresse2 : String
    var adresse3 : String
    var codePostal : String
    var ville : String
    var telephone : String
    var mail : String
    var siteWeb : String
    var spécialité : String
    var gps = CLLocationCoordinate2D()
    
    
    init(id: UUID = UUID(), nom: String, adresse1: String, adresse2 : String, adresse3: String, codePostal: String, ville: String, telephone: String, mail: String, siteWeb: String, spécialité: String, gps: CLLocationCoordinate2D ) {
        self.id = id
        self.nom = nom
        self.adresse1 = adresse1
        self.adresse2 = adresse2
        self.adresse3 = adresse3
        self.codePostal = codePostal
        self.ville = ville
        self.telephone = telephone
        self.mail = mail
        self.siteWeb = siteWeb
        self.spécialité = spécialité
        self.gps = gps    }
}
