//
//  newhomepage.swift
//  loginpage
//
//  Created by Minglin Chen on 11/16/23.
//

import SwiftUI
// menu[0] -- FOODS
// menu[1] -- Snacks

struct newhomepage: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

        var body: some View {
            NavigationStack {
                            List {
                                ForEach(menu[0].items) { item in
                                    NavigationLink(value: item) {
                                        
                                        ItemRow(item: item)
                                    }
                                }
                            }
                            List {
                                ForEach(menu[1].items) { item in
                                    NavigationLink(value: item) {
                                       ItemRow(item: item)
                                    }
                                }
                            }
                
                            .navigationDestination(for: MenuItem.self) { item in
                                ItemDetail(item: item)
                            }
                            .navigationTitle("Menu")
                            .listStyle(.grouped)
                        }
                    }
                }


            struct newhomepage_Previews: PreviewProvider {
                static var previews: some View {
                    newhomepage()
                }
            }

