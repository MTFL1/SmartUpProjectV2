//
//  QuestionnaireView.swift
//  TestSwiftData
//
//  Created by Apprenant 39 on 18/03/2024.
//

import SwiftUI

class Questionnaire: ObservableObject {
    
    var questions = [Question(intitule: "Quel problème mon entreprise va-t-elle résoudre ? ", reponse: ["A .  Améliorer l'éfficacité dans un processus spécifique","B . épondre à un besoin non satisfait du marché","C . Offrir une alternative moins chère aux solutions existantes","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"]),
                     Question(intitule: "Qui sont mes clients ciblés ?", reponse: ["A . Particuliers","B . Entreprises","C . Gouvernements ou organisations non gouvernementales (ONG)","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quelle est ma proposition de valeur ?", reponse: ["A . Qualité supérieure","B . Prix inférieur","C . Unique/Différence des offres existantes","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quel est mon modèle d'affaires ?", reponse: ["A . Vente de produits","B . Abonnements","C . Commission ou frais de service","D . Publicité"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quelle est la taille du marché ?", reponse: ["A . Niche (petit, spécialisé)","B . Moyen","C . Large","D . Global"], choix: ["A","B","C","D"]),
                     Question(intitule: "Qui sont mes concurrents ?", reponse: ["A . Aucun concurrent direct","B . Quelques concurrents avec des produits similaires","C . Marché fortement concurrentiel","D . Je ne suis pas sûr"], choix: ["A","B","C","D"]),
                     Question(intitule: "Ai-je une équipe pour réaliser ce projet ?", reponse: ["A . Oui, une équipe complète avec toutes les compétences nécessaires","B . Partiellement, quelques compétences clés sont couvertes","C . Non, je suis actuellement en solo","D . En processus de formation de l'équipe"], choix: ["A","B","C","D"]),
                     Question(intitule: "Comment vais-je financer mon entreprise ?", reponse: ["A . Épargnes personnelles","B . Investisseurs (anges ou VC)","C . Prêts bancaires","D . Crowdfunding"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quel est mon plan de marketing de vente ?", reponse: ["A . Marketing digital ( réseaux sociaux, SEO)","B . Vente directe","C . Partenariats et canaux de distribution","D . Pas encore défini"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quels sont les risques et comment puis-je les atténuer ?", reponse: ["A . Risques financiers (manque de financement)","B . Risques de marché (pas de demande)","C . Risques opérationnels (capacité à exécuter)","D . Risque légaux et réglementaires"], choix: ["A","B","C","D"]),
                     Question(intitule: "Quels sont mes objectifs à court et à long terme ?", reponse: ["A . Valider le concept avec un MVP (Produit Minimum Viable)","B . Atteindre la rentabilité","C . Expansion sur de nouveaux marchés","D . Préparation pour une éventuelle sortie"], choix: ["A","B","C","D"])
    
    ]
    
}

struct QuestionnaireView: View {
  
    @StateObject var manager = Questionnaire()
    
    var body: some View {
        TabView{
            ForEach(manager.questions, id:\.id) { question in
                Questions(question: question)
            }
           IdeeProjetFinale()
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    QuestionnaireView()
}


