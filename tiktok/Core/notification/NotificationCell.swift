//
//  NotificationCell.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28,height: 28)
                .foregroundColor(Color(.systemGray5))
            
            HStack {
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Text("liked one of your posts wojieddddd fififee")
                    .font(.footnote)
                
                Text("3d")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
