//
//  ProfileView.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct ProfileView: View {
    
    let gridColumns = [
        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
//        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
//        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
//        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
//        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
//        GridItem(.adaptive(minimum: 150), spacing: 10, alignment: .leading),
    ]
    
    let images = ["post1", "post2", "post3", "post4", "post5", "post6"]

    var body: some View {
        NavigationView {
            ScrollView {
                
                
                
                VStack {
                    Image("user1")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    Text("Alex Tomas")
                        .font(.title3)
                    
                    
                    HStack {
                        Image("icon_arrow_back")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text("Explore")
                        Spacer()
                    }
                    
                    HStack {
                        VStack {
                            ForEach(0..<3) { g in
                                
                                Image(images[g])
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                            }
                            Spacer()
                        }
                        VStack {
                            ForEach(3..<6) { g in
                                
                                Image(images[g])
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                            }
                            Spacer()
                        }
                    }
                    

                }
                .padding()
            }
            .navigationBarItems(
                trailing: Image(systemName: "bell.fill")
                    .foregroundColor(.black)
            )
            .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Socially")
                                .font(.title)
                                .foregroundColor(.black)
                        }
                    }

        }
        .navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

#Preview {
    ProfileView()
}
