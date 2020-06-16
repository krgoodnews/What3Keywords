//
//  TextView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/11.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

import SnapKit
import Then

struct TextView: UIViewRepresentable {

    // MARK: - Property

    @Binding var text: String
    @Binding var textStyle: UIFont.TextStyle

    // MARK: - Representer

    func makeUIView(context: Context) -> UITextView {
        return UITextView().then {
            $0.delegate = context.coordinator
            $0.font = .preferredFont(forTextStyle: textStyle)
            $0.autocapitalizationType = .sentences
            $0.isSelectable = true
            $0.isUserInteractionEnabled = true
        }
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
        uiView.font = .preferredFont(forTextStyle: textStyle)
    }

    // MARK: - Coordinator

    func makeCoordinator() -> Coordinator {
        Coordinator($text)
    }

    class Coordinator: NSObject, UITextViewDelegate {
        private var text: Binding<String>

        init(_ text: Binding<String>) {
            self.text = text
        }

        func textViewDidChange(_ textView: UITextView) {
            text.wrappedValue = textView.text
        }
    }
}
