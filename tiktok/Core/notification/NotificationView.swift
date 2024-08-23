//
//  NotificationView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:12) {
                    ForEach(0 ..< 10) { notification in
                        NotificationCell()
                    }
                }
            }
            .navigationTitle("notifications")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    NotificationView()
}
