//___FILEHEADER___

import UIKit

class ___VARIABLE_productName___Router: ___VARIABLE_productName___RouterProtocol {
    
    var entry: EntryPoint?
    
    static func start() -> ___VARIABLE_productName___RouterProtocol {
        let router = ___VARIABLE_productName___Router()
        
        // Assigning VIP
        let view: ___VARIABLE_productName___ViewProtocol = ___VARIABLE_productName___ViewController()
        let presenter: ___VARIABLE_productName___PresenterProtocol = ___VARIABLE_productName___Presenter()
        let interactor: ___VARIABLE_productName___InteractorProtocol = ___VARIABLE_productName___Interactor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
