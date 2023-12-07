//
//  Homepage.swift
//  loginpage
//
//  Created by Minglin Chen on 10/26/23.
//
import SwiftUI

struct Homepage: View {
    @State private var tabSelected: Tab = .house
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            VStack {
                TabView(selection: $tabSelected) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            Image(systemName: tab.rawValue)
                            Text("\(tab.rawValue.capitalized)")
                                .bold()
                                
                                .animation(nil, value: tabSelected)
                        }
                        .tag(tab)/* tab just telling the tag which tag you are going to*/
                        
                    }
                }
            }
            VStack {
                Spacer()
                CustomTabBar(selectedTab: $tabSelected)
            }
        }
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
            .previewInterfaceOrientation(.portrait)
    }
}

