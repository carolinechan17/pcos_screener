import SwiftUI

struct NegativeResultView: View {
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Result")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Negative!")
                        .poppinsThin(size: 32)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    Text("If you face irregular periods, please change your lifestyle into a healthy one. Still no change? Seek for help to the obgyn!")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                }
                .frame(width: 380, height: 200)
                
                Button {
                    pathManager.goToRoot()
                } label: {
                    Text("Back")
                        .poppinsSemiBold(color: .white, size: 20)
                        .frame(width: 380, height: 50)
                        .background(Color(hex: "F4739E"))
                        .cornerRadius(14)
                        .padding(.horizontal, 20)
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct PositiveResultView: View {
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Result")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Positive!")
                        .poppinsThin(size: 32)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    Text("Seek for help to the obgyn as soon as possible! ")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
                }
                .frame(width: 380, height: 200)
                
                Button {
                    pathManager.goToRoot()
                } label: {
                    Text("Back")
                        .poppinsSemiBold(color: .white, size: 20)
                        .frame(width: 380, height: 50)
                        .background(Color(hex: "F4739E"))
                        .cornerRadius(14)
                        .padding(.horizontal, 20)
                }
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}
