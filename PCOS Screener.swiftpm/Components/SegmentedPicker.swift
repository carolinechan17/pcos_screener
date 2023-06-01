import SwiftUI

struct CustomSegmentedControl: View {
    @Binding var preselectedIndex: Int
    var options: [String]
    var color: String
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(options.indices, id:\.self) { index in
                ZStack {
                    Rectangle()
                        .fill(Color(hex: color)!)
                        .opacity(0.2)
                    
                    Rectangle()
                        .fill(Color(hex: color)!)
                        .cornerRadius(14)
                        .padding(2)
                        .opacity(preselectedIndex == index ? 1 : 0.01)
                        .onTapGesture {
                            withAnimation(.interactiveSpring()) {
                                preselectedIndex = index
                            }
                        }
                }
                .overlay(
                    Text(options[index])
                )
            }
        }
        .frame(width: 320, height: 50)
        .cornerRadius(14)
    }
}
