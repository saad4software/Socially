//
//  PostCardHeader.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostCardHeader: View {
    let profileImg: String
    let profileName: String
    let lastSeen: String
    
    var body: some View {
        HStack {
            Image(profileImg)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 40, height: 40)
                .clipShape(Circle())
            
            HStack() {
                Text(profileName)
                    .font(.title3)
                Spacer()
                Text(lastSeen)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .padding()
    }
}

#Preview {
    PostCardHeader(
        profileImg: "user2",
        profileName: "Alex",
        lastSeen: "2d ago"
    )
}
