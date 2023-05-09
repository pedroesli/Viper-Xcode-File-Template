//___FILEHEADER___

import UIKit

// MARK: View
protocol ___VARIABLE_productName___ViewProtocol: AnyObject {
    var presenter: ___VARIABLE_productName___PresenterProtocol? {get set}
}

// MARK: Interactor
protocol ___VARIABLE_productName___InteractorProtocol: AnyObject {
    var presenter: ___VARIABLE_productName___PresenterProtocol? {get set}
}

// MARK: Presenter
protocol ___VARIABLE_productName___PresenterProtocol: AnyObject {
    var router: ___VARIABLE_productName___RouterProtocol? {get set}
    var interactor: ___VARIABLE_productName___InteractorProtocol? {get set}
    var view: ___VARIABLE_productName___ViewProtocol? {get set}
    
    // View -> Presenter
    // Interactor -> Presenter
}

// MARK: Router
protocol ___VARIABLE_productName___RouterProtocol: AnyObject {
    typealias EntryPoint = ___VARIABLE_productName___ViewProtocol & UIViewController
    var entry: EntryPoint? { get }
    
    static func start() -> ___VARIABLE_productName___RouterProtocol
}
