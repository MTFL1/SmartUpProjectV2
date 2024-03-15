//
//  ProgressionBarModel_Previews.swift
//  SmartUpProject
//
//  Created by apprenant37 on 13/03/2024.
//

import SwiftUI

struct ProgressionBarModel_Previews: 
    PreviewProvider {
    static var previews: some View {
    //View {
   // var body: some View {
     //   Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        ProgressionBarModel(progressionBar: ProgressionBar(phrase: "", valeur: "", page: "", total: 100))
    }
}

#Preview {
    ProgressionBarModel_Previews()
}
