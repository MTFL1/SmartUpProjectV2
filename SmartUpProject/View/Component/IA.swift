//
//  IA.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 13/03/2024.
//

import SwiftUI
import OpenAI

class ChatController: ObservableObject {
    @Published var messages: [Message] = []
    
    let openAI = OpenAI(apiToken: "")
    
    func sendNewMessage(content: String) {
        let userMessage = Message(content: content, isUser: true)
        self.messages.append(userMessage)
        getBotReply()
    }
    
    func getBotReply() {

        openAI.chats(query: .init(model: .gpt3_5Turbo, messages: self.messages.map({Chat(role: .user, content: $0.content)}))) { result in
            switch result {
            case .success(let success):
                guard let choice = success.choices.first else {
                    return
                }
                let message = choice.message.content
                DispatchQueue.main.async {
                    self.messages.append(Message(content: message ?? "", isUser: false))
                }
            case .failure(let failure):
                print(failure)
            }
        }
    }
}

struct Message: Identifiable {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}

struct IA: View {
    @StateObject var chatController: ChatController = .init()
    @State var string: String = ""
    var body: some View {
        VStack {
            ScrollView {
                ForEach(chatController.messages) {
                    message in
                    MessageView(message: message)
                        .padding(5)
                }
            }
            Divider()
            HStack {
                TextField("Message...", text: self.$string, axis: .vertical)
                    .padding(5)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(15)
                Button {
                    self.chatController.sendNewMessage(content: string)
                    string = ""
                } label: {
                    Image(systemName: "paperplane")
                }
            }
            .padding()
        }
    }
}

struct MessageView: View {
    var message: Message
    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    Text(message.content)
                        .padding()
                        .background(Color.purple)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                }
            } else {
                HStack {
                    Text(message.content)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                    Spacer()
                }
            }
        }
    }
}


#Preview {
    IA()
}
