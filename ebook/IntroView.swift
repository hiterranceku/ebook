//
//  IntroView.swift
//  ebook
//
//  Created by User16 on 2019/10/17.
//  Copyright © 2019 User16. All rights reserved.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        
            VStack{
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<5) { (index) in
                    Image("furi0\(index)")
                        .resizable()
                        .scaledToFill()
                        .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 200)
                        .clipped()
                    }
                }
            }
                Text("新人聲優，在加入LoveLive!Sunshine!!企劃後開始受到人們關注，經過測量身高為四根薯條長。興趣是音樂鑑賞、收集T恤、攝影、繪畫等，擅長繪畫，曾經常在推特和Instagram上發布自己的畫作。")
                    .fontWeight(.thin)
            }
                    .navigationBarTitle("降幡愛")
        
}
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
