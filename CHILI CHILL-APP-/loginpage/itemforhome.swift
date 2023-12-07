//
//  itemforhome.swift
//  loginpage
//
//  Created by Minglin Chen on 11/22/23.
//

import SwiftUI

struct Itemforhome: View {

    let item: MenuItem

    var body: some View {
        HStack {
            Image(item.section1Image)
                .resizable()
                .frame(width: 286, height: 300)
              

            VStack(alignment: .leading) {
//                Text(item.name)
//                    .font(.headline)
//                Text("$\(item.price)")
            }

            Spacer()

//            ForEach(item.restrictions, id: \.self) { restriction in
//                imageForRestriction(restriction)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 30, height: 30)
//                    .padding(5)
//                    .clipShape(Circle())
//                    .foregroundColor(.white)
            }
        }
    }



#Preview {
    Itemforhome(item: MenuItem.example)
}
