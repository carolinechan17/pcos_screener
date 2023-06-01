import SwiftUI

struct InstructionView: View { 
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Instruction")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Please answer the following questions to determine if you are positive PCOS or negative! Be aware that these questions are targeted for women of reproductive age.")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 50)
                }
                .frame(width: 380, height: 200)
                
                HStack {
                    Image("Back")
                        .onTapGesture {
                            pathManager.backToPrevious()
                        }
                    
                    Spacer()
                    
                    Image("Next")
                        .onTapGesture {
                            pathManager.navigateTo(destination: .question1View)
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
