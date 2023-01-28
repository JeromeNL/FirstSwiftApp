//
//  IfletGuardBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 28/01/2023.
//

import SwiftUI

struct IfletGuardBootcamp: View {
    
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var currentUserID: String? = "15"
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding")
                
                if let text = displayText{
                    Text(text)
                        .font(.title)
                }
                
                // bad
//                Text(displayText!)
//                    .font(.title)
                
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData()
            }
        }
    }
    func loadData(){
        
        if let userID = currentUserID{
            isLoading = true
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data User id: \(userID)"
            }
            
            isLoading = false
        } else {
            displayText = "There is no userID"
        }
    }
    
    
    func loadData2(){
        
        guard let userID = currentUserID else {
            displayText = "There is no userID"
            return
        }
        
        isLoading = true
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is the new data User id: \(userID)"
        }
        
        isLoading = false
    }
}

struct IfletGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfletGuardBootcamp()
    }
}
