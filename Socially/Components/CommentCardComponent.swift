//
//  CommentCardComponent.swift
//  Socially
//
//  Created by saad on 10/8/24.
//

import SwiftUI

struct CommentCardComponent: View {
    
    let comment:CommentModel
    
    var body: some View {
        VStack {
            HStack {
                Image(comment.profile_img)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                
                HStack() {
                    Text(comment.profile_name)
                    Spacer()
                    Text(comment.created)
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            }
            
            HStack {
                Text(comment.description)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                Spacer()
            }


        }
        .padding()
        .background(.white)
        .clipShape(RoundedCorner(radius: 10))
        

    }
}

#Preview {
    CommentCardComponent(
        comment: CommentModel(
            like_count: 10,
            description: "This text can be long one, even extends to multipl lines and should look good",
            profile_img: "user4",
            profile_name: "Tom",
            created: "02.09.2024"
        )
    )
}
