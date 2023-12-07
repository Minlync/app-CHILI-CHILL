import SwiftUI

struct listview: View {
    let food = foodList
    let drink = drinkList
//    @State private var tabSelected: Tab = .menucard

    var body: some View {

        NavigationView {
            List {
                Section("section1") {
                    ForEach(food, id: \.self) { food in
                        NavigationLink(destination: Text(food)) {
                            Image(systemName: "")
                            Text(food)
                        }.padding()
                    }
                    .position(x: 150, y: 30)
                }

                Section("section2") {
                    ForEach(drink, id: \.self) { drink in
                        NavigationLink(destination: Text(drink)) {
                            Image(systemName: "")
                            Text(drink)
                        }.padding()
                    }
                }
            }
        }
//        .overlay(
//            VStack {
//                Spacer()
//                CustomTabBar(selectedTab: $tabSelected)
//                    .padding(EdgeInsets(top: 10, leading: 0, bottom: -30, trailing: 0))
//            }
//        )
    }
}

struct listview_Previews: PreviewProvider {
    static var previews: some View {
        listview()
    }
}

