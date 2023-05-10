//
//  Pop_Up.swift
//  WeatherOne
//
//  Created by Ignat K on 18/04/2023.
//

import SwiftUI

struct Pop_UpView: View {
    @Binding var noteDict:[String:String]
    
    @Binding var date: String
    
    @State var note: String
    
    var body: some View {
        VStack{
            TextField("Your input", text: $note).onChange(of: note) { newValue in
                self.noteDict[date] = newValue
            }
        }
    }
}


//struct Pop_Up_Previews: PreviewProvider {
//    static var previews: some View {
//        Pop_Up()
//    }
//}
