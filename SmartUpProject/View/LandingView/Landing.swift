//
//  Landing1.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct Landing1: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                ZStack {
                    Circle()
                        .fill(Color("C2A3ED"))
                         
                    Image("SmartUp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                }.frame(width: 350)
                    .padding()
                Text("Nous vous aidons à valider vos idées")
                
               NavigationLink(destination: QuestionnaireView()) {
                            Text("Commencer")
                                .foregroundColor(.white)
                                .frame(width: 100)
                                .padding()
                                .background(Color("C2A3ED"))
                                .cornerRadius(10)
                                .padding()
                        }
                        .buttonStyle(PlainButtonStyle())
            }
        }

    }
}

#Preview {
    Landing1()
}
