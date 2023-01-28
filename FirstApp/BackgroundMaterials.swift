//
//  BackgroundMaterials.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

struct BackgroundMaterials: View {
    var body: some View {
        VStack{
            Spacer()
            
            VStack{
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 30, height: 4)
                    .padding()
                Spacer()
                
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image("Zermatt")
        )
        
    }
}

struct BackgroundMaterials_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterials()
    }
}
