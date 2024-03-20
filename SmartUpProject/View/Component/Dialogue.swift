//
//  Dialogue.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//
import SwiftUI

struct Dialogue: View {
   
    var body: some View {

        VStack {
            ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color("C2A3ED"))
                        .shadow(radius: 10)
                        
                    VStack {
                        HStack {
                            Text("SmartUp")
                                .bold()
                              
                            Spacer()
                          
                        }
                        .padding()
                    
                        Spacer()
                        
                        VStack(spacing: 10) {
                            Text("Bonjour, je suis “Smartup” je suis votre assistant virtuel.")
                                .bold()
                            Text("Je suis là pour vous guider à travers chaque étape du processus.")
                                .bold()
                            Text("Veuillez noter que certaines étapes sont obligatoires. Une fois que vous avez terminez votre cycle de réflexion, vous aurez l’option d’éditer le compte rendu.")
                                .bold()
                            Text("Un historique de vos cycles est également disponible pour consultation.")
                                .bold()
                            Text("Et rappelez-vous, que pouvez reprendre votre cycle quand vous le souhaitez.")
                                .bold()
                            
                            Image("SmartUp")
                                .resizable()
                                .frame(width: 120, height: 120)
                        }
                        .multilineTextAlignment(.center)
                        .padding(2)
                        
                    }
                    
                }
            .frame(width: 350, height: 540)
           
            HStack {
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
            //        .padding(.top, 55)
                    .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
                
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
               //     .padding(.top, 55)
                    .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
               
                Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
             //       .padding(.top, 55)
                    .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
            }.padding(.top, 45)
        }
      
 
    }
}

#Preview {
    Dialogue()
}
