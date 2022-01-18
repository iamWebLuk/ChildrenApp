//
//  VideoView.swift
//  BachelorApp
//
//  Created by Lukas Weber on 15.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI
import youtube_ios_player_helper

struct VideoView: View {
    var playerView: YTPlayerView!
    var body: some View {
        VStack {
        playerView.load(withVideoId: "")
            Text("abc")
                .frame(width: 100, height: 100, alignment: .center)
            View
        }
    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView()
    }
}
