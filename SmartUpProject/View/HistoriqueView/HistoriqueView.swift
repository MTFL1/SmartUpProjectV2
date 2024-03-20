//
//  HistoriqueView.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct HistoriqueView: View {
    
    @ObservedObject var historique :Historique
    var body: some View {
        VStack{
            Spacer()
            
            NavigationView{
                List(historiques){ historique in
                    NavigationLink{
                        CompteRenduPDF()
                    }label: {
                        Image(systemName: historique.icon)
                            .padding()
                            .font(.system(size: 25))
                 .foregroundStyle(Color("C2A3ED"))

                VStack{
            Text(historique.name)
             .font(.title)
                     .foregroundStyle(Color("C2A3ED"))

            Text(historique.date)
                .foregroundStyle(.gray)

                            }
                        }
                    }
                }
            }
            
        }
    }

#Preview {
    HistoriqueView(historique: Historique(name: "", icon: "", date: ""))
}
