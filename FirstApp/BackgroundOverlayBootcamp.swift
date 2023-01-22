//
//  BackgroundOverlayBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct BackgroundOverlayBootcamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .foregroundColor(Color.white)
            .font(.system(size: 40))
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color(#colorLiteral(red: 0.05506234616, green: 0, blue: 1, alpha: 1)), Color.cyan]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: (Color.gray), radius: 10, x: 10, y: 5)
                    .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("3")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                            ).shadow(color: (Color.gray), radius: 10, x: 5, y: 5)
                        ,alignment: .bottomTrailing
            )
                )
        
        
        
        
//        Rectangle()
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(Color.blue)
//                    .frame(width: 50, height: 50),
//                alignment: .topLeading
//            )
//            .background(
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150),
//                alignment: .bottomTrailing
//            )
        
        
        
//        Circle()
//            .fill(Color.pink)
//            .frame(width: 100, height: 100, alignment: .center)
//            .overlay(
//            Text("1")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//            )
//            .background(
//            Circle()
//                .fill(Color.purple)
//                .frame(width: 110, height: 110)
//            )
        
        
        
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//
//            .background(
//                //Color.red
//                //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors:[Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
//                    .frame(width: 100, height: 100, alignment: .center)
//            )
//
//            .background(
//                Circle()
//                    .fill(Color.red)
//                    .frame(width: 120, height: 120, alignment: .center)
//            )
                
    }
}

struct BackgroundOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlayBootcamp()
    }
}
