//
//  Questions.swift
//  TestSwiftData
//
//  Created by Apprenant 39 on 15/03/2024.
//

import SwiftUI

struct Questions: View {
    
   @StateObject var question = Question(intitule: "question une avec reponse possible ", reponse: ["A","B","C","D"], choix: ["A","B","C","D"])

    
    var body: some View {
       
        VStack(alignment: .center, spacing: 30) {
            
            Text(question.intitule)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40.0)
         
                ForEach(question.reponse, id:\.self) { reponse in
                   
                    Button {
                        
                        question.selection = reponse
                        print(question.selection ?? "")
                        
                    } label: {
                        
                        if question.selection == reponse {
                            
                           
                            ZStack {
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                    .frame(width: 320.0, height: 80.0)
                                    .foregroundColor(Color(red: 0.761, green: 0.639, blue : 0.929))
                                    .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15)
                                Text(reponse)
                                    .foregroundColor(.white)
                            
                            }
                            .padding(.bottom)
                           
                       
                        }   else {
                              
                            ZStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                        .frame(width: 320.0, height: 80.0)
                                        .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                                        .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15)
                                    Text(reponse)
                                        .foregroundColor(Color(red: 0.183, green: 0.188, blue: 0.188))
                           
                                }
                                .padding(.bottom)
                           
                            }
                        
                    }
            }
        }
        .padding(.horizontal,40)
       
        
        
    }
}

#Preview {
    Questions()
}
