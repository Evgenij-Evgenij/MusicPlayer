//
//  NumberSongsInList.swift
//  MusicPlayer
//
//  Created by Евгений Воронов on 27.06.2022.
//

import SwiftUI

struct NumberSongsInList: View {
    var body: some View {
        Text("21 of 149")
            .foregroundColor(.gray)
            .font(.caption)
        
        // выполнить подсчет элементов в списке через .count?
    }
}

struct NumberSongsInList_Previews: PreviewProvider {
    static var previews: some View {
        NumberSongsInList()
            .preferredColorScheme(.dark)
    }
}
