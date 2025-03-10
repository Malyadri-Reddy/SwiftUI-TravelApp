//
//  ProfileView.swift
//  SwiftUI-TravelApp
//
//  Created by Malyadri Reddy on 07/03/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack() {
            VStack(alignment: .leading, spacing: 32) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                    
                    Button {
                        
                    } label: {
                        Text("log in")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 48)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    
                }
                
                HStack(){
                    Text("Dont have an account")
                    Text("Sign up")
                        .fontWeight(.semibold)
                        .underline()
                }
                .font(.caption)
            }
            
            VStack(spacing: 24){
                ProfileOptionRow(imageName: "gear", title: "Settings")
                ProfileOptionRow(imageName: "gear", title: "Accessibility")
                ProfileOptionRow(imageName: "questionmark.circle", title: "visit the help center")
                
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
