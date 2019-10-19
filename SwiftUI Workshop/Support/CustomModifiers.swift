//
//  CustomModifiers.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct IntroductionModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
    }
}

struct ButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
            .padding()
            .frame(width: UIScreen.main.bounds.width - 24, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(Color.primaryColor))
    }
}
