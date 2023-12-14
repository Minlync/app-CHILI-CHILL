//
//  newhomeview.swift
//  loginpage
//
//  Created by Minglin Chen on 11/22/23.
//

import SwiftUI
// menu[0] -- FOODS
// menu[1] -- Snacks




struct Newhomepage: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        ZStack {
            
                VStack {
                    NavigationStack {
                        Text("WHAT'S THE NEW")
                            .font(.system(size: 25))
                            .padding(.leading, -145)
                            .padding(.top,20)
                            .foregroundColor(.gray)
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 10) {
                                ForEach(menu[0].items) { item in
                                    NavigationLink(value: item) {
                                        Itemforhome(item: item)
                                        //                                        .frame(width: 286, height: 327)
                                    }
                                }
                            }
                        }
                        .padding(.top, -35)
                        .padding(30)
                        VStack{
                            NavigationLink (destination: Random (item:menu[Int.random(in: 0...2)].items[Int.random(in: 0...3)])){
//                                NavigationLink (destination: Random ()){
                                Image("random banner")
                                    .resizable()
                                    .frame(width: 390, height: 85)
                            }
                        }
                        
                        Text("SNACKS")
                            .font(.system(size: 25))
                            .padding(.leading, -175)
                            .padding(.top,10)
                            .foregroundColor(.gray)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            
                            HStack(spacing: 10) {
                                //                    List {
                                //
                                ForEach(menu[1].items) { item in
                                    NavigationLink(value: item) {
                                        Item2forhome(item: item)
                                        
                                    }
                                    .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                        }
                        Spacer()
                            .navigationDestination(for: MenuItem.self) { item in
                                ItemDetail(item: item)
                            }
                            .navigationTitle("") // Removes the title
                            .navigationBarHidden(true) // Hides the entire navigation bar
                            .listStyle(.grouped)
                    }
                }
            }
        }
    
}

struct Newhomepage_Previews: PreviewProvider {
    static var previews: some View {
        Newhomepage()
            .environmentObject(Order())
    }
}
