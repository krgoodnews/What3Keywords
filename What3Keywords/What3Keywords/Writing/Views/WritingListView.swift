//
//  WritingListView.swift
//  What3Keywords
//
//  Created by Yunsu on 2020/06/10.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import SwiftUI

struct WritingListView: View {

    @State private var showAddModal = false

    var body: some View {
        NavigationView {
            List(0..<3) { item in
                WritingThumbnailView()
            }
            .navigationBarTitle("Writings")
            .navigationBarItems(trailing:
                Button.init("Add", action: {
                    self.showAddModal = true
                }).sheet(isPresented: self.$showAddModal) {
                    AddWritingView()
                }
            )
        }
    }
}

struct WritingListView_Previews: PreviewProvider {
    static var previews: some View {
        WritingListView()
    }
}
