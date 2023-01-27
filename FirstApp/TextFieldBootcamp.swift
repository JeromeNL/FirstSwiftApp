//
//  TextFieldBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 26/01/2023.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type iets hier", text: $textFieldText)
                    //.textFieldStyle(RoundedBorderTextFieldStyle)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .foregroundColor(.red)
                .font(.headline)
                
                Button(action: {
                    if(textIsOk()){
                        saveText()
                    }
                }, label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsOk() ? Color.green : Color.red)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                .disabled(!textIsOk())
                
                ForEach(dataArray, id: \.self){ data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFieldBootcamp")
        }
    }
    
    func textIsOk() -> Bool{
        if(textFieldText.count >= 3){
            return true;
        }
        return false;
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
