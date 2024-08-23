//
//  UserCell.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/10.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing:12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48,height: 48)
                .foregroundColor(Color(.systemGray))
            
            VStack(alignment: .leading){
                Text("text_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("test name")
                    .font(.footnote)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    UserCell()
}
