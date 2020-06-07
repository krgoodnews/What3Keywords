//
//  Writing.swift
//  What3Keywords
//
//  Created by Yunsu Guk on 2020/05/31.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import Foundation

protocol ProducesWritingViewModel {
    func toWritingViewModel() -> WritingViewModel
}

struct Writing {
    var title: String?
    var keywords: [String]?
}

extension Writing: ProducesWritingViewModel {

    func toWritingViewModel() -> WritingViewModel {
        let viewModel = WritingViewModel()
        
        return viewModel
    }
}
