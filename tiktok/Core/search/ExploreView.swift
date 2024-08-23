//
//  ExploreView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/9.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:16){
                    ForEach(0..<20) { user in
                        UserCell()
                            
                    }
                }
            }
            .navigationTitle("explore")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
        
    }
}

#Preview {
    ExploreView()
}
