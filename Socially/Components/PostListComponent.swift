//
//  PostListComponent.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostListComponent: View {
    @ObservedObject var postData = PostsViewModel()
    
    var body: some View {
        VStack {
            ForEach(postData.posts) { post in // Iterate over each post in the data
                PostCardComponent(
                    profileImg: post.profile_img,
                    profileName: post.profile_name,
                    profileId: post.profile_id,
                    image: post.image,
                    likeCount: post.like_count,
                    commentCount: post.comment_count,
                    viewCount: post.view_count,
                    description: post.description
                )
                .padding(.top)
            }
            
        }
        .listStyle(.plain) // Set the list style to plain
    }
}

#Preview {
    PostListComponent()
}
