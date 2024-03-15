//
//  ModalMap.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

class ModalMapState: ObservableObject {
    @Published var isModalMapPresented: Bool = false
}

struct ModalMap: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ModalMap()
}
