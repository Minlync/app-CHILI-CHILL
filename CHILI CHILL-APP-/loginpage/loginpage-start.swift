//
//  page2.swift
//  NavigationView
//
//  Created by Minglin Chen on 10/5/23.
//

import SwiftUI

struct loginhomepage: View {
    var body: some View{
        NavigationView{
            VStack{
                
                Spacer()
                Image("Chilichilllogo")
                    .resizable()
                    .scaledToFit()
                   .frame(width: 268, height: 170)
                   .position(x: 200, y: 334)
                
                    .foregroundColor(.accentColor)
              Spacer()

                NavigationLink (destination:MainView()){
                    Text("Start Your Chill")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 10)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                        .position(x: 200, y: 150)
                }
//                NavigationLink (destination:ContentView()){
//                    Text("Create Your Account")
//                        .foregroundColor(.white)
//                        .frame(maxWidth: .infinity, minHeight: 10)
//                        .padding()
//                        .background(Color.blue) // Customize the background color as needed
//                        .cornerRadius(10)
//                        .padding(.horizontal, 20)
//                        .position(x: 200, y: 20) /*adjust the navigationlink position*/
//                }
                
                Spacer()
                   
            }
        }
        .navigationBarBackButtonHidden(true) 
    }
}

struct loginhomepage_Preview : PreviewProvider {
    static var previews: some View{
        loginhomepage()
        .environmentObject(Order())
    }
}

//https://www.youtube.com/watch?v=-XcNs22WnTc

