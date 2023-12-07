import SwiftUI

struct ItemRow: View {

    let item: MenuItem

    var body: some View {
        HStack { 
            Image(item.thumbnailImage)
//                .clipShape(Circle())
                .frame(width: 50, height: 50)

            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }

            Spacer()

            ForEach(item.restrictions, id: \.self) { restriction in
                imageForRestriction(restriction)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25)
                    .padding(5)
//                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }

    private func imageForRestriction(_ restriction: String) -> Image {
        switch restriction {
        case "H":
            return Image("halalIcon")
        case "G":
            return Image("glutenFreeIcon")
        case "V":
            return Image("vegan")
        case "S":
            return Image("hot")
        case"C":
            return Image("cold")
        default:
            return Image(systemName: "questionmark.circle") // Placeholder for unknown restrictions
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
