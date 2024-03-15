//
//  ProgressionBarModel.swift
//  SmartUpProject
//
//  Created by apprenant37 on 13/03/2024.
//

import SwiftUI

struct ProgressionBarModel: View {
    @ObservedObject var progressionBar : ProgressionBar
    
   // @State private var progress = 1.0
    
    var body: some View {
        VStack(spacing: 6) {
            
            Text(progressionBar.phrase)
            
            HStack{
            ProgressView(value:progressionBar.total, total :100)
            //Text(progressionBar.phrase); //Text(progressionBar.valeur)
                .accentColor(.purple)
            
                Image("SmartUp")
                    .resizable()
                    .frame(width: 60, height: 60)
//                Text(progressionBar.phrase)
//                Spacer()
//                // Text(progressionBar.valeur)
            }
            .accentColor(.purple)
           // currentValueLabel: do {
                Text(progressionBar.page)
                   // .frame(maxWidth: .infinity, alignment: . trailing)
                    .foregroundStyle(.purple)
            }
        .padding()
            }
        }
//struct ProgressionBarModel_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressionBarModel(progressionBar: ProgressionBar(phrase: "JJ", valeur: "50%", page: "ll", total: 100))
//    }
//}
        
  //  }



#Preview {
    ProgressionBarModel(progressionBar:ProgressionBar(phrase: "", valeur: "", page: "", total: Double()))
}
