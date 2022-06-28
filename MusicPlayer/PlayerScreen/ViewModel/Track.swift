//
//  Track.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 28.06.2022.
//

import SwiftUI


struct Track: Hashable {
   // var id = UUID()
    var name: String
    var imageName: String
    var url: String?
}

struct TrackData: Hashable {
    static let treckData = [
        Track(name: "1", imageName: "Tailor Swift Albom1", url: Bundle.main.path(forResource: "name", ofType: "mp3")),
        Track(name: "2", imageName: "Tailor Swift Album2", url: "https://"),
        Track(name: "3", imageName: "Tailor Swift Album3", url: "https://")
//        Tracks(imageName: "BG")
     ]
}
