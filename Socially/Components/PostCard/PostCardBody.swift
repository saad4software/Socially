//
//  PostCardBody.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostCardBody: View {
    

    let post: PostModel
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
                    
            if post.image != nil  {
                Image(post.image!)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .roundedCorner(20, corners: [.allCorners])
            }

            Text(post.description)
                .lineLimit(2)
                .multilineTextAlignment(.leading)

            Divider()
            
            HStack {
                HStack(spacing: 25) {
                    HStack(spacing: 3) {
                        Image(systemName: "heart")
                        Text("\(post.like_count.formattedString())")
                    }
                    
                    
                    
                    NavigationLink(destination: CommentsView(
                        selectedPost: post
                    )) {
                        HStack {
                            Image(systemName: "text.bubble")
                            Text("\(post.comment_count.formattedString())")
                        }
                    }

                }
                Spacer()
                
                HStack {
                    Image(systemName: "bookmark")
                }
            }
            .foregroundColor(.gray)
            .font(.callout)
                    
                    
        }
    }
}

#Preview {
    PostCardBody(
        post: PostModel(
            image:"post4",
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

