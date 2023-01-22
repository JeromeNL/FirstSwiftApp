//
//  FrameBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.green)
            //.frame(width: 300, height: 300, alignment: .leading)
            //.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .frame(height: 100, alignment: .leading)
            .frame(width: 150, alignment: .leading)
            .background(Color.purple)
            .frame(maxWidth: .infinity)
            .background(Color.pink)
            .frame(maxHeight: .infinity, alignment: .top)
            .frame(width: 200)
            .background(Color.yellow)
            .border(.red)
            
            //.background(Color.red)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
