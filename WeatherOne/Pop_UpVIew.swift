//
//  Pop_Up.swift
//  WeatherOne
//
//  Created by Ignat K on 18/04/2023.
//

import SwiftUI

struct Pop_Up: View {
    @Binding var note: [String: Binding<String>] {
        didSet {
            textInput = note[date]?.wrappedValue ?? ""
            self.note[date] = self.$textInput
        }
    }
    var date: String
    
    @State var textInput = ""

    var body: some View {

        
        return TextField("Enter your note", text: $textInput)
    }
}

//struct Pop_Up_Previews: PreviewProvider {
//    static var previews: some View {
//        Pop_Up()
//    }
//}
