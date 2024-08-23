//
//  ProfileHeadView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct ProfileHeadView: View {
    var body: some View {
        VStack(spacing:16){
            VStack(spacing:8) {
                // profile
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80,height: 80)
                    .foregroundColor(Color(.systemGray5))
                
                // username
                Text("@levis.hamilton")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            
            }
            
            //state view
            HStack(spacing:16) {
                UserStatusView(value: 5, title: "following")
                UserStatusView(value: 1, title: "followers")
                UserStatusView(value: 7, title: "likes")
            }
            
            Button {
                
            }label: {
                Text("edit profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 32)
                    .foregroundColor(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider()
            
            
        }
    }
}

#Preview {
    ProfileHeadView()
}


