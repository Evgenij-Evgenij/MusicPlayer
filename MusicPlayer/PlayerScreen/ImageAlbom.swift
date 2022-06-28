//
//  ImageAlbom.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI

struct ImageAlbom: View {
    var image: [Tracks] = TrackData.treckData
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    ForEach(image, id: \.self) { item in
                        VStack(spacing: 35) {
                            Image(item.imageName)
                                    .resizable()
                                    .scaledToFill()
                                     .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.5)
                                     .cornerRadius(25)
                                 .shadow(color: .gray.opacity(0.5), radius: 20, x: 0, y: 12)
                            Text("Some Song Name")
                                .font(.title.bold())
                        }
                    }
                    .padding(.bottom, 30)
                    
                }
               
            }
        }
    }
}

struct ImageAlbom_Previews: PreviewProvider {
    static var previews: some View {
        ImageAlbom()
            .preferredColorScheme(.dark)
    }
}

//struct ImageAlbomView: View {
//      var img: Tracks
//    //var img : String
//    var body: some View {
//        HStack {
//            Image(img.image)
//                .resizable()
//                .scaledToFill()
//                .frame(width: UIScreen.main.bounds.width * 0.8, height: UIScreen.main.bounds.height * 0.6)
//                .cornerRadius(25)
//                .shadow(color: .gray.opacity(0.6), radius: 20, x: 0, y: 15)
//
//        }
//    }
//}
