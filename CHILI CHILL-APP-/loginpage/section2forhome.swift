//
//  section2forhome.swift
//  loginpage
//
//  Created by Minglin Chen on 11/23/23.
//

import SwiftUI

struct Item2forhome: View {

    let item: MenuItem

    var body: some View {
//        change to VStack to make the layout image in the top and text below the image
        VStack {
            Image(item.section2Image)
                .resizable()
                .frame(width: 120, height: 120)
              

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .foregroundColor(.gray)  // Set text color to black
//                Text("$\(item.price)")
//                    .foregroundColor(.black)  // Set text color to black
            }
            .padding(.top, 8)
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
    Item2forhome(item: MenuItem.example)
}
