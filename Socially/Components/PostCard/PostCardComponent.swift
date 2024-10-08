//
//  PostCardComponent.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostCardComponent: View {
    
    let post:PostModel


    var body: some View {
        VStack {
            PostCardHeader(
                profileImg: post.profile_img,
                profileName: post.profile_name,
                lastSeen: post.last_seen
            )
            
            PostCardBody(
                post: post
            )
        }
        .padding()
        .background(.white)
        .clipShape(RoundedCorner(radius: 10))
        

    }
}

#Preview {
    
    
    
    PostCardComponent(
        post: PostModel(
            image: "post1", 
            like_count: 12,
            comment_count: 443,
            view_count: 65,
            description: "long description",
            profile_img: "user1",
            profile_name: "alex",
            last_seen: "2d ago"
        )
    )
}
