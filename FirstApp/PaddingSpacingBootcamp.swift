//
//  PaddingSpacingBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct PaddingSpacingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("This is the description of what we will do on this screen. It is multiple lines and we will align the text to the leading edge.")
                
        }
//        .background(Color.blue)
//        .padding(.all, 10)
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
//        .background(Color.green)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
    }
}

struct PaddingSpacingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingSpacingBootcamp()
    }
}
