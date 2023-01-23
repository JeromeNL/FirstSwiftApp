//
//  ScrollViewBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 23/01/2023.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10){ index in
                    ScrollView(.horizontal, showsIndicators: false,
                               content: {
                        HStack{
                            ForEach(0..<20){ index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                    
                }
            }
        }
    }
}
        
//        ScrollView(.horizontal, showsIndicators: false,
//        content: {
//            HStack{
//                ForEach(0..<100){index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 200, height: 300)
//                }
//
//
//            }
//        })
        
 

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
