//
//  ExploreService.swift
//  AirBnb
//
//  Created by Arda Nar on 25.02.2024.
//

import Foundation

class ExploreService{
    func fetchListing() async throws -> [Listing]{
        return DeveloperPreview.shared.listings
    }
}
