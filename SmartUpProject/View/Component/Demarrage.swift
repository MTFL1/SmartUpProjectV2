//
//  Demarrage.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct Demarrage: View {
   
    @State var size = 0.4
    @State var opacity = 0.3
    
    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .fill(Color("C2A3ED"))
                Image("SmartUp")
                    .padding(10)
            }
            .shadow(radius: 10)
            Text("SmartUp")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("C2A3ED"))
                .padding(.top, 50)
         
        }
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 2.2)){
                self.size = 0.7
                self.opacity = 1
            }
            
        }
     
    }
  
}
   

#Preview {
    Demarrage()
}
