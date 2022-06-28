//
//  WeeklyMusicMixView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI

struct WeeklyMusicMixView: View {
    var color1 = Color.blue.opacity(0.5)
    var color2 = Color.pink.opacity(0.9)
    var body: some View {
        HStack {
            VStack(alignment:.leading){
                Text("Your Weekly Musix Mix")
                    .foregroundColor(.white)
                    .font(.title.bold())
                Button {
                    //
                } label: {
                    HStack(spacing: 20) {
                        Text("Listen")
                            .font(.system(size: 11).bold())
                            .foregroundColor(.black)
                        
                            Image("play (64)")
                            .resizable()
                            .scaledToFit()
                            .frame(width:UIScreen.main.bounds.width * 0.05 , height: UIScreen.main.bounds.width * 0.05)
                    }
                    .padding(10)
                    .background(RoundedRectangle(cornerRadius: 15).fill(LinearGradient(colors: [color1, color2], startPoint: .leading, endPoint: .trailing)))
                    .shadow(color: Color.white.opacity(0.8), radius: 10, x: 0, y: 3)
                    
                }

            }
            Image("headphone")
        }
    }
}

struct WeeklyMusicMixView_Previews: PreviewProvider {
    static var previews: some View {
        WeeklyMusicMixView()
            .preferredColorScheme(.dark)
    }
}
