//
//  PostCardBody.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct PostCardBody: View {
    
    let image: String
    let likeCount: Int
    let commentCount: Int
    let viewCount: Int
    let description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
                    
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .roundedCorner(20, corners: [.allCorners])
                    
            Text(description)
                .lineLimit(2)
                .multilineTextAlignment(.leading)
                .font(.callout)

            Divider()
            
            HStack {
                HStack(spacing: 25) {
                    HStack(spacing: 3) {
                        Image(systemName: "heart")
                        Text("\(likeCount.formattedString())")
                    }
                    HStack {
                        Image(systemName: "text.bubble")
                        Text("\(commentCount.formattedString())")
                            
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
        .padding(.all, 25)
    }
}

#Preview {
    PostCardBody(
        image: "user1",
        likeCount: 12,
        commentCount: 399,
        viewCount: 34,
        description: "long description"
    )
}

