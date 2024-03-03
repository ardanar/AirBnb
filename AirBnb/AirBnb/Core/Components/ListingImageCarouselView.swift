//
//  ListingImageCarouselView.swift
//  AirBnb
//
//  Created by Arda Nar on 9.02.2024.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView{
            ForEach(listing.imageURLs, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
        
    }
}


#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
