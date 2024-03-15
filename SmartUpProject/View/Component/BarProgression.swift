//
//  BarProgression.swift
//  SmartUpProject
//
//  Created by apprenant37 on 13/03/2024.
//

import SwiftUI

struct BarProgression: View {
    @State private var progress = 1.0
    
    var body: some View {
        VStack(spacing: 8) {
            
            
            ProgressView("Prêt pour le début de l'aventure?", value: 10, total: 100)
                .accentColor(.purple)
            
        currentValueLabel: do {
            Text("1/11 ")
                .frame(maxWidth: .infinity, alignment: . trailing)
                .foregroundStyle(.purple)
            
        }
        }
    }
}
        #Preview {
            BarProgression()
        }
