//
//  ModalChatBot.swift
//  SmartUpProject
//
//  Created by apprenant48 on 12/03/2024.
//

import SwiftUI

struct ModalChatBot: View {
    @Binding var quitModal : Bool
    var body: some View {
        VStack{
            IA()
        }

    }
}

#Preview {
    ModalChatBot(quitModal: .constant(false))
}
