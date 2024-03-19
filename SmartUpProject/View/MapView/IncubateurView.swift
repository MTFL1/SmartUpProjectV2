//
//  IncubateurView.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import SwiftUI

struct IncubateurView: View {
    @ObservedObject var incubateur : LesIncubateurs
 //Permet d'appeler une app native telque safari
    @Environment(\.openURL) var openURL
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 20) {
            Text(incubateur.nom)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundStyle(.black)
                
            VStack(alignment: .leading, spacing: 5){
                Text(incubateur.adresse1)
                    .foregroundStyle(.black)
                Text(incubateur.adresse2)
                    .foregroundStyle(.black)
                Text(incubateur.adresse3)
                    .foregroundStyle(.black)
            }
                
            HStack(){
                Text(incubateur.codePostal)
                    .foregroundStyle(.black)
                Text(incubateur.ville)
                    .foregroundStyle(.black)
            }
            HStack{
                Image(systemName: "phone.circle")
                    .font(.system(size: 25))
                    .accessibilityLabel(Text("Logo téléphone"))
                    .font(.headline)
                    .foregroundStyle(.black)
 // Boutton qui permet de faire un appel téléphonique en cliquant sur le N° de téléphone
                Button(incubateur.telephone){
                    openURL(URL(string:"tel:"+incubateur.telephone)!)
                }
                    
            }
            HStack{
                Image(systemName: "at")
                    .font(.system(size: 20))
                    .accessibilityLabel(Text("Logo adresse mail"))
                    .font(.headline)
                    .foregroundStyle(.black)
    // Boutton qui appelle l'app native de mail
                Button(incubateur.mail){
                    openURL(URL(string:"mailto:"+incubateur.mail)!)
                }
                   
            }
            HStack{
                Text("Site")
                    .font(.headline)
                    .foregroundStyle(.black)
    // Boutton qui appelle l'app native safari
                Button(incubateur.siteWeb){
                    openURL(URL(string: incubateur.siteWeb)!)
                }
            }
                HStack{
                    Text("Spécialisation")
                        .font(.headline)
                        .foregroundStyle(.black)
                    Text(incubateur.spécialité)
                        .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    IncubateurView(incubateur: incubateurPreview)
}
