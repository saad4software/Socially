//
//  PostsViewModel.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import Foundation

class PostsViewModel: ObservableObject {
    @Published var posts = [PostModel]() // Array of posts
    @Published var comments = [CommentModel]() // Array of posts
    
    
    init() {
        loadData() // Load the JSON data upon initialization
        
        comments = [
            CommentModel(
                like_count: 12,
                description: "Comment text",
                profile_img: "user1",
                profile_name: "Mary",
                created: "02.06.2024"
            ),
            CommentModel(
                like_count: 12,
                description: "Comment text can be long one, up to multiple lines",
                profile_img: "user2",
                profile_name: "Tom",
                created: "05.06.2024"
            ),
            CommentModel(
                like_count: 12,
                description: "Comment can be interesting, or not",
                profile_img: "user5",
                profile_name: "Alex",
                created: "02.04.2024"
            ),
            CommentModel(
                like_count: 12,
                description: "Comment text can be the same",
                profile_img: "user3",
                profile_name: "Jack",
                created: "02.06.2023"
            ),
        ]
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "posts", withExtension: "json") else {
            print("json file not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let posts = try? JSONDecoder().decode([PostModel].self, from: data!)
        
        self.posts = posts! // Update the posts array with the decoded data
    }
}
