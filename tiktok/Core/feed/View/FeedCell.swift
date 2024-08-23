//
//  FeedCell.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/9.
//

import SwiftUI
import AVKit


struct FeedCell: View {
    let post :Post
    var player:AVPlayer
    
    init(post: Post, player:AVPlayer) {
        self.post = post
        self.player = player
    }
    
    
    var body: some View {
        ZStack {
            CustomVideoPlayer(player: player)
                .containerRelativeFrame([.horizontal,.vertical])
              
            
            VStack{
                Spacer()
                
                HStack(alignment: .bottom){
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)
                        
                        Text("rocket ship prepare for takeoff!!!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    
                    Spacer()
                    
                    VStack(spacing:20){
                        
                        Circle()
                            .frame(width: 48,height: 48)
                            .foregroundColor(.gray)
                            
                        
                        Button{
                            
                        }label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                            }
                          
                        }
                        
                        Button{
                            
                        }label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                
                                Text("27")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                            }
                        
                        }
                        
                        Button{
                            
                        }label: {
                            VStack{
                                Image(systemName: "bookmark.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                
                            }
                            
                        }
                        
                        Button{
                            
                        }label: {
                            VStack{
                                Image(systemName: "arrowshape.turn.up.right.fill")
                                    .resizable()
                                    .frame(width: 28,height: 28)
                                    .foregroundColor(.white)
                                
                            }
                           
                        }
                        
                    }
                    
                    
                    
                }
                .padding(.bottom,80)
            }
            .padding()
            
        }
        .onTapGesture {
            switch player.timeControlStatus {
            case .paused:
                player.play()
            case .waitingToPlayAtSpecifiedRate:
                break
            case .playing:
                player.pause()
            @unknown default:
                break
            }
        }
    }
}

#Preview {
    FeedCell(post: Post(id: NSUUID().uuidString, videoUrl: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4"),player: AVPlayer())
}
