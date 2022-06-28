//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 24.06.2022.
//

import SwiftUI
import AVKit

struct HomeView: View {
    
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List {
                VideoPlayer(player: viewModel.player)
                    .frame(height: 300)
                // last
                Section {
                    Text("Last played")
                }
                
                // options
                Section {
                    Text("Meditation")
                    Text("Concentration")
                    Text("Sleep")
                }
                
            }
//            .listStyle(.insetGrouped)
            
            .navigationTitle("Good evening!")
        }
    }
    func play() {
        let player = AVPlayer(url: URL(string: "https://video-ssl.itunes.apple.com/itunes-assets/Video118/v4/be/9a/18/be9a18de-2e1f-4917-6973-ab4035978aa1/mzvf_5776119663544478994.640x352.h264lc.U.p.m4v")!)
        player.play()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

class HomeViewModel: ObservableObject {
    
    let player = AVPlayer(url: URL(string: "https://video-ssl.itunes.apple.com/itunes-assets/Video118/v4/be/9a/18/be9a18de-2e1f-4917-6973-ab4035978aa1/mzvf_5776119663544478994.640x352.h264lc.U.p.m4v")!)
    
    init() {
        
    }
    
    func play() {
        player.play()
    }
    
    func pause() {
        player.pause()
    }
}
