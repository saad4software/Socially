//
//  CommentListComponent.swift
//  Socially
//
//  Created by saad on 10/8/24.
//

import SwiftUI

struct CommentListComponent: View {
    @ObservedObject var postData = PostsViewModel()

    var body: some View {
        
        VStack {
            ForEach(postData.comments) { comment in
                CommentCardComponent(
                    comment: comment
                )
                .padding(.top)
            }
            
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    CommentListComponent()
}
