//
//  AsyncImageBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://purepng.com/public/uploads/large/switzerland-uot.png")
    
    var body: some View {
        
        AsyncImage(url: url){ phase in
            switch phase{
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 100)
                    .cornerRadius(20)         
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
            }
        }
        
//        AsyncImage(
//            url: url,
//            content: { returnedImage in
//                returnedImage
//                    .resizable()
//                    .scaledToFit()
//            }, placeholder: {
//                ProgressView()
//            })
//            .frame(width: 200, height: 200)
    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
