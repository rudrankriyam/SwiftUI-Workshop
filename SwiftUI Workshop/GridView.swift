//
//  GridView.swift
//  SwiftUI Workshop
//
//  Created by Rudrank Riyam on 19/10/19.
//  Copyright © 2019 Rudrank Riyam. All rights reserved.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ImageRow()
                    .padding(.horizontal)
            }
            .navigationBarTitle(Text("Landscapes"))
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}

struct ImageRow: View {
    var body: some View {

        //        // Method Two
        //        var result: [[Int]] = []
        //        _ = (1...18).publisher
        //            .collect(2) // Creating two columns
        //            .collect()
        //            .sink(receiveValue: { result = $0 })

        // Method One
        let numbers = Array(1...18)
        let result = numbers.chunked(into: 2) // Creating two columns

        return ForEach(0..<result.count, id: \.self) { array in
            HStack {
                ForEach(result[array], id: \.self) { number in
                    Image("noaa\(number)")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
        }
    }
}

// Credits - https://www.hackingwithswift.com/example-code/language/how-to-split-an-array-into-chunks
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}
