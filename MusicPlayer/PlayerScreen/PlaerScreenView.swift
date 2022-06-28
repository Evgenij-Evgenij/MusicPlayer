//
//  PlaerScreenView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI


struct PlaerScreenView: View {
    // var songName = String()
    var body: some View {
        VStack(spacing: 20) {
            NumberSongsInList()
            ImageAlbom()
            
        }
        .navigationTitle(Text("Song Name"))
        .foregroundColor(.white)//songName
        .padding()
        
    }
}

struct PlaerScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PlaerScreenView()
            .preferredColorScheme(.dark)
    }
}
