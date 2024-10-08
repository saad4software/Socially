//
//  PostModel.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import Foundation

struct PostModel: Codable, Identifiable {
    enum CodingKeys: CodingKey {
            case image
            case like_count
            case comment_count
            case view_count
            case description
            case profile_img
            case profile_name
            case last_seen
        }
        
        var id = UUID()
        var image: String?
        var like_count: Int
        var comment_count: Int
        var view_count: Int
        var description: String
        var profile_img: String
        var profile_name: String
        var last_seen: String
}
