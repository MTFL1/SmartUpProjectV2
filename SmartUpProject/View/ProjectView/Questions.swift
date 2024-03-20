import SwiftUI

struct Questions: View {
    @State private var activateModal = false
   @StateObject var question = Question(intitule: "question une avec reponse possible ", reponse: ["A","B","C","D"], choix: ["A","B","C","D"], phrase: "Prêt pour le début de l'aventure?", valeur: "10%", page: "1/11 ", total: 10)

 
    
    var body: some View {
       
        ZStack(alignment: .bottomTrailing) {
            
            VStack(alignment: .center, spacing: 15) {
           
                VStack {
                   
                    Text(question.phrase)
                        .font(.footnote)
                    
                    HStack{
                    ProgressView(value:question.total, total :100)
                    //Text(progressionBar.phrase); //Text(progressionBar.valeur)
                        .accentColor(Color("C2A3ED"))
                        
                        
                    
          //              Image("SmartUp")
            //                .resizable()
              //              .frame(width: 40, height: 40)
        //                Text(progressionBar.phrase)
        //                Spacer()
        //                // Text(progressionBar.valeur)
                    
          //          .accentColor(.purple)
                   // currentValueLabel: do {
                        Text(question.page)
                           // .frame(maxWidth: .infinity, alignment: . trailing)
                            .foregroundStyle(Color("C2A3ED"))
                            .font(.footnote)
                            .bold()
                    }
                    
                }
                .padding(10)
                
                Text(question.intitule)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 10.0)
                   
             
               
                    ForEach(question.reponse, id:\.self) { reponse in
                       
                        Button {
                            
                            question.selection = reponse
                            print(question.selection ?? "")
                            
                        } label: {
                            
                            if question.selection == reponse {
                                
                               
                                ZStack {
                                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                        .frame(width: 320.0, height: 80.0)
                                        .foregroundColor(Color(red: 0.761, green: 0.639, blue : 0.929))
                                        .shadow(color: Color(uiColor: .label).opacity(0.2), radius : 10)
                                    Text(reponse)
                                        .foregroundColor(.white)
                                
                                }
                                .padding(.bottom)
                               
                           
                            }   else {
                                  
                                ZStack {
                                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                            .frame(width: 320.0, height: 80.0)
                                            .foregroundColor(Color(red: 0.734, green: 0.907, blue : 0.964))
                                            .shadow(color: Color(uiColor: .label).opacity(0.2), radius : 10)
                                        Text(reponse)
                                            .foregroundColor(Color(red: 0.183, green: 0.188, blue: 0.188))
                               
                                    }
                                    .padding(.bottom)
                               
                                }
                        }
                }
                HStack {
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 20.0, height: 20.0)
                        .padding(.top, 55)
                        .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 20.0, height: 20.0)
                        .padding(.top, 55)
                        .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
                   
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 20.0, height: 20.0)
                        .padding(.top, 55)
                        .foregroundStyle(Color(red: 0.761, green: 0.639, blue : 0.929))
                        
                }
                
            }
          
            .padding(.horizontal,40)
            
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
            .padding(.bottom, 30)
            
        }
      
       
        
        
    }
}

#Preview {
    Questions()
}
