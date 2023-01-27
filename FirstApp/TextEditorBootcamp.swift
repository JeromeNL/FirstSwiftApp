//
//  TextEditorBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 26/01/2023.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditText: String = "Text of string"
    @State var savedtext: String = ""
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditText)
                    .frame(height: 250)
                    .foregroundColor(.black)
                    .colorMultiply(.gray)
                    .cornerRadius(10)
                Button(action: {
                    savedtext = textEditText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedtext)
                
                Spacer()
            }
            .padding()
            .background(.green)
            .navigationTitle("TextEditorBootcamp")
        }
}
    }


struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
