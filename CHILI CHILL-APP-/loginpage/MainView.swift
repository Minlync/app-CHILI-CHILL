//
//  SwiftUIView.swift
//  loginpage
//
//  Created by Minglin Chen on 11/8/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            Newhomepage()
                .tabItem {
                    Label("Home",systemImage: "house")
                    
                }
            NewlistView()
                .tabItem {
                    Label("Menu",systemImage: "list.dash")
                }
           OrderView()
                .tabItem {
                    Label("Order",systemImage: "square.and.pencil")
                }
        }
        .navigationBarBackButtonHidden(true)
                .accentColor(.red)
        }
    
    }
   




#Preview {
    MainView()
    
        .environmentObject(Order())

}
