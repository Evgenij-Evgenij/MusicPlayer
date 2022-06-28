//
//  SerchBarView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 24.06.2022.
//

import SwiftUI

struct TopBarButtonView: View {
    @State private var searchBar = false
    var body: some View {
       // NavigationView {
            HStack{
                Button {
                    searchBar.toggle()
                } label: {
                    ButtonView(imageName: "searchIcon")
                }
                 Spacer()
                Button {
                    //
                } label: {
                    ButtonView(imageName: "burgerMenu")
                }
            }
            .sheet(isPresented: $searchBar) {
                SearchBarView()}
//        }
        //}
    }
}

struct SerchBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarButtonView()
            .preferredColorScheme(.dark)
    }
}

struct ButtonView: View {
    var imageName: String
    var body: some View {
        Circle().stroke(Color.white.opacity(0.5), style: StrokeStyle(lineWidth: 2))
            .frame(width: UIScreen.main.bounds.width * 0.15, height: UIScreen.main.bounds.width *  0.15)
            .overlay(Image(imageName)
                .renderingMode(.template).resizable().scaledToFit()
                .frame(width: UIScreen.main.bounds.width * 0.07, height: UIScreen.main.bounds.height * 0.09)
                .foregroundColor(.white))
           
            
    }
}
