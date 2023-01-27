//
//  AnimationCurves.swift
//  FirstApp
//
//  Created by Joram Kwetters on 25/01/2023.
//

import SwiftUI

struct AnimationCurves: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        VStack{
            Button("Button"){
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50
                       , height: 100)
                .animation(.spring(
                    response: 1,
                    dampingFraction: 2,
                    blendDuration: 1
                ), value: isAnimating)
                //.animation(Animation.linear(duration: timing), value: isAnimating)
            
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50
//                       , height: 100)
//                .animation(Animation.easeIn(duration: timing / 2), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50
//                       , height: 100)
//                .animation(Animation.easeInOut(duration: timing * 5), value: isAnimating)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50
//                       , height: 100)
//                .animation(Animation.easeOut(duration: timing / 5), value: isAnimating)
        }
    }
}

struct AnimationCurves_Previews: PreviewProvider {
    static var previews: some View {
        AnimationCurves()
    }
}
