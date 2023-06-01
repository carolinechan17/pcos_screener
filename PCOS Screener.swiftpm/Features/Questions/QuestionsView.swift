import SwiftUI
import CoreML

struct Question1View: View {
    @State var age: String = ""
    @EnvironmentObject var pathManager: NavigationManager 
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 1")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Fill your age below")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    SuperTextField(placeholder: Text("For example: 21").foregroundColor(.gray), text: $age)
                        .padding()
                        .frame(maxWidth: 320, maxHeight: 50)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(14)
                        .tint(.black)
                        .padding(.bottom, 50)
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
                            if !age.isEmpty {
                                pathManager.navigateTo(destination: .question2View(age: Double(age) ?? 0))
                            }
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question2View: View {
    @State var height: String = ""
    var age: Double 
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 2")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Fill your height below in cm")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    SuperTextField(placeholder: Text("For example: 165").foregroundColor(.gray), text: $height)
                        .padding()
                        .frame(maxWidth: 320, maxHeight: 50)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(14)
                        .tint(.black)
                        .padding(.bottom, 50)
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
                            if !height.isEmpty {
                                pathManager.navigateTo(destination: .question3View(age: age, height: Double(height) ?? 0))
                            }
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question3View: View {
    @State var weight: String = ""
    var age: Double
    var height: Double
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 3")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {    
                    Text("Fill your weight below in kg")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    SuperTextField(placeholder: Text("For example: 52").foregroundColor(.gray), text: $weight)
                        .padding()
                        .frame(maxWidth: 320, maxHeight: 50)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(14)
                        .tint(.black)
                        .padding(.bottom, 50)
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
                            if !weight.isEmpty {
                                pathManager.navigateTo(destination: .question4View(age: age, height: height, weight: Double(weight) ?? 0))
                            }
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question4View: View {
    @State var cycleLength: String = ""
    var age: Double
    var height: Double 
    var weight: Double
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 3")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {    
                    Text("Fill your usual cycle length below in days")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    SuperTextField(placeholder: Text("For example: 5").foregroundColor(.gray), text: $cycleLength)
                        .padding()
                        .frame(maxWidth: 320, maxHeight: 50)
                        .background(.white)
                        .foregroundColor(.black)
                        .cornerRadius(14)
                        .tint(.black)
                        .padding(.bottom, 50)
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
                            if !cycleLength.isEmpty {
                                pathManager.navigateTo(destination: .question5View(age: age, height: height, weight: weight, cycleLenth: Double(cycleLength) ?? 0))
                            }
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question5View: View {
    var options: [String] = ["No", "Yes"]
    @State var selectedIndex: Int = 0
    var age: Double
    var height: Double
    var weight: Double
    var cycleLength: Double
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 5")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Skin darkening on the back of the neck, in the armpits and/or under the breasts")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                    
                    CustomSegmentedControl(preselectedIndex: $selectedIndex, options: options, color: "#F4739E")
                        .padding(.bottom, 50)
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
                            pathManager.navigateTo(destination: .question6View(age: age, height: height, weight: weight, cycleLenth: cycleLength, skinDarkenning: Double(selectedIndex)))
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question6View: View {
    var options: [String] = ["No", "Yes"]
    @State var selectedIndex: Int = 0
    var age: Double
    var height: Double
    var weight: Double
    var cycleLenth: Double
    var skinDarkening: Double
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 6")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Weight gain, especially around the belly (abdomen)")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                    
                    CustomSegmentedControl(preselectedIndex: $selectedIndex, options: options, color: "#F4739E")
                        .padding(.bottom, 50)
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
                            pathManager.navigateTo(destination: .question7View(age: age, height: height, weight: weight, cycleLenth: cycleLenth, skinDarkening: skinDarkening, weightGain: Double(selectedIndex)))
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question7View: View {
    var options: [String] = ["No", "Yes"]
    @State var selectedIndex: Int = 0
    var age: Double
    var height: Double
    var weight: Double
    var cycleLenth: Double
    var skinDarkening: Double
    var weightGain: Double
    @EnvironmentObject var pathManager: NavigationManager
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 7")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Hair growth especially in the chest, stomach, and back")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                    
                    CustomSegmentedControl(preselectedIndex: $selectedIndex, options: options, color: "#F4739E")
                        .padding(.bottom, 50)
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
                            pathManager.navigateTo(destination: .question8View(age: age, height: height, weight: weight, cycleLength: cycleLenth, skinDarkening: skinDarkening, weightGain: weightGain, hairGrowth: Double(selectedIndex)))
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question8View: View {
    var options: [String] = ["No", "Yes"]
    @State var selectedIndex: Int = 0
    var age: Double
    var height: Double
    var weight: Double
    var cycleLenth: Double
    var skinDarkening: Double
    var weightGain: Double
    var hairGrowth: Double
    @EnvironmentObject var pathManager: NavigationManager 
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 8")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Hair loss similar to male pattern baldness")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    CustomSegmentedControl(preselectedIndex: $selectedIndex, options: options, color: "#F4739E")
                        .padding(.bottom, 50)
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
                            pathManager.navigateTo(destination: .question9View(age: age, height: height, weight: weight, cycleLength: cycleLenth, skinDarkening: skinDarkening, weightGain: weightGain, hairGrowth: hairGrowth, hairLoss: Double(selectedIndex)))
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct Question9View: View {
    var options: [String] = ["No", "Yes"]
    @State var selectedIndex: Int = 0
    var age: Double
    var height: Double
    var weight: Double
    var cycleLenth: Double
    var skinDarkening: Double
    var weightGain: Double
    var hairGrowth: Double
    var hairLoss: Double
    @EnvironmentObject var pathManager: NavigationManager 
    var body: some View {
        ZStack {
            Color(hex: "FDD3E1")
            
            VStack {
                VStack {
                    Image("Icon")
                        .resizable()
                        .frame(width: 279, height: 279)
                    Text("Question 9")
                        .poppinsMedium(color: .black, size: 40)
                        .padding(.bottom, 5)
                }
                .frame(maxWidth: .infinity, maxHeight: 600)
                .background(.white)
                
                VStack {
                    Text("Acnes or oily skin")
                        .poppinsThin(size: 20)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    
                    CustomSegmentedControl(preselectedIndex: $selectedIndex, options: options, color: "#F4739E")
                        .padding(.bottom, 50)
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
                            let result = predictPCOS()
                            if result == 1 {
                                pathManager.navigateTo(destination: .positiveResultView)
                            } else if result == 0{
                                pathManager.navigateTo(destination: .negativeResultView)
                            }
                        }
                }
                .frame(maxWidth: 200)
                
                Spacer()
            }
            .navigationBarHidden(true)
        }
    }
    
    func predictPCOS() -> Int {
        do {
            let config = MLModelConfiguration()
            let model = try PCOSDetector(configuration: config)
            
            let prediction = try model.prediction(Age__yrs_: age, Weight__Kg_: weight, Height_Cm_: height, Cycle_length_days_: cycleLenth, Weight_gain_Y_N_: weightGain, hair_growth_Y_N_: hairGrowth, Skin_darkening__Y_N_: skinDarkening, Hair_loss_Y_N_: hairLoss, Pimples_Y_N_: Double(selectedIndex))
            return Int(prediction.PCOS__Y_N_)
        } catch { 
            print("error")
        }
        return 0
    }
}

