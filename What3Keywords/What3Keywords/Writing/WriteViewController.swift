//
//  WriteViewController.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/08.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import UIKit
import SwiftUI

import SnapKit
import Then

final class WriteViewController: UIViewController {

    // MARK: - Views
    private let textView = UITextView().then {
        $0.text = "dkdkdk"
        $0.backgroundColor = .brown
    }

    private let keywordLabel = UILabel().then {
        $0.textColor = .systemGreen
        $0.text = "TST 키워드, 혹은, 그림"
        $0.textAlignment = .right
    }
    private func setupViews() {
        view.backgroundColor = .systemBackground

        view.addSubviews(textView, keywordLabel)

        textView.snp.makeConstraints {
            $0.top.left.right.equalToSuperview().inset(16)
            $0.height.greaterThanOrEqualTo(70)
        }

        keywordLabel.snp.makeConstraints {
            $0.top.equalTo(textView.snp.bottom).offset(8)
            $0.right.equalTo(textView)
        }
    }

    // MARK: - View Cycles
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

#if DEBUG
private struct WriteViewControllerRepresentable: UIViewRepresentable {
    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        return WriteViewController().view
    }

    func updateUIView(_ uiView: UIView, context: Context) {
    }
}

private struct WriteViewControllerPreview: PreviewProvider {
    static var previews: some View {
        WriteViewControllerRepresentable()
    }
}

#endif
