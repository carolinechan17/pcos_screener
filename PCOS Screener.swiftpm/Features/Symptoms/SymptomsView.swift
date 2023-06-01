import SwiftUI

struct SymptomsView: View {
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Symptoms")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("There are physical symptoms of PCOS including irregular periods, excess body hair, weight gain, acne, hair thinning, and also dark or thick skin patches.")
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
                            pathManager.navigateTo(destination: .instructionView)
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
