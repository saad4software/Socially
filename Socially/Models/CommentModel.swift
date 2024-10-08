//
//  CommentModel.swift
//  Socially
//
//  Created by saad on 10/8/24.
//

import Foundation

struct CommentModel: Codable, Identifiable {
    
    enum CodingKeys: CodingKey {
            case like_count
            case description
            case profile_img
            case profile_name
            case created
        }
        
        var id = UUID()
        var like_count: Int
        var description: String
        var profile_img: String
        var profile_name: String
        var created: String
}
