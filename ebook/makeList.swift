//
//  makeList.swift
//  ebook
//
//  Created by User16 on 2019/10/17.
//  Copyright © 2019 User16. All rights reserved.
//

import SwiftUI

struct makeList: View {
    var body: some View {
        
        /*NavigationView {
            List(0..<songs.count) { (index) in
                NavigationLink(destination: makeSongDetail(song: songs[index])){
                    makeListRow(song: Aqours[index])
                }
            }
            .navigationBarTitle("情歌王")
        }*/
        NavigationView {
            List {
                Section(header: Text("Aqours")
                    .fontWeight(.bold)) {
                    ForEach(0..<Aqours.count) { (index) in
                        NavigationLink(destination: makeSongDetail(song: Aqours[index])) {
                            makeListRow(song: Aqours[index])
                        }
                    }
                }
                
                Section(header: Text("Solos")
                    .fontWeight(.bold)) {
                    ForEach(0..<Solos.count) { (index) in
                        NavigationLink(destination: makeSongDetail(song: Solos[index])) {
                            makeListRow(song: Solos[index])
                        }
                    }
                }
            }
            .navigationBarTitle("Songs")
            
        }
        
    }
}

struct makeList_Previews: PreviewProvider {
    static var previews: some View {
        makeList()
            
    }
}
