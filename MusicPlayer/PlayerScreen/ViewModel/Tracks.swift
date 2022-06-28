//
//  Tracks.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 28.06.2022.
//

import Foundation
import SwiftUI


struct Tracks: Hashable{
   // var id = UUID()
    var imageName: String
}

struct TrackData: Hashable {
    static let treckData = [
        Tracks(imageName: "Tailor Swift Albom1"),
        Tracks(imageName: "Tailor Swift Album2"),
        Tracks(imageName: "Tailor Swift Album3")
//        Tracks(imageName: "BG")
     ]
}
