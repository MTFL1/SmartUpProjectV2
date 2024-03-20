//
//  IdeeProjetFinale.swift
//  TestSwiftData
//
//  Created by Apprenant 39 on 18/03/2024.
//

import SwiftUI

struct IdeeProjetFinale: View {
    
    @State private var text: String = ""
    @State private var textDeux: String = ""
    @State private var progress: Double = 1.0
    
    var body: some View {
        

            
        NavigationStack {
            
            VStack(alignment: .center, spacing: 5) {
                Spacer()
                        
                Text("C'est fait, bien joué !")
                    .font(.footnote)
                        
                        HStack{
                            ProgressView(value: 100, total :100)
                            .accentColor(.purple)
                            
                            Text("12/12")
                                .foregroundStyle(.purple)
                                .font(.footnote)
           
                        }
                        .padding(.horizontal,40)
                        .accentColor(.purple)
                Spacer()
                    .frame(height : 20)
                
                    Text("Grâce à vos recherches, déterminez votre concept de start-up.")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                        
                    
                    Text("Idée n°1")
                        .multilineTextAlignment(.center)
                    
                    TextField("Enter votre idée de projet", text: $text)
                        .padding(.leading)
                        .background( RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 320.0, height: 80.0)
                            .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                            .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15))
                        .frame(width: 320.0, height: 80.0)
                    
                        .padding(.bottom,20)
                    Text("Idée n°2")
                        .multilineTextAlignment(.center)
                    
                    TextField("Enter votre idée de projet", text: $textDeux)
                        .padding(.leading)
                        .background( RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 320.0, height: 80.0)
                            .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                            .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15))
                        .frame(width: 320.0, height: 80.0)
                    
                    
                    Text("À ce stade, quelle est votre préférence ?")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    
                    HStack(spacing: 40) {
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 100.0, height: 80.0)
                                .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                                .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15)
                            Text("Idée n°1")
                        }
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 100.0, height: 80.0)
                                .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                                .shadow(color: Color(uiColor: .label).opacity(0.3), radius : 15)
                            Text("Idée n°2")
                        }
                        
                        
                        }
                        .padding(.top, 20)
                    
                    NavigationLink(destination: CompteRendu()) {
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
            Spacer()
                .frame(height:60)
        }
      

        
    }
}

#Preview {
    IdeeProjetFinale()
}
