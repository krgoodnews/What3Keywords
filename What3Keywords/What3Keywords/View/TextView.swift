//
//  TextView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/11.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

import Then

struct TextView: UIViewRepresentable {

    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView().then {
            $0.font = .preferredFont(forTextStyle: textStyle)
            $0.autocapitalizationType = .sentences
            $0.isSelectable = true
            $0.isUserInteractionEnabled = true
        }

        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = .preferredFont(forTextStyle: textStyle)
    }
}
