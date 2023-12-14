import SwiftUI

struct Random: View {
    @EnvironmentObject var order: Order
        @State private var FoodName = ""
        @State private var imageName = "surprise"
        let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
        @State var item: MenuItem
        @State private var showingAlert = false
    /*this is set for alert*/

        let imageNames = ["item.randomImage"]
        var FoodNames = ["item.name"]

    var body: some View {
        VStack {
            
            Spacer()
            Image(item.randomImage)
            //           Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
            Text(item.name)
                .font(.title)
                .padding()
            Text(item.description)
                .font(.body)
                .frame(width: 340, height: 100)
            Button(action: generateRandomFood) {
                Text("Next One")
                    .font(.headline)
                    .frame(width: 300, height: 20)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            //            Spacer()
            /*place hold*/
            Button("Order This") {
                order.add(item: item)
                showingAlert = true
                
            }
            .font(.headline) // Apply font to the Button
            .frame(width: 300, height: 20) // Apply frame to the Button
            .foregroundColor(.white) // Apply foreground color to the Button
            .padding()
            .background(Color.red) // Apply background color to the Button
            .cornerRadius(10)
            Spacer()
        }
        .navigationTitle("Random Food Generator")
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("Success"), message: Text("You have successfully added your food!"), dismissButton: .default(Text("OK")))
                }
            }
        
    
    
    func generateRandomFood() {
        
        FoodName = FoodNames.randomElement() ?? ""
        // Set the image name to a random element from the array
        imageName = imageNames.randomElement() ?? "surprise"
        // item:menu[0].items[Int.random(in: 0...3)]
        item = menu[Int.random(in: 0...2)].items[Int.random(in: 0...3)]
//        if i just want random in first section so i justitem:menu[0].items[Int.random(in: 0...3)] use this code
        
    }
}
        
        
        struct Random_Previews: PreviewProvider {
            static var previews: some View {
                Random(item: MenuItem.example)
                    .environmentObject(Order())
                //        Random()
            }
        }
    
