import SwiftUI

struct ComplicationView: View {
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Complication")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("PCOS patients are more likely to face these health issues: uterine cancer, high blood pressure, heart and blood vessel issues, type 2 diabetes, high blood pressure and infertility.")
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
                            pathManager.navigateTo(destination: .symptomsView)
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
