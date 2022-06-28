//
//  ActionButtonPlayerView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 28.06.2022.
//

import SwiftUI

struct ActionButtonPlayerView: View {
   @State private var progress: Float = 0
    var body: some View {
        Slider(value: $progress, in: 0...100)
            .padding()
            
    }
}

struct ActionButtonPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        ActionButtonPlayerView()
    }
}
