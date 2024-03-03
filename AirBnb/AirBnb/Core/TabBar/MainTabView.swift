//
//  MainTabView.swift
//  AirBnb
//
//  Created by Arda Nar on 23.02.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
            
        }
    }
}

#Preview {
    MainTabView()
}
