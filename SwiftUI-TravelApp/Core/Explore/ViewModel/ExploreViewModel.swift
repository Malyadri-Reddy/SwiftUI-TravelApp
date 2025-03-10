//
//  ExploreViewModel.swift
//  SwiftUI-TravelApp
//
//  Created by Malyadri Reddy on 07/03/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    
    @Published var listings = [Listing]()
    @Published var searchLocation = ""
    private let service: ExploreService
    private var listingsCopy = [Listing]()
    
    init(service: ExploreService) {
        self.service = service
        Task {
            await fetchlistings()
        }
    }
    
    func fetchlistings() async{
        
        do {
            self.listings = try await service.fetchListings()
            self.listingsCopy = listings
            
        }catch {
            print("Error \(error.localizedDescription)")
        }
        
    }
    
    func updateListingsForLocation() {
        
        let filteredListings = listings.filter ({
            $0.city.lowercased() == searchLocation.lowercased() || $0.state.lowercased() == searchLocation.lowercased()
        })
        
        self.listings = filteredListings.isEmpty ? listingsCopy : filteredListings
    }
    
}
