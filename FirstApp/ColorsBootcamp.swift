//
//  ColorsBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 21/01/2023.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.primary
                //Color(.red)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color.blue, radius: 10, x: 10.0, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
