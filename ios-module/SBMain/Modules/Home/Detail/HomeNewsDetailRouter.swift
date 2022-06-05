//
//  HomeNewsDetailRouter.swift
//  SBHome
//
//  Created by Ying Wang on 2022/2/17.
//

import Foundation
import UIKit

open class HomeNewsDetailRouter: HomeNewsDetailPresenterToRouterProtocol {

    // MARK: - Methods

    open class func createModule(forNews news: BaseModel) -> UIViewController {

        let viewController = HomeNewsDetailViewController(route: "/detail")
        let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 40.0, height: 40.0))
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true
        viewController.splashScreenView = activityIndicator

        let presenter: HomeNewsDetailViewToPresenterProtocol & HomeNewsDetailInteractorToPresenterProtocol = HomeNewsDetailPresenter()
        let interactor: HomeNewsDetailPresentorToInteractorProtocol = HomeNewsDetailInteractor()
        let router: HomeNewsDetailPresenterToRouterProtocol = HomeNewsDetailRouter()

        viewController.presenter = presenter
        presenter.view = viewController
        presenter.news = news
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter

        return viewController
    }

    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
