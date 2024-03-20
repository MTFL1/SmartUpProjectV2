//
//  SegmentedControl.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct SegmentedControl: View {
    
    @State private var Map = 0
    @State private var searchText = ""
    @State private var choice = ""
    var body: some View {
        
        VStack{
            
            NavigationStack {
           
                    Picker("",selection: $Map) {
                        Text("Carte").tag(0)
                        Text(" Incubateurs").tag(1)
                      
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                  //  .background(.white.opacity(0.2))
                    .colorMultiply(Color("C2A3ED"))
                    //.colorMultiply(.purple)
                    
            if Map == 0 {
                CarteView()
                    .ignoresSafeArea()
            } else {
                ListIncubateurView()
            }
                    
               
            }
        .searchable(text: $searchText, prompt: "Marseille")
            }
            
        }
        
    }


#Preview {
 SegmentedControl()
}
    
