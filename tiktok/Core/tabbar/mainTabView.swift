//
//  mainTabView.swift
//  tiktok
//
//  Created by 炜季 on 2024/8/9.
//

import SwiftUI

struct mainTabView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            FeedView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            .environment(\.symbolVariants,selectedTab == 0 ? .fill :.none)
                        Text("home")
                    }
                }
                .onAppear{selectedTab = 0}
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack{
                        Image(systemName: "person.2")
                        Text("friends")
                    }
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            
            Text("uploadpost")
                .tabItem {
                        Image(systemName: "plus")
                }
                .onAppear{selectedTab = 2}
                .tag(2)
            
            NotificationView()
                .tabItem {
                    VStack{
                        Image(systemName: "heart")
                        Text("inbox")
                    }
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: "person")
                        Text("profile")
                    }
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    mainTabView()
}
