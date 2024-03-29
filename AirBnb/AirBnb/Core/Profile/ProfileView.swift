//
//  ProfileView.swift
//  AirBnb
//
//  Created by Arda Nar on 22.02.2024.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            // Profile login view
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Profile")
                        .font(.largeTitle)
                    .fontWeight(.semibold)
                    
                    Text("Log in to start planning your next trip.")
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
                
                HStack{
                    Text("Don't have an account")
                    
                    Text("Sign Up")
                        .fontWeight(.semibold)
                        .underline()
                    
                }
                .font(.caption)
            }
            
            // Profile options
            VStack(spacing: 24){
                ProfileOptionRowView(imageName: "gear", title: "Settings")
                ProfileOptionRowView(imageName: "gear", title: "Accessibility")
                ProfileOptionRowView(imageName: "questionmark.circle", title: "Visit the help center")
            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
