//
//  WritingListController.swift
//  What3Keywords
//
//  Created by Yunsu Guk on 2020/05/31.
//  Copyright © 2020 Yunsu Guk. All rights reserved.
//

import UIKit

import RxCocoa
import RxSwift
import SnapKit
import Then

private let cellID = "writeCellID"

final class WritingListController: UIViewController {

    // MARK: - ViewModel

    private let viewModel: WritingListViewModel
    private var disposeBag = DisposeBag()

    private func setupViewModel() {
        viewModel.writings.asDriver()
            .drive(tableView.rx.items(cellIdentifier: cellID)) { (index, item, cell) in
                guard let cell = cell as? WritingThumbnailCell else { return }
//                cell.viewModel = item
        }.disposed(by: disposeBag)
    }
    // MARK: - Views

    private lazy var tableView = UITableView().then {
//        $0.separatorStyle = .none
        $0.register(WritingThumbnailCell.self, forCellReuseIdentifier: cellID)
    }

    private func setupViews() {
        title = "Writings"
        navigationController?.navigationBar.prefersLargeTitles = true

        view.addSubviews(tableView)

        tableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }

    // MARK: - View Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupViewModel()
    }

    // MARK: - Init
    
    init(viewModel: WritingListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
