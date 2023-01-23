//
//  ForeachBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 23/01/2023.
//

import SwiftUI

struct ForeachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hoi"]
    let myString: String = "Hello"
    
    
    var body: some View {
        VStack{
            ForEach(data.indices){ index in
                Text("\(data[index])")
            }
            ForEach(0..<100){ index in
                Circle()
                    .frame(height: 50)
            }
        }
         
        
//        VStack{
//            ForEach(0..<10){ index in
//                Text("Hi! \(index + 1)")
//                HStack {
//                    Circle()
//                        .frame(width: 30, height: 30)
//                    Text("Index: \(index)")
//                }
//            }
//        }
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}
