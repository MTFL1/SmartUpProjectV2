
//  TableauIncubateurs.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import Foundation
import MapKit

var incubateurs : [LesIncubateurs] = [
    LesIncubateurs(nom: "Incubateur Belle de Mai", adresse1: "2 éme étage du pôle média Belle de Mai", adresse2: "37 rue guibal", adresse3: "", codePostal: "13003", ville: "Marseille", telephone: "0495046730", mail: "contact@belledemai.org", siteWeb: "https://www.belledemai.org", spécialité: "Innovation économie numérique et créative", gps: CLLocationCoordinate2D(latitude: 43.309295, longitude:  5.389358)),
    LesIncubateurs(nom: "Incubateur Impulse", adresse1: "Maison du développement industriel", adresse2: "technopole de Chateau Gombert", adresse3: "", codePostal: "13452", ville: "Marseille", telephone: "0491100145", mail: "contact@incubateur-impulse.com", siteWeb: "http://incubateur-impulse.fr", spécialité: "science et technologie",gps: CLLocationCoordinate2D(latitude: 43.343151, longitude: 5.438428)),
    LesIncubateurs(nom: "Marseille Technologie", adresse1: "45 rue Frédéric Joliot Curie", adresse2: "", adresse3: "", codePostal: "13382", ville: "Marseille", telephone: "0491118800", mail: "", siteWeb: "https://www.marseille-innov.org", spécialité: "Technologie, Technoptic",gps: CLLocationCoordinate2D(latitude: 43.343948, longitude: 5.43511)),
    LesIncubateurs(nom: "Couveuse Interface", adresse1: "83 la Canebière", adresse2: "", adresse3: "", codePostal: "13001", ville: "Marseille", telephone: "0488919465", mail: "contact@interface.ms", siteWeb: "https://interface.ms", spécialité: "Entrepreneuriat",gps: CLLocationCoordinate2D(latitude: 43.297972, longitude: 5.381263))
    
]
// pour ppermettre d'appeller dans la liste et la modale la même mise en forme de la vue incubateur et avec les même fonctions
var incubateurPreview = LesIncubateurs(nom: "nom de l'incubateur", adresse1: "ad1", adresse2: "ad2", adresse3: "ad3", codePostal: "13000", ville: "Ville", telephone: "04900000", mail: "mail@mm.org", siteWeb: "web.org", spécialité: "spécialité",gps: CLLocationCoordinate2D(latitude: 43.297972, longitude: 5.381263))
