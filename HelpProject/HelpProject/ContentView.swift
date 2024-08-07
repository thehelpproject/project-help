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
    
    @State private var yourName = EMPTY_STRING
    @State private var yourLocation = EMPTY_STRING
    @State private var bloodGroupRequired = EMPTY_STRING
    @State private var bloodUnitsRequired = EMPTY_STRING
    @State private var contactPerson = EMPTY_STRING
    @State private var contactPersonContact = EMPTY_STRING
    @State private var bloodRequiredFor = EMPTY_STRING
    @State private var hospital = EMPTY_STRING
    
    @FocusState private var focus:Bool
    
    var body: some View {
        Text("Blood Request Form").bold()
        VStack {
            HTextField(yourNameLabel,EMPTY_STRING)
            HTextField(yourLocationLabel,EMPTY_STRING)
            HTextField(bloodGroupRequiredLabel,EMPTY_STRING)
            HTextField(bloodUnitsRequiredLabel,EMPTY_STRING)
            HTextField(contactPersonLabel,EMPTY_STRING)
            HTextField(bloodRequiredForLabel,EMPTY_STRING)
            HTextField(contactPersonContactLabel,EMPTY_STRING)
            HTextField(hospitalLabel,EMPTY_STRING)
            HButton("Submit")
        }.onAppear(perform: {
            focus = true
        }).padding()
    }
}

#Preview {
    ContentView()
}
