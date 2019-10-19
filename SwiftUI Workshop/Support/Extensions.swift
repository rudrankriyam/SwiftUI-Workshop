//
//  Extensions.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

extension Text {
    func customText() -> Text {
        self
            .font(.system(size: 50))
            .fontWeight(.black)
    }
}

extension Color {
    static var primaryColor = Color(UIColor.systemTeal)
    static var coffeeColor = Color.init(red: 111/255, green: 78/255, blue: 55/255)
}
