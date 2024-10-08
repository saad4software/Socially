//
//  TabBarView.swift
//  Socially
//
//  Created by saad on 10/7/24.
//

import SwiftUI

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case discover
    case profile
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .discover:
            return "Discover"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "house"
        case .discover:
            return "safari"
        case .profile:
            return "person.circle"
        }
    }
}


struct TabBarView: View {
    
    @State var selectedTab = 0


    var body: some View {
        
        ZStack(alignment: .bottom){
                    TabView(selection: $selectedTab) {
                        HomeView().tag(0)
                        Text("Discover untouched places").tag(1)
                        ProfileView().tag(2)
                    }
                    .onAppear(){
                        UITabBar.appearance().backgroundColor = UIColor.white
                    }
            
                    ZStack{
                        HStack{
                            ForEach((TabbedItems.allCases), id: \.self){ item in
                                Button{
                                    selectedTab = item.rawValue
                                } label: {
                                    CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                                }
                            }
                        }
                    }
                    .frame(height: 70)
                    .cornerRadius(30)
                    
                }
        
        
    }
}

extension TabBarView{
    
    func CustomTabItem(
        imageName: String,
        title: String,
        isActive: Bool
    ) -> some View{
        HStack(spacing: 10){
            Spacer()
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 20, height: 20)

            Spacer()
        }
        .frame(width: .infinity, height: 60)
        .background(.white)
    }
    
}

#Preview {
    TabBarView()
}
