//
//  TitleView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading) {

            Text("Welcome to")
                .customText()

            Text("Stocks")
                .foregroundColor(.primaryColor)
                .customText()
        }

        .modifier(IntroductionModifier())
    }
}
