//
//  CarteView.swift
//  SmartUpProject
//
//  Created by Chantal Moine on 12/03/2024.
//

import SwiftUI
import MapKit

struct CarteView: View {
    
    @State private var selectedPlace : LesIncubateurs?
    
    var body: some View {
        
            Map(initialPosition: MapCameraPosition.automatic){
                ForEach(incubateurs) {
                    pointGps in
                    Annotation(pointGps.nom, coordinate: pointGps.gps)
                    {
                            Image(systemName: "mappin")
                                .foregroundStyle(.red)
  // .onTapGesture transforme "mappin" en boutton
                                .onTapGesture {
                                    selectedPlace = pointGps
                                }
  // .sheet correspond à la modale qui apparait lors qu'on clique sur une épingle sur la map
                                .sheet(item: $selectedPlace) { pointGps in
                                    IncubateurView(incubateur: pointGps)
                                        .presentationDetents([.medium, .large])
                                       .presentationDragIndicator(.hidden)
                                       .presentationBackground(.ultraThinMaterial)
                        }
                    }
                    
                }
            }
  // Permet à l'utilisateur de faire changer l'orientation de le vue de la map manuellement
        .mapStyle(.standard(elevation: .realistic))    }
}

#Preview {
    CarteView()
}
