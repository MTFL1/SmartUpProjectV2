//
//  TabBar.swift
//  SmartUpProject
//
//  Created by Tefili Mohamed on 08/03/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        
        TabView {

        Projet()
            .tabItem {
                Label("Projet", systemImage: "folder.badge.plus")
            }
        
        Note()
            .tabItem {
                Label("Note", systemImage: "list.bullet.clipboard")
            }
        
        CarteView()
            .tabItem {
                Label("Map", systemImage: "map")
            }
        
            HistoriqueView(historique: Historique(name: "", icon: "", date: ""))
            .tabItem {
                Label("Historique", systemImage: "clock.arrow.circlepath")
            }
    }
        .tint(Color(red: 0.613, green: 0.51, blue: 0.745))
    }
}

#Preview {
    TabBar()
}
