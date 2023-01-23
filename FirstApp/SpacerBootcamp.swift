//
//  SpacerBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 23/01/2023.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(Color.gray)
                Image(systemName: "gear")
            }
            .font(.title)
            .background(Color.yellow)
            .padding(.horizontal)
            .background(Color.blue)
            
            Spacer()
                .frame(width: 10)
                .background(Color.orange)
            
        }
        //        HStack(spacing: 0){
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.yellow)
        //            Rectangle()
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.yellow)
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 50, height: 50)
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.yellow)
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.yellow)
        //
        //
        
    }
    //        .padding(.horizontal, 200)
    //
    //        .background(Color.blue)
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
