//
//  QuestionnaireView.swift
//  TestSwiftData
//
//  Created by Apprenant 39 on 18/03/2024.
//

import SwiftUI

class Questionnaire: ObservableObject {
    
    var questions = [Question(intitule: "Quel problème mon entreprise va-t-elle résoudre ? ", reponse: ["A .  Améliorer l'éfficacité dans un processus spécifique","B . Répondre à un besoin non satisfait du marché","C . Offrir une alternative moins chère aux solutions existantes","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"], phrase: "Prêt pour le début de l'aventure?", valeur: "10%", page: "1/12 ", total: 10),
                     Question(intitule: "Qui sont mes clients ciblés ?", reponse: ["A . Particuliers","B . Entreprises","C . Gouvernements ou organisations non gouvernementales (ONG)","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"], phrase: "Début prometteur, voyons la suite!", valeur: "15%", page: "2/12", total: 15),
                     Question(intitule: "Quelle est ma proposition de valeur ?", reponse: ["A . Qualité supérieure","B . Prix inférieur","C . Unique/Différence des offres existantes","D . Autre (veuillez spécifier)"], choix: ["A","B","C","D"], phrase: "Impressionnant, continuons sur cette voie.", valeur: "20%", page: "3/11 ", total: 20),
                     Question(intitule: "Quel est mon modèle d'affaires ?", reponse: ["A . Vente de produits","B . Abonnements","C . Commission ou frais de service","D . Publicité"], choix: ["A","B","C","D"], phrase: "Parfait, vous avez déja fait un quart du chemin.", valeur: "30%", page: "4/12 ", total: 30),
                     Question(intitule: "Quelle est la taille du marché ?", reponse: ["A . Niche (petit, spécialisé)","B . Moyen","C . Large","D . Global"], choix: ["A","B","C","D"], phrase: "Vous êtes sur la bonne voie!", valeur: "40%", page: "5/12 ", total: 40),
                     Question(intitule: "Qui sont mes concurrents ?", reponse: ["A . Aucun concurrent direct","B . Quelques concurrents avec des produits similaires","C . Marché fortement concurrentiel","D . Je ne suis pas sûr"], choix: ["A","B","C","D"], phrase: "Chaque réponse nous rapproche de l'objectif.", valeur: "50%", page: "6/12 ", total: 50),
                     Question(intitule: "Ai-je une équipe pour réaliser ce projet ?", reponse: ["A . Oui, une équipe complète avec toutes les compétences nécessaires","B . Partiellement, quelques compétences clés sont couvertes","C . Non, je suis actuellement en solo","D . En processus de formation de l'équipe"], choix: ["A","B","C","D"],phrase: "Superbe progression, on ne s'arrête pas là.", valeur: "60%", page: "7/12 ", total: 60),
                     Question(intitule: "Comment vais-je financer mon entreprise ?", reponse: ["A . Épargnes personnelles","B . Investisseurs (anges ou VC)","C . Prêts bancaires","D . Crowdfunding"], choix: ["A","B","C","D"], phrase: "Vous y êtes presque, gardez le rythme !", valeur: "70%", page: "8/12 ", total: 70),
                     Question(intitule: "Quel est mon plan de marketing de vente ?", reponse: ["A . Marketing digital ( réseaux sociaux, SEO)","B . Vente directe","C . Partenariats et canaux de distribution","D . Pas encore défini"], choix: ["A","B","C","D"], phrase: "Dernière ligne droite!", valeur: "80%", page: "9/12", total: 80),
                     Question(intitule: "Quels sont les risques et comment puis-je les atténuer ?", reponse: ["A . Risques financiers (manque de financement)","B . Risques de marché (pas de demande)","C . Risques opérationnels (capacité à exécuter)","D . Risque légaux et réglementaires"], choix: ["A","B","C","D"], phrase: "Voilà, c'est presque fini.", valeur: "90%", page: "10/12 ", total: 90),
                     Question(intitule: "Quels sont mes objectifs à court et à long terme ?", reponse: ["A . Valider le concept avec un MVP (Produit Minimum Viable)","B . Atteindre la rentabilité","C . Expansion sur de nouveaux marchés","D . Préparation pour une éventuelle sortie"], choix: ["A","B","C","D"], phrase: "Encore un petit effort, nous apprécions vraiment votre contribution.", valeur: "100%", page: "11/12 ", total: 95)
    
    ]
    
}

struct QuestionnaireView: View {

    @StateObject var manager = Questionnaire()

    var body: some View {
        TabView{
            
            Dialogue()
         
            ForEach(manager.questions, id:\.id) { question in
                Questions(question: question)
            }
           
           IdeeProjetFinale()

        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
    }
}

#Preview {
    QuestionnaireView()
}
