//
//  CompteRendu.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct CompteRendu: View {
 
    var body: some View {
        ScrollView(showsIndicators: false) {
                   VStack(alignment: .leading, spacing: 20){
                       
                       Text("Domaine d'activité")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 80.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Numérique")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                       Text("Marché cible")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 80.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Entreprise")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                       
                       
                       Text("Notre produit")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 80.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Application")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                       
                       Text("Notre vision")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 100.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Notre application pour iOS   permettra de rechercher l’idée à 1 million d’euro")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                       
                       
                       
                       
                       
                       Text("Notre environnement")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 100.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Le marché des applications est un marché porteur, mais où la concurrence est très importante.")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                       Text("Résumé")
                           .fontWeight(.semibold)
                           .multilineTextAlignment(.leading)
                       
                       RoundedRectangle(cornerRadius: 20)
                           .frame(width: 320.0, height: 100.0)
                           .foregroundColor(Color(hue: 1.0, saturation: 0.007, brightness: 0.885))
                           .overlay(Text("Le marché des applications est un marché porteur, mais où la concurrence est très importante.")
                               .padding(EdgeInsets(top: 8, leading: 8, bottom : 8, trailing: 8))
                           )
                       
                   }
        }
       
    }
}

#Preview {
    CompteRendu()
}
