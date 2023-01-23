//
//  IconsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            //.font(.largeTitle)
            //.font(.system(size: 200))
            .foregroundColor(Color.black)
            .frame(width: 300, height: 300)
            .border(.green)
            //.clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
