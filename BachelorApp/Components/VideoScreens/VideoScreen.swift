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
    @Binding var newMathButtonPressed: Bool
    @State var nextButtonPressed: Bool = false
    var videoID: String
    var abc: String?
    
    var body: some View {
        
        ZStack {
            if #available(iOS 15.0, *) {
                Spacer()
                    .fullScreenCover(isPresented: $nextButtonPressed) {
                        Exercise(nextButtonPressed: $nextButtonPressed, isMathScreen: .constant(false))
                    }
            } else {
                // Fallback on earlier versions
            }
        GeometryReader {
            metrics in
            let
            videoWidth = metrics.size.width * 0.9
            let videoHeight = metrics.size.height * 0.70
            let buttonWidth = metrics.size.width * 0.4
            let buttonHeight = metrics.size.height * 0.1
            
            Image("mathematics-background-different-numbers-pattern-2530108")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .opacity(0.4)
                .frame(height: metrics.size.height * 1)
            
            VStack {
//                YTWrapper(videoID: "43HCYSXZ9GI")
                YTWrapper(videoID: videoID)
                    .frame(width: videoWidth, height: videoHeight, alignment: .center)
                    .padding(.top, 30)
                
                
                Text("Klicke Weiter um zu den Übungen zu gehen")
                    .font(.system(size: 30))
                    .frame(alignment: .center)
//                    .padding(.bottom, 30)
                    .padding(.top, 10)
//                Spacer()
                HStack {
                    VideoButtonBack(buttonName: "Zurück", color: .red, picture: "arrow.uturn.backward.circle", newMathButtonPressed: $newMathButtonPressed)
                     
                    VideoScreenForth(buttonName: "Weiter", picture: "arrow.forward", exerciseButton: $nextButtonPressed)
                    
                }
                .padding(.top, 20)

                }
            }
        }
        }
}

struct VideoScreen_Previews: PreviewProvider {
    static var previews: some View {
        VideoScreen(newMathButtonPressed: .constant(false), videoID: "abc")
    }
}
