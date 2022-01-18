//
//  VideoScreen.swift
//  BachelorApp
//
//  Created by Lukas Weber on 15.01.22.
//  Copyright © 2022 Lukas Weber. All rights reserved.
//

import SwiftUI
import youtube_ios_player_helper

struct YTWrapper: UIViewRepresentable {
    var videoID: String
    
    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoID)
        return playerView
    }
    
    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        //
    }
}

struct VideoScreen: View {
    var body: some View {
//        var videoIDSreen: String
        ZStack {
        NavigationView {
        GeometryReader {
            metrics in
            let
            videoWidth = metrics.size.width * 1.0
            let videoHeight = metrics.size.height * 0.80
            let buttonWidth = metrics.size.width * 0.4
            let buttonHeight = metrics.size.height * 0.1
            
            Image("mathematics-background-different-numbers-pattern-2530108")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
                .frame(height: metrics.size.height * 1)
            
            VStack {
                YTWrapper(videoID: "43HCYSXZ9GI")
                    .frame(width: videoWidth, height: videoHeight, alignment: .center)
                    .padding(.top, 30)
                
                HStack(spacing: metrics.size.width  * 0.1) {
//                Button {
//                    print("abc")
//                } label: {
//                    if #available(iOS 14.0, *) {
//                        Label("Zurück", systemImage: "arrow.uturn.backward.circle")
//                            .font(.system(size: 20))
//                    } else {
//                        // Fallback on earlier versions
//                    }
//                }
//                .foregroundColor(.white)
//                .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
//                .background(Color.red)
//                .cornerRadius(30)
                    
                    
                    
                    NavigationLink(destination: Exercise()) {
                        Text("ABC")
                            .padding()
                            .border(Color.gray)
                    }
                    
//                    ZStack {
                        
                    VideoButtons(buttonName: "Zurück", color: .red, picture: "arrow.uturn.backward.circle")
                        
//                        NavigationLink(destination: Tabbar()) {
//                            Text("kajsdfjasjfkd")
//                                .background(Color.green)
//                                .opacity(0)
//                        }
//                    }
//                    NavigationLink(destination: Exercise()) {
                    VideoButtons(buttonName: "Weiter", color: .green, picture: "arrow.forward")
//                    }
                }
            }
        }
        }
        }
        .navigationBarHidden(true)
    }
    
}

struct VideoScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoScreen()
    }
}
