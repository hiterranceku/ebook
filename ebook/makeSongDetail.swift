//
//  makeSongDetail.swift
//  ebook
//
//  Created by User16 on 2019/10/17.
//  Copyright © 2019 User16. All rights reserved.
//

import SwiftUI

struct makeSongDetail: View {
     var song: makeSong
     var body: some View {
        VStack {
            SongImage(song: song)
            Text(song.lyrics)
                .fontWeight(.thin)
                .padding()
        }
        .navigationBarTitle(song.name)
     }
}

struct makeSongDetail_Previews: PreviewProvider {
    static var previews: some View {
        makeSongDetail(song: songs[0])
    }
}

struct SongImage: View {
    var song: makeSong
    var body: some View {
        Image(song.name)
            .resizable()
            .renderingMode(.original)
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipped()
            .clipShape(Circle())
    }
}
