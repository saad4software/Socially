//
//  ProfileView.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct ProfileView: View {
    
    let gridItems = [GridItem(.fixed(150), spacing: 10, alignment: .leading),
                         GridItem(.fixed(150), spacing: 10, alignment: .leading),
                         GridItem(.fixed(150), spacing: 10, alignment: .leading)]

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
                    
                    
                    LazyVGrid(columns: gridItems, spacing: 10) {
                            ForEach(0..<9) { g in
                                
//                                Text("H:\(g)")
//                                    .frame(width: g == 4 ? 310 : 150, height: g == 4 ? 310 : 150)
//                                    .background(Image("user4"))
//                                    .frame(height: 150, alignment: .top)
                                Image("user4")
                                    .resizable()
                                    .frame(
                                        width: g == 4 ? 300 : 150,
                                        height: g == 4 ? 300 : 150
                                    )
                                    .aspectRatio(contentMode: .fill)
                                    
                                if g == 4 {
                                    Color.clear
                                }
                                if g == 5 {
                                    Group {
                                        Color.clear
                                        Color.clear
                                    }
                                }
                            }
                        }
                        .frame(width: 470)
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
                    .toolbarBackground(.visible, for: .navigationBar)
        }
        
        
    }
}

#Preview {
    ProfileView()
}
