//
//  IntroductionView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct IntroductionView: View {
    var title: String
    var subTitle: String
    var imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .font(.system(size: 36))
                .foregroundColor(.primaryColor)
            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                    .fixedSize(horizontal: false, vertical: true)
                Text(subTitle)
                    .font(.subheadline)
            }
            .padding([.vertical])
        }
    }
}
