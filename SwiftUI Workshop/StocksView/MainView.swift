//
//  ContentView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State var showDetail = false
    var body: some View {
        VStack {

            Spacer()

            VStack(alignment: .leading) {
                TitleView()
                IntroductionContainerView()
            }

            Spacer()

            Button(action: {
                self.showDetail = true
            }) {
                Text("Continue")
                    .modifier(ButtonModifier())
            }

            .alert(isPresented: $showDetail) {
                Alert(title: Text("Stocks"), message: Text("Welcome!"), dismissButton: .default(Text("OK!")))
            }

            Text("About Stocks & Privacy...")
                .foregroundColor(.primaryColor)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
