//
//  StackBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 22/01/2023.
//

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
        
        
        //        VStack(alignment: .center, spacing: 20){
        //            Text("5")
        //                .font(.largeTitle)
        //                .underline()
        //            Text("Items in your cart")
        //                .font(.caption)
        //                .foregroundColor(.gray)
        //
        //        }
        
        
        
        
        
        //        ZStack(alignment: .top){
        //            Rectangle()
        //                .fill(Color.yellow)
        //                .frame(width: 350, height: 500)
        //            VStack(alignment: .leading, spacing: 30){
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150)
        //
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: 100, height: 100)
        //
        //                HStack(alignment: .bottom) {
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                    .frame(width: 50, height: 50)
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                    .frame(width: 50, height: 50)
        //                    Rectangle()
        //                        .fill(Color.purple)
        //                    .frame(width: 50, height: 50)
        //                }.background(Color.black)
        //            }.border(Color.cyan)
        //        }
        
        
        
        
        
        //        ZStack(
        //            alignment: .topLeading,
        //            content:{
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 200, height: 200)
        //
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: 150, height: 150)
        //
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 100, height: 100)
        //            }
        //        ).border(Color.blue)
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
