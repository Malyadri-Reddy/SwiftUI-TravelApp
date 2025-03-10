//
//  ListingImageCarouselView.swift
//  SwiftUI-TravelApp
//
//  Created by Malyadri Reddy on 07/03/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    
    let listing: Listing
    
    var body: some View {
        
        TabView{
            ForEach(listing.imageUrls, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        //.frame(height: 320)
        //.clipShape(RoundedRectangle(cornerRadius: 10))
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DevelopmentPreview.shared.listings[0])
}
