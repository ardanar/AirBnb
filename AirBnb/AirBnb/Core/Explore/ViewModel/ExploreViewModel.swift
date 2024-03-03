//
//  ExploreViewModel.swift
//  AirBnb
//
//  Created by Arda Nar on 25.02.2024.
//

import Foundation

class ExploreViewModel: ObservableObject{
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async{
        do{
            self.listings = try await service.fetchListing()
            self.listingsCopy = listings
        }catch{
            print("Debug: \(error.localizedDescription)")
        }
    }
    
    func updateListingsForLocation(){
        let filteredListings = listings.filter({
            $0.city.lowercased() == searchLocation.lowercased() ||
            $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
    
}
