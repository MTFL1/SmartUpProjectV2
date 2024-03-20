//
//  ChatBot.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct ChatBot: View {
    @State private var activateModal = false
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                Button{
                    activateModal.toggle()
                }label: {
                    Image("SmartUp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 120)
                        .sheet(isPresented: $activateModal, content: {
                            ModalChatBot(quitModal: $activateModal)

                        })
                }
            }
        }.shadow(radius: 20)
    }
}
#Preview {
    ChatBot()
}
