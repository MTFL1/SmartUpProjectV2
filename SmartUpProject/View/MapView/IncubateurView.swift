//
//  IncubateurView.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import SwiftUI

struct IncubateurView: View {
    @ObservedObject var incubateur : LesIncubateurs
    
    
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 20) {
            Text(incubateur.nom)
                .font(.title3)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.black)
                .padding()
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
                // Text("Téléphone")
                    .font(.headline)
                    .foregroundStyle(.purple)
                Text(incubateur.telephone)
                    
            }
            HStack{
                Image(systemName: "at")
                    .font(.system(size: 20))
                    .accessibilityLabel(Text("Logo adresse mail"))
                // Text("Mail")
                    .font(.headline)
                    .foregroundStyle(.purple)
                Text(incubateur.mail)
                   
            }
            HStack{
                Text("Site")
                    .font(.headline)
                    .foregroundStyle(.purple)
                Text(incubateur.siteWeb)
                  
            }
            HStack{
                Text("Spécialisation")
                    .font(.headline)
                    .foregroundStyle(.purple)
                Text(incubateur.spécialité)
                    .foregroundStyle(.black)
                
            }
        }
    }
}

#Preview {
    IncubateurView(incubateur: incubateurPreview)
}

