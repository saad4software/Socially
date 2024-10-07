//
//  HomeView.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

struct HomeView: View {

    @State var show = false
    @State var current : PostModel!

    var body: some View {
        NavigationView {
            ZStack {
                
                Color.init(hex: "#05101C")
                
                
                ScrollView {
                    ZStack {
                        RoundedCorner(radius: 40)
                            .foregroundColor(Color.init(
                                hex: "#15202C"
                            ))
                            .frame(height: 80)
                        StoryListComponent { post in
                            self.current = post
                            show = true
                        }
                    }
                    PostListComponent()
                }
                .padding(12)
                .navigationBarItems(
                    leading: Image(systemName: "bell.fill")
                        .foregroundColor(.white)
                )
                .navigationBarTitleDisplayMode(.inline)
                        .toolbar {
                            ToolbarItem(placement: .principal) {
                                Text("Socially")
                                    .font(.title)
                                    .foregroundColor(.white)
                            }
                        }
                        .toolbarBackground(
                            Color.init(hex: "#05101C"),
                            for: .navigationBar
                        )
                        .toolbarBackground(
                            .visible,
                            for: .navigationBar)
                
                
                
                if self.show{
                    
                    ZStack{
                        
                        Color.black.edgesIgnoringSafeArea(.all)
                        
                        ZStack(alignment: .topLeading) {
                            
                            GeometryReader{_ in
                                
                                VStack{
                                    
                                    Image(self.current.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                }
                            }
                            
                            VStack(spacing: 15){
                                
                                LoaderComponent(show: self.$show)
                                
                                HStack(spacing: 15){
                                    
                                    Image(self.current.image)
                                    .resizable()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                    
                                    Text(self.current.profile_name)
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                }
                                .padding(.leading)
                            }
                            .padding(.top)
                        }
                        
                    }
                    .transition(.move(edge: .trailing))
                    .onTapGesture {
                        
                        self.show.toggle()
                    }
                    
                    
                }

                

                
            }
            
            

        }
    }
    
}

#Preview {
    HomeView()
}
