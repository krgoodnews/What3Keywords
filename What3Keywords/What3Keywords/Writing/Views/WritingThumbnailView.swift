//
//  WritingThumbnailView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/10.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

struct WritingThumbnailView: View {
    var body: some View {

        VStack(alignment: .leading, spacing: 8) {
            Text("TEST title")
                .font(.title)
            Text("TST #두부, 그리고, 꿈")
                .font(.caption)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topTrailing)
        }
        .background(Color.green)
        .padding(8)
    }
}

struct WritingThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        WritingThumbnailView()
            .frame(width: 375.0, height: 180.0)
            .previewLayout(.sizeThatFits)
    }
}
