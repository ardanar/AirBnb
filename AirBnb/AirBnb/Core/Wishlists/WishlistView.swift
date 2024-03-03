//
//  WishlistView.swift
//  AirBnb
//
//  Created by Arda Nar on 23.02.2024.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.footnote)
                    
                }
                
                Button(action: {
                    print("Log in")
                }, label: {
                    Text("Log In")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                })
        
                Spacer()
                    
            }
            .padding()
            .navigationTitle("Wishlists")
        }
    }
}

#Preview {
    WishlistView()
}
