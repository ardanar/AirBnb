//
//  DeveloperPreview.swift
//  AirBnb
//
//  Created by Arda Nar on 24.02.2024.
//

import Foundation

class DeveloperPreview{
    
    static let shared = DeveloperPreview()
    
    var listings: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["oda1", "oda2", "oda3", "oda4"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["oda5", "oda6", "oda2", "oda1"],
            address: "124 Main St",
            city: "Los Angeles",
            state: "Malibu",
            title: "Beatiful Los Angeles home in Malibu",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["oda3", "oda1", "oda4", "oda6"],
            address: "124 Main St",
            city: "Miami",
            state: "Florida",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "John Smith",
            ownerImageUrl: "male-profile-photo",
            numberOfBedrooms: 4,
            numberOfBathrooms: 3,
            numberOfGuests: 4,
            numberOfBeds: 4,
            pricePerNight: 567,
            latitude: 25.7850,
            longitude: -80.1936,
            imageURLs: ["oda4", "oda6", "oda1", "oda3"],
            address: "124 Main St",
            city: "Türkiye",
            state: "İstanbul",
            title: "Miami Villa",
            rating: 4.86,
            features: [.selfCheckIn, .superHost],
            amenities: [.wifi, .alarmSystem, .balcony, .laundry, .tv],
            type: .villa
        )
    ]
}
