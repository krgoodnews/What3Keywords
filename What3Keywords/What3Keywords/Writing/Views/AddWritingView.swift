//
//  AddWritingView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/10.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

struct AddWritingView: View {

    @State private var text: String = ""
    @State private var textStyle = UIFont.TextStyle.body

    @ObservedObject private var keyboard = KeyboardResponder()

    var body: some View {
        NavigationView {
            TextView(text: $text, textStyle: $textStyle)
                .padding(16)
                .padding(.bottom, keyboard.currentHeight)
                .overlay(Text("떠오르는 대로..")
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top, 44)
                    .opacity(text.isEmpty ? 1 : 0),
                         alignment: .top)

                .navigationBarTitle("#두부, 그리고, 꿈", displayMode: .inline)
        }
    }
}

struct AddWritingView_Previews: PreviewProvider {
    static var previews: some View {
        AddWritingView()
    }
}
