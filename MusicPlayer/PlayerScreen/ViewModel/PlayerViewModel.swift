//
//  PlaerViewModel.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI
import AVKit

class PlayerViewModel: ObservableObject {
    
    // PLAYER
    var player: AVPlayer?
    private var currentTrack: Track?
    private var tracks = [Track]()
    
        
    // UI
    @Published public var maxDuration = 0.0
    
    // TabView .tabViewStyle(.page)
    
    
//    private func playSong (name: String) {
//        guard let audioPut = Bundle.main.path(forResource: name, ofType: "mp3") else {
//            return
//        }
//        do {
//            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPut))
//        } catch  {
//            print(error.localizedDescription)
//        }
//    }
}

// MARK: Player control
extension PlayerViewModel {
    
    func play() {
        player?.play()
    }
    func pause() {}
    func nextTrack() {
//        currentTrack = tracks + 1
//        player = AVPlayer(url: URL(string: currentTrack?.url ?? "")!)
//        player?.play()
    }
    func previousTrack() {}
    func shuffle() {}
    func repeatTrack() {}
    func jumpTo(_ timeline: Double) {}
}

// MARK: UI
extension PlayerViewModel {
    
    var currentTrackName: String {
        return currentTrack?.name ?? "no track name"
    }
    
    
    
}
