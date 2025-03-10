//
//  ExploreService.swift
//  SwiftUI-TravelApp
//
//  Created by Malyadri Reddy on 07/03/25.
//

import Foundation

class ExploreService {
    
    func fetchListings() async throws -> [Listing] {
        
        return DevelopmentPreview.shared.listings
    }
}
