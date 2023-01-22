//
//  ImageBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("applelogo")
            //.renderingMode(.template)
            .resizable()
            .aspectRatio(contentMode: .fit)
            //.scaledToFill()
            .frame(width: 100, height: 300)
            .border(Color.red)
            .foregroundColor(.blue)
            //.clipped()
            //.cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                Circle()
            //)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
