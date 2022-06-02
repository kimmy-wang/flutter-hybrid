//
//  HomeNewsDetailViewController.swift
//  SBHome
//
//  Created by Ying Wang on 2022/2/17.
//

import UIKit
import Flutter
import Alamofire

class HomeNewsDetailViewController: FlutterViewController {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    init(engine flutterEngine: FlutterEngine) {
        super.init(engine: flutterEngine, nibName: nil, bundle: nil)
    }

    // MARK: - Properties
    var presenter: HomeNewsDetailViewToPresenterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = presenter?.news?.description
        label.textColor = .red
        self.title = "NewsDetail"
        self.view.backgroundColor = .white
        self.view.addSubview(label)
    }

}

extension HomeNewsDetailViewController: HomeNewsDetailPresenterToViewProtocol {

    func showSkeleton(_ pullToRefresh: Bool, loadMore: Bool) {
//        if loadMore {
//            activityIndicator.startAnimating()
//        } else {
//            if pullToRefresh {
//                tableView.dg_startLoading()
//            } else {
//                MBProgressHUD.showAdded(to: self.view, animated: true)
//            }
//        }
    }

    func showNews(_ pullToRefresh: Bool, loadMore: Bool) {
//        if loadMore {
//            activityIndicator.stopAnimating()
//        } else {
//            if pullToRefresh {
//                tableView.dg_stopLoading()
//            } else {
//                MBProgressHUD.hide(for: self.view, animated: true)
//            }
//        }
//        tableView.reloadData()
    }

    func showError(_ pullToRefresh: Bool, loadMore: Bool) {
//        if loadMore {
//            activityIndicator.stopAnimating()
//        } else {
//            if pullToRefresh {
//                tableView.dg_stopLoading()
//            } else {
//                MBProgressHUD.hide(for: self.view, animated: true)
//            }
//        }
        let alert = UIAlertController(title: "Alert", message: "Problem Fetching News", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
