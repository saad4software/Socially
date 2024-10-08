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
                
                
                if self.show && self.current.image != nil{
                    
                    ZStack{

                        Color.black.edgesIgnoringSafeArea(.all)
                        
                        ZStack(alignment: .topLeading) {
                            
                            GeometryReader{_ in
                                
                                VStack{
                                    
                                    Image(self.current.image!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                }
                            }
                            LoaderComponent(show: self.$show)

                            VStack(spacing: 15){
                                
                                
                                HStack(spacing: 15){
                                    
                                    Image("icon_back")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    
                                    
                                    
                                    Text(self.current.profile_name)
                                        .foregroundColor(.white)
                                    Text(self.current.last_seen)
                                        .font(.caption)
                                        .foregroundColor(.white)
                                    
                                    Spacer()
                                    
                                    Image("icon_download")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    
                                }
                                .padding()
                            }
                            .background(LinearGradient(
                                gradient: Gradient(
                                    colors: [.black.opacity(0.8), .white.opacity(0.0)]),
                                startPoint: .top,
                                endPoint: .bottom)
                            )
                        }
                        
                    }
                    .transition(.move(edge: .trailing))
                    .onTapGesture {
                        
                        self.show.toggle()
                    }
                    
                    
                }

                

                
            }
            
            

        }
        .tint(.white)
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}

#Preview {
    HomeView()
}
