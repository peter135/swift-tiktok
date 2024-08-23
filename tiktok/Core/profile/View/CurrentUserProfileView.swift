//
//  CurrentUserProfileView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack(spacing:2){
                    // profile header
                    ProfileHeadView()

                    // post grid view
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
