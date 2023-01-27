//
//  ContextMenuBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 26/01/2023.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var bgColor: Color = Color.gray
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Jerome")
                .font(.headline)
            Text("how to use Context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                bgColor = Color.blue
            }, label:{
               Label("Share post", systemImage: "flame.fill")
            })
            
            Button(action: {
                bgColor = Color.red
            }, label:{
                Text("Report post")
            })
            
            Button(action: {
                bgColor = Color.orange
            }, label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
        })
        
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
