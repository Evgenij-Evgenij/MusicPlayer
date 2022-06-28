//
//  PlaerViewModel.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI
import AVFoundation

class PlayerViewModel: ObservableObject {
    @Published public var maxDuration = 0.0
    private var player: AVAudioPlayer?
    
    private func playSong (name: String) {
        guard let audioPut = Bundle.main.path(forResource: name, ofType: "mp3") else {
            return
        }
        do {
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPut))
        } catch  {
            print(error.localizedDescription)
        }
    }
}
