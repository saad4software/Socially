//
//  StoryListComponent.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct StoryListComponent: View {
    @ObservedObject var postData = PostsViewModel()
    let onItemSelected:((PostModel) -> ())?


    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(postData.posts) { post in
                    StoryCardComponent(
                        image: post.profile_img) {
                            onItemSelected?(post)
                        }
                }
            }
            .frame(height: 65)
            
        }
        .clipShape(RoundedCorner(radius: 20))
    }
}



#Preview {
    StoryListComponent(onItemSelected: nil)
}
