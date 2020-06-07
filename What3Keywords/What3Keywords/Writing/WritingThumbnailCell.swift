//
//  WritingThumbnailCell.swift
//  What3Keywords
//
//  Created by Yunsu Guk on 2020/05/28.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import UIKit
import SwiftUI

import SnapKit
import Then

final class WritingThumbnailCell: UITableViewCell {

    private let titleLabel = UILabel().then {
        $0.font = .preferredFont(forTextStyle: .title1)
        $0.text = "TST Title"
    }

    private let keywordLabel = UILabel().then {
        $0.font = .preferredFont(forTextStyle: .caption1)
        $0.text = "TST #두부, 그리고, 꿈"
    }

    private func setupView() {
        addSubviews(titleLabel, keywordLabel)
        titleLabel.snp.makeConstraints {
            $0.top.left.equalToSuperview().inset(16)
            $0.right.lessThanOrEqualToSuperview()
        }

        keywordLabel.snp.makeConstraints {
            $0.top.greaterThanOrEqualTo(titleLabel.snp.bottom).offset(8)
            $0.bottom.right.equalToSuperview().inset(16)
        }
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private struct WritingThumbnailCellRepresentable: UIViewRepresentable {
    typealias UIViewType = WritingThumbnailCell

    func makeUIView(context: Context) -> WritingThumbnailCell {
        WritingThumbnailCell.init(style: .default, reuseIdentifier: "cellID")
    }

    func updateUIView(_ uiView: WritingThumbnailCell, context: Context) {
    }
}

private struct WritingThumbnailCellPreview: PreviewProvider {
    static var previews: some View {
        WritingThumbnailCellRepresentable()
            .frame(width: 375.0, height: 100)
            .previewLayout(.sizeThatFits)
    }
}
