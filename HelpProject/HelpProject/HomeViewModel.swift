//
//  HomeViewModel.swift
//  HelpProject
//
//  Created by Pratik Parmar on 30/07/24.
//

import Foundation

class HomeViewModel {
    static var lostOptions: [Option] {
         [Option(displayName: OBJECT_TITLE, imageName: OBJECT_IMAGE),
         Option(displayName: PET_TITLE, imageName: PET_IMAGE),
         Option(displayName: HUMAN_TITLE, imageName: HUMAN_IMAGE)]
     }

    static var foundOptions: [Option] {
        [Option(displayName: OBJECT_TITLE, imageName: OBJECT_IMAGE),
        Option(displayName: PET_TITLE, imageName: PET_IMAGE),
        Option(displayName: HUMAN_TITLE, imageName: HUMAN_IMAGE)]
     }

    static var neededOptions: [Option] {
         [Option(displayName: WORK_TITLE, imageName: WORK_IMAGE),
         Option(displayName: BLOOD_TITLE, imageName: BLOOD_IMAGE),
          Option(displayName: MONEY, imageName: MONEY_IMAGE)]
     }

    static var donateOptions: [Option] {
         [Option(displayName: US_TITLE, imageName: US_IMAGE),
          Option(displayName: OTHERS_TITLE, imageName: OTHERS_IMAGE),
          Option(displayName: BLOOD_TITLE, imageName: BLOOD_IMAGE)]
     }

   static var allSections: [Section] {
        [Section(title: SECTION_HEADING_LOST, options: lostOptions),
         Section(title: SECTION_HEADING_FOUND, options: foundOptions),
         Section(title: SECTION_HEADING_NEEDED, options: neededOptions),
         Section(title: SECTION_HEADING_DONATE, options: donateOptions)]
    }

}
