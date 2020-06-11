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

    let placeholder: String

    // MARK: - View

    private let placeholderLabel = UILabel().then {
        $0.textColor = .systemGray2
    }

    // MARK: - Representer

    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView().then {
            $0.delegate = context.coordinator
            $0.font = .preferredFont(forTextStyle: textStyle)
            $0.autocapitalizationType = .sentences
            $0.isSelectable = true
            $0.isUserInteractionEnabled = true
        }

        placeholderLabel.do {
            $0.text = placeholder
            $0.font = .preferredFont(forTextStyle: textStyle)
        }

        textView.addSubview(placeholderLabel)

        placeholderLabel.snp.makeConstraints {
            $0.top.bottom.equalToSuperview().inset(textView.textContainerInset)
            $0.left.equalToSuperview().inset(textView.textContainerInset.left + textView.textContainer.lineFragmentPadding)
            $0.left.equalToSuperview().inset(textView.textContainerInset.right + textView.textContainer.lineFragmentPadding)
        }

        return textView
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        placeholderLabel.isHidden = text.isEmpty.not()
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
