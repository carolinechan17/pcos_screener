import Foundation
import SwiftUI

extension View {
    func poppinsThin(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsThin(color: color, size: size))
    }
    
    func poppinsLight(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsLight(color: color, size: size))
    }
    
    func poppinsRegular(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsRegular(color: color, size: size))
    }
    
    func poppinsMedium(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsMedium(color: color, size: size))
    }
    
    func poppinsBold(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsBold(color: color, size: size))
    }
    
    func poppinsSemiBold(color: Color = .black, size: CGFloat = 12) -> some View {
        modifier(PoppinsSemiBold(color: color, size: size))
    }
}

struct PoppinsThin: ViewModifier {
    var color: Color 
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-Thin", size: size))
            .foregroundColor(color)
    }
}

struct PoppinsLight: ViewModifier {
    var color: Color
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-Light", size: size))
            .foregroundColor(color)
    }
}

struct PoppinsRegular: ViewModifier {
    var color: Color
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-Regular", size: size))
            .foregroundColor(color)
    }
}

struct PoppinsBold: ViewModifier {
    var color: Color
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-Bold", size: size))
            .foregroundColor(color)
    }
}

struct PoppinsMedium: ViewModifier {
    var color: Color
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-Medium", size: size))
            .foregroundColor(color)
    }
}

struct PoppinsSemiBold: ViewModifier {
    var color: Color
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(Font.custom("Poppins-SemiBold", size: size))
            .foregroundColor(color)
    }
}
