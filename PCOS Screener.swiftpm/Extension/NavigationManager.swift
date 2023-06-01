import SwiftUI
import Foundation

class NavigationManager: ObservableObject {
    @Published var path: NavigationPath = NavigationPath()
    
    func goToRoot() {
        guard !path.isEmpty else { return }
        path.removeLast(path.count)
    }
    
    func navigateTo(destination: Route) {
        path.append(destination)
    }
    
    func backToPrevious() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
}

enum Route: Hashable {
    case complicationView
    case symptomsView
    case instructionView
    case question1View
    case question2View(age: Double)
    case question3View(age: Double, height: Double)
    case question4View(age: Double, height: Double, weight: Double)
    case question5View(age: Double, height: Double, weight: Double, cycleLenth: Double)
    case question6View(age: Double, height: Double, weight: Double, cycleLenth: Double, skinDarkenning: Double)
    case question7View(age: Double, height: Double, weight: Double, cycleLenth: Double, skinDarkening: Double, weightGain: Double)
    case question8View(age: Double, height: Double, weight: Double, cycleLength: Double, skinDarkening: Double, weightGain: Double, hairGrowth: Double)
    case question9View(age: Double, height: Double, weight: Double, cycleLength: Double, skinDarkening: Double, weightGain: Double, hairGrowth: Double, hairLoss: Double)
    case negativeResultView
    case positiveResultView
}
