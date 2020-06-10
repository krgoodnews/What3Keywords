//
//  WritingListViewModel.swift
//  What3Keywords
//
//  Created by Yunsu Guk on 2020/05/31.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import Foundation

import RxCocoa
import RxSwift
import SnapKit
import Then

final class WritingListViewModel {
    let writings = BehaviorRelay<[WritingViewModel]>(value: [.init()])

}
