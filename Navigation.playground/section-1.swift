// Playground - noun: a place where people can play

import UIKit

class ViewController {
    var canvas = UIView()
}

class NavigationController: ViewController {
    var controllers: [ViewController] = []
    
    init(firstViewCotroller: ViewController) {
        super.init()
        self.canvas.addSubview(firstViewCotroller.canvas)
    }
    
    func push(viewController: ViewController) {
        self.canvas.addSubview(viewController.canvas)
        controllers.append(viewController)
    }
    
    func pop() {
        var contoller = controllers.removeLast()
        contoller.canvas.removeFromSuperview()
    }
}

// TODO: - TabBarContoller

class TabBarController: ViewController {
    var contollers: [ViewController]
    var selectedViewCotnroller: ViewController
    
    init(contollers: [ViewController]) {
        self.contollers = contollers
        self.selectedViewCotnroller = contollers.first!
        //...
    }
    
    func selectViewContoller(index: Int) {
        //...
    }
}


// TODO: - *SideControoler

class SideController: ViewController {
    var menuViewCotnroller: ViewController
    var centerViewController: ViewController?
    
    init(menuViewCotnroller: ViewController) {
        self.menuViewCotnroller = menuViewCotnroller
        //...
    }
    
    func setCenterController(centerViewController: ViewController) {
        //...
    }
}
