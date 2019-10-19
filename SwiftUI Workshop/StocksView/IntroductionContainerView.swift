//
//  IntroductionContainerView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct IntroductionContainerView: View {
    var body: some View {
        VStack(alignment: .leading) {
            IntroductionView(title: "All New Design", subTitle: "Easily View blah blah", imageName: "star")

            IntroductionView(title: "Business News", subTitle: "Read stories blah blah", imageName: "chart.bar")

            IntroductionView(title: "iPhone, iMac and Mac", subTitle: "Use iCloud blah blah", imageName: "desktopcomputer")
        }
    }
}
