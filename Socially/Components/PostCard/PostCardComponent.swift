//
//  PostCardComponent.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostCardComponent: View {
    let profileImg: String
    let profileName: String
    let profileId: String
    
    let image: String
    let likeCount: Int
    let commentCount: Int
    let viewCount: Int
    let description: String

    var body: some View {
        VStack {
            PostCardHeader(
                profileImg: profileImg,
                profileName: profileName,
                lastSeen: profileId
            )
            
            PostCardBody(
                image: image,
                likeCount: likeCount,
                commentCount: commentCount,
                viewCount: viewCount,
                description: description
            )
        }
        .background(Color.white)
        .clipShape(RoundedCorner(radius: 10))

    }
}

#Preview {
    PostCardComponent(
        profileImg: "user3",
        profileName: "Alex",
        profileId: "2d ago",
        image: "user4",
        likeCount: 23,
        commentCount: 2,
        viewCount: 44,
        description: "long desc"
    )
}
