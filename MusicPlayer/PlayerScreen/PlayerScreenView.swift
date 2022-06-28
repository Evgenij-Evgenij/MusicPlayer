//
//  PlayerScreenView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI


struct PlayerScreenView: View {
    // var songName = String()
    
    @StateObject var viewModel = PlayerViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            NumberSongsInList()
            ImageAlbom()
        }
        .navigationTitle(Text(viewModel.currentTrackName))
        .foregroundColor(.white)//songName
        .padding()
        
    }
}

struct PlayerScreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PlayerScreenView()
                .preferredColorScheme(.dark)
        }
    }
}


