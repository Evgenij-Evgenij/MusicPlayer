//
//  ListSongs.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 24.06.2022.
//

import SwiftUI

struct ListSongs: View {
    let bGGradient = LinearGradient(colors: [Color.gray, Color.black], startPoint: .top, endPoint: .bottom)
    var body: some View {
        
        VStack{
            TopBarButtonView()
            WeeklyMusicMixView()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.black))
    }
}

struct ListSongs_Previews: PreviewProvider {
    static var previews: some View {
        ListSongs()
            .preferredColorScheme(.dark)
    }
}
