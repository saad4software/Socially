//
//  CommentsView.swift
//  Socially
//
//  Created by saad on 10/8/24.
//

import SwiftUI

struct CommentsView: View {
    

    @State var show = false
    @State var selectedPost : PostModel
    
    var body: some View {
        ZStack {
            Color.init(hex: "#05101C")
            
            
            ScrollView {
                
                PostCardComponent(post: selectedPost)
                CommentListComponent()
                
            }
            .padding(12)
            .navigationBarItems(
                leading: Image(systemName: "bell.fill")
                    .foregroundColor(.white)
            )
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Socially")
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .toolbarBackground(
                        Color.init(hex: "#05101C"),
                        for: .navigationBar
                    )
                    .toolbarBackground(
                        .visible,
                        for: .navigationBar)
            
            

            
        }
    }
}

#Preview {
    
    CommentsView(
        selectedPost: PostModel(
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
