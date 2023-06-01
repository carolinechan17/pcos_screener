import SwiftUI

struct ContentView: View {
    @State var isSplashActive: Bool = true
    @StateObject var pathManager: NavigationManager = NavigationManager()
    var body: some View {
        NavigationStack(path: $pathManager.path) {
            ZStack {
                Color(hex: "FDD3E1")
                
                VStack {
                    VStack {
                        Image("Icon")
                            .resizable()
                            .frame(width: 279, height: 279)
                        Text("PCOS")
                            .poppinsMedium(color: .black, size: 40)
                            .padding(.bottom, 5)
                        Text("Polycystic Ovarian Syndrome")
                            .poppinsMedium(color: .black, size: 16)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 600)
                    .background(.white)
                    
                    VStack {    
                        Text("A syndrome when the ovaries create excessive levels of androgens, which are typically present in women in tiny doses and are male sex hormones.")
                            .poppinsThin(color: .black, size: 20)
                            .multilineTextAlignment(.center)
                            .padding(.vertical, 50)
                    }
                    .frame(width: 380, height: 200)
                    
                    Image("Next")
                        .onTapGesture {
                            pathManager.navigateTo(destination: .complicationView)
                        }
                    
                    Spacer()
                }
                .navigationDestination(for: Route.self, destination: { value in
                    switch value {
                    case .complicationView: 
                        ComplicationView().environmentObject(pathManager)
                    case .symptomsView: 
                        SymptomsView().environmentObject(pathManager)
                    case .instructionView: 
                        InstructionView().environmentObject(pathManager)
                    case .question1View: 
                        Question1View().environmentObject(pathManager)
                    case .question2View(let age): 
                        Question2View(age: age).environmentObject(pathManager)
                    case .question3View(let age, let height): 
                        Question3View(age: age, height: height).environmentObject(pathManager)
                    case .question4View(let age, let height, let weight): 
                        Question4View(age: age, height: height, weight: weight).environmentObject(pathManager)
                    case .question5View(let age, let height, let weight, let cycleLength): 
                        Question5View(age: age, height: height, weight: weight, cycleLength: cycleLength).environmentObject(pathManager)
                    case .question6View(let age, let height, let weight, let cycleLength, let skinDarkening): 
                        Question6View(age: age, height: height, weight: weight, cycleLenth: cycleLength, skinDarkening: skinDarkening).environmentObject(pathManager)
                    case .question7View(let age, let height, let weight, let cycleLength, let skinDarkening, let weightGain): 
                        Question7View(age: age, height: height, weight: weight, cycleLenth: cycleLength, skinDarkening: skinDarkening, weightGain: weightGain).environmentObject(pathManager)
                    case .question8View(let age, let height, let weight, let cycleLength, let skinDarkening, let weightGain, let hairGrowth): 
                        Question8View(age: age, height: height, weight: weight, cycleLenth: cycleLength, skinDarkening: skinDarkening, weightGain: weightGain, hairGrowth: hairGrowth).environmentObject(pathManager)
                    case .question9View(let age, let height, let weight, let cycleLength, let skinDarkening, let weightGain, let hairGrowth, let hairLoss): 
                        Question9View(age: age, height: height, weight: weight, cycleLenth: cycleLength, skinDarkening: skinDarkening, weightGain: weightGain, hairGrowth: hairGrowth, hairLoss: hairLoss).environmentObject(pathManager)
                    case .negativeResultView: 
                        NegativeResultView().environmentObject(pathManager)
                    case .positiveResultView: 
                        PositiveResultView().environmentObject(pathManager)
                    }
                })
            }
        }
    }
}
