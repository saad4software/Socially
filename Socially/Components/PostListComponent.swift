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
            ForEach(postData.posts) { post in
                PostCardComponent(
                    post: post
                )
                .padding(.top)
            }
            
        }
        .listStyle(.plain)
    }
}

#Preview {
    PostListComponent()
}
