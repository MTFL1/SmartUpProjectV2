//
//  Dialogue.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//
import SwiftUI

struct Dialogue: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color("C2A3ED"))
                    .shadow(radius: 15)
                    .opacity(isActive ? 0 : 1)
                if isActive {
                    Demarrage()
                }
                VStack {
                    HStack {
                        Text("SmartUp")
                            .bold()
                          
                        Spacer()
                        NavigationLink(destination: Landing1()) {
                            Image(systemName: "plus")
                                .rotationEffect(Angle(degrees: 45))
                        }
                        .buttonStyle(PlainButtonStyle())
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
                    
                }.opacity(isActive ? 0 : 1)
            }
            .frame(width: 350, height: 540)
          
        }
        .onAppear {
            loadingDispatch()
        }
    }
   
    func loadingDispatch() {
        isActive = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isActive = false
        }
    }
}

#Preview {
    Dialogue()
}
