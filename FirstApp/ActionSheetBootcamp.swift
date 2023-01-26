//
//  ActionSheetBootcamp.swift
//  FirstApp
//
//  Created by Joram Kwetters on 26/01/2023.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 30, height: 30)
            Text("@username")
            Spacer()
            Button(action: {
                actionSheetOption = .isOtherPost
                showActionSheet.toggle()
            }, label: {
                Image(systemName: "ellipsis")
            })
            .tint(.primary)
        }
        .padding(.horizontal)
        
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
        
    }
        //.actionSheet(isPresented: $showActionSheet, content: getActionSheet)
        
}
    func getActionSheet() -> ActionSheet{
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            
        }
        let cancelButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isOtherPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
            
        case .isMyPost:
            return ActionSheet(
                title: Text("What would you like to do?"),
                message: Text("tekst"),
                buttons: [deleteButton, shareButton, reportButton, cancelButton])
        
        }
}
    
        
        //return  ActionSheet(title: Text("This is a title"))
//
//        let button1: ActionSheet.Button = .default(Text("DEFAULT1"))
//        let button2: ActionSheet.Button = .destructive(Text("DEFAULT2"))
//        let button3: ActionSheet.Button = .cancel()
//
//        return ActionSheet(
//            title: Text("De titel"),
//            message: Text("uitleg over het bericht"),
//            buttons: [button1, button1, button1, button2, button3]
//        )
        
    }





struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
