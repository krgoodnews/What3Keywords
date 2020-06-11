//
//  AddWritingView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/10.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

struct AddWritingView: View {
    @State var text: String = ""
    @State private var textStyle = UIFont.TextStyle.body

    var body: some View {
        NavigationView {
            TextView(text: $text, textStyle: $textStyle)
                .padding(16)
                .navigationBarTitle("#두부, 그리고, 꿈", displayMode: .inline)
        }
    }
}

struct AddWritingView_Previews: PreviewProvider {
    static var previews: some View {
        AddWritingView()
    }
}
