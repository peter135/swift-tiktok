//
//  PostGridView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct PostGridView: View {
    private let items = [
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1),
        GridItem(.flexible(),spacing: 1)
    ]
    
    private let width = (UIScreen.main.bounds.width/3)-2
    
    var body: some View {
        LazyVGrid(columns: items, spacing: 1){
            ForEach(0 ..< 15) { post in
                Rectangle()
                    .frame(width: width,height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
