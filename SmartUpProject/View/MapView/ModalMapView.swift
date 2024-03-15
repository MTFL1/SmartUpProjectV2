//
//  ModalMapView.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import SwiftUI

struct ModalMapView: View {
    
    
    @State private var isModalMapPresented : Bool = false
    
    var body: some View {

        Button() {
            isModalMapPresented.toggle()
        } label: {
            IncubateurView(incubateur: incubateurPreview)
        }
    }
}

#Preview {
    ModalMapView()
}
