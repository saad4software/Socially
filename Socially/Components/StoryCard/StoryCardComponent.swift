//
//  StoryCardComponent.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct StoryCardComponent: View {
    let image: String
    let onItemSelected:(() -> ())?
    
    var body: some View {
        VStack {
        
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 2)
                )
                .onTapGesture {
                    onItemSelected?()
                }
        }
    }
}

#Preview {
    StoryCardComponent(image: "user1", onItemSelected: nil)
        .preferredColorScheme(.dark)
}
