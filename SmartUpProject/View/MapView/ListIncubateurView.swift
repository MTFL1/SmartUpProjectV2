//
//  ListIncubateurView.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 11/03/2024.
//

import SwiftUI

struct ListIncubateurView: View {
    var body: some View {
        
            List{
                ForEach(incubateurs){ incubateur in
                    IncubateurView(incubateur: incubateur)}
           
        }
    }
}

#Preview {
    ListIncubateurView()
}
