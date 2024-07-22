//
//  HTextField.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 22/07/24.
//

import SwiftUI

struct HTextField: View {
    @State private var statex:String
    @State private var title:String
    init(@State _ title:String ,@State _ state: String ) {
        self.statex = state
        self.title = title
    }
    var body: some View {
        TextField(title ,text:$statex)
            .textFieldStyle(.roundedBorder)
            .border(.purple)
            .padding()
            
    }
}

#Preview {
    HTextField("Your Name","Rahul")
}
