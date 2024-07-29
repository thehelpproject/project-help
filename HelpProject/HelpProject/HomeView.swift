//
//  HomeView.swift
//  HelpProject
//
//  Created by Pratik Parmar on 29/07/24.
//

import SwiftUI

struct Section: Identifiable {
    var id = UUID()
    var title: String
    var options: [Option]
}

var lostOptions: [Option] {
     [Option(displayName: OBJECT_TITLE, imageName: OBJECT_IMAGE),
     Option(displayName: PET_TITLE, imageName: PET_IMAGE),
     Option(displayName: HUMAN_TITLE, imageName: HUMAN_IMAGE)]
 }

var foundOptions: [Option] {
    [Option(displayName: OBJECT_TITLE, imageName: OBJECT_IMAGE),
    Option(displayName: PET_TITLE, imageName: PET_IMAGE),
    Option(displayName: HUMAN_TITLE, imageName: HUMAN_IMAGE)]
 }

var neededOptions: [Option] {
     [Option(displayName: WORK_TITLE, imageName: WORK_IMAGE),
     Option(displayName: BLOOD_TITLE, imageName: BLOOD_IMAGE),
    ]
 }

var donateOptions: [Option] {
     [
      Option(displayName: US_TITLE, imageName: US_IMAGE),
      Option(displayName: OTHERS_TITLE, imageName: OTHERS_IMAGE),
      Option(displayName: BLOOD_TITLE, imageName: BLOOD_IMAGE)
     ]
 }

struct HomeView: View {
    
    @State var sections: [Section] = {
        [Section(title: SECTION_HEADING_LOST, options: lostOptions),
         Section(title: SECTION_HEADING_FOUND, options: foundOptions),
         Section(title: SECTION_HEADING_NEEDED, options: neededOptions),
         Section(title: SECTION_HEADING_DONATE, options: donateOptions)]
    }()
    
    var body: some View {
        ForEach(sections) { sec in
            OptionsCardView(options: sec.options, cardTitle: sec.title)
        }
    }
}

#Preview {
    HomeView()
}
