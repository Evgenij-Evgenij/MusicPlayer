//
//  SearchBarView.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 26.06.2022.
//

import SwiftUI

struct SearchBarView: View {
    @State private var search = ""
    var body: some View {
        NavigationView {
            VStack {
                
                    
                    
            }.searchable(text: $search.animation(.linear))
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}


