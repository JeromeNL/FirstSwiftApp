//
//  GradientsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.pink]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                    colors: [Color.red, Color.blue],
//                    center: .topLeading,
//                    startRadius: 5,
//                    endRadius: 200)
//              )
//                AngularGradient(
//                    colors: [Color.red, Color.blue],
//                    center: .center,
//                    startAngle: .degrees(45),
//                    endAngle: .degrees(30))
                AngularGradient(
                    gradient: Gradient(colors: [Color.blue, Color.red]),
                    center: .topLeading,
                    angle: .degrees(180))
                )
            .frame(width: 300, height: 300)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
