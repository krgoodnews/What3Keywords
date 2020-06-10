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
    var body: some View {
        NavigationView {
            Text("dskd")
            .navigationBarTitle("#두부, 그리고, 꿈")
        }
//        VStack {
//            TextField("dkdkdd\nsldfksdf", text: $text)
//                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
        //        }

    }
}

struct AddWritingView_Previews: PreviewProvider {
    static var previews: some View {
        AddWritingView()
    }
}
