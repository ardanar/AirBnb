//
//  ContentView.swift
//  AirBnb
//
//  Created by Arda Nar on 7.02.2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            MainTabView()
                .preferredColorScheme(.light) // Görünümün varsayılan olarak light mode'da açılmasını sağlar
        }
        
    }
}

#Preview {
    ContentView()
}
