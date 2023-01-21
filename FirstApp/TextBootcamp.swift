//
//  TextBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 21/01/2023.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! this is the swiftful thinking bootcam im learn a lot, so this text is also way to big.")
//            .font(.body)
//            //.fontWeight(.medium)
//            .bold()
//            //.underline()
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .serif))
            .multilineTextAlignment(.center)
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
