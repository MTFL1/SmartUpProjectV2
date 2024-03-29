//
//  Landing1.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//
import SwiftUI

struct Landing1: View {
    @Binding var showSecondView : Bool
    @State private var isActive = false
    
    var body: some View {
        ZStack {
            if isActive {
                Demarrage()
            } else {
                VStack {
                    ZStack {
                        Circle()
                            .fill(Color("C2A3ED"))
                        Image("SmartUp")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(10)
                    } .shadow(radius: 10)
                    .frame(width: 350)
                    .padding()
                    
                    Text("Nous vous aidons à valider vos idées")
                    
                
                        Button {
                            showSecondView = true
                        } label: {
                            Text("Commencer")
                                .foregroundColor(.white)
                                .font(.title2)
                                .fontWeight(.medium)
                             //   .frame(width: 100)
                                .padding()
                                .background(Color("C2A3ED"))
                                .cornerRadius(10)
                                .padding()
                        }
                        .buttonStyle(PlainButtonStyle())
                    }.opacity(isActive ? 0 : 1)
                }
               
            } .onAppear {
                loadingDispatch()
            }
        }
       
    
    
    func loadingDispatch() {
        isActive = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            isActive = false
        }
    }
}
#Preview {
    Landing1(showSecondView : .constant(false))
}
