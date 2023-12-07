import SwiftUI
import AVFoundation

struct Hamburger1: View {
  @State private var audioPlayer: AVAudioPlayer?
   
    let side = ["Avocado Salad", "Coleslaw", "Smashed Potatoes"]
    @State private var selectedSide = "Coleslaw"
    
    let drink = ["Coke", "Coffee", "Orange Juice"]
    @State private var selectedDrink = "Coke"
    
    let sauce = ["Mayonnaise", "Ketchup", "Paprika"]
    @State private var selectedSauce = "Ketchup"
    
    var body: some View {
        NavigationView {
            VStack {
                Image("sunshine-burger")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 335) // Adjust the image size
                
                Form {
                    Section(header: Text("Select Your Side").foregroundColor(Color.blue)) {
                        HStack {
                            Image("side")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Picker("Pick One", selection: $selectedSide) {
                                ForEach(side, id: \.self) { side in
                                    Text(side)
                                }
                            }
                        }
                        
                    }
                    
                    
                    Section(header: Text("Select your drink").foregroundColor(Color.blue)) {
                        HStack {
                            Image("soda")
                                .resizable()
                                .frame(width: 24, height: 20)
                            Picker("Select your drink", selection: $selectedDrink) {
                                ForEach(drink, id: \.self) { drink in
                                    Text(drink)
                                }
                            }
                        }
                    }
                   
                    Section(header: Text("Select your sauce").foregroundColor(Color.blue)) {
                        HStack {
                            Image("ketchup")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Picker("Select your sauce", selection: $selectedSauce) {
                                ForEach(sauce, id: \.self) { sauce in
                                    Text(sauce)
                                }
                            }
                        }
                    }
            
                    
                } // End of Form section
                .background(Color.white)
                
                
                Button(action: {
                    if let soundPath = Bundle.main.path(forResource: "ding", ofType: "wav") {
                        let soundURL = URL(fileURLWithPath: soundPath)
                        do {
                            audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                            audioPlayer?.play()
                        } catch {
                            print("Error loading sound file: \(error.localizedDescription)")
                        }
                    }
                }) {
                    Text("Submit")
                        .font(.title)
                        .frame(width: 300, height: 10)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
    }
}

struct Hamburger_Previews: PreviewProvider {
    static var previews: some View {
        Hamburger1()
    }
}

