//
//  SafeAreaBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 24/01/2023.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        ScrollView{
            VStack {
                Text("Title goes here!")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
               
            ForEach(0..<10){ index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
            }
        }
        
        
        //        ZStack {
        //            //background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            //foreground
        //            VStack {
        //                Text("Hello, SafeArea!")
        //                    Spacer();
        //            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        //                .background(Color.mint.ignoresSafeArea(edges: []))
        //
        //        }
        //    }
    }
}
struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
