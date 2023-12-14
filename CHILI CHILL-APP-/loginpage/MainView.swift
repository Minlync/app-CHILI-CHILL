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
                    Label("",systemImage: "house")
                    .imageScale(.medium)
                    
                }
            NewlistView()
                .tabItem {
                    Label("",systemImage: "list.dash")
                    .imageScale(.medium)
                }
           OrderView()
                .tabItem {
                    Label("",systemImage: "square.and.pencil")
                    .imageScale(.medium)
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
