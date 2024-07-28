//
//  ContentView.swift
//  HelpProject
//
//  Created by Rahul Pahuja on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var yourNameLabel = "Your Name"
    @State private var yourLocationLabel = "Your Location"
    @State private var bloodGroupRequiredLabel = "Blood Group Required"
    @State private var bloodUnitsRequiredLabel = "Blood Units Required"
    @State private var contactPersonLabel = "Contact Person"
    @State private var contactPersonContactLabel = "Contact Person Contact"
    @State private var bloodRequiredForLabel = "Blood Required For"
    @State private var hospitalLabel = "Hospital"
    
    @State private var yourName = ""
    @State private var yourLocation = ""
    @State private var bloodGroupRequired = ""
    @State private var bloodUnitsRequired = ""
    @State private var contactPerson = ""
    @State private var contactPersonContact = ""
    @State private var bloodRequiredFor = ""
    @State private var hospital = ""
    
    @FocusState private var focus:Bool
    
    var body: some View {
        VStack {
            HTextField(yourNameLabel,"")
            HTextField(yourLocationLabel,"")
            HTextField(bloodGroupRequiredLabel,"")
            HTextField(bloodUnitsRequiredLabel,"")
            HTextField(contactPersonLabel,"")
            HTextField(bloodRequiredForLabel,"")
            HTextField(contactPersonContactLabel,"")
            HTextField(hospitalLabel,"")
            HButton("Submit")
        }.onAppear(perform: {
            focus = true
        })
        .padding()
    }
}

#Preview {
    ContentView()
}
