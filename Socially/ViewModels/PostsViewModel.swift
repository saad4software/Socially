//
//  PostsViewModel.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import Foundation

class PostsViewModel: ObservableObject {
    @Published var posts = [PostModel]() // Array of posts
    
    init() {
        loadData() // Load the JSON data upon initialization
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
