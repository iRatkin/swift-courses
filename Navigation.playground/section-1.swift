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
    
    var controllers: [ViewController] = []
    var selectedViewCotnroller: ViewController
    
    
     init(contollers: [ViewController]) {
        self.controllers = contollers
        self.selectedViewCotnroller = contollers.first!
        super.init()
        self.canvas.addSubview(self.selectedViewCotnroller.canvas)
    }
    
    func selectViewContoller(index: Int) {
        selectedViewCotnroller.canvas.removeFromSuperview()
        selectedViewCotnroller = controllers[index]
        self.canvas.addSubview(selectedViewCotnroller.canvas)
    }
}


// TODO: - *SideControoler

class SideController: ViewController {
    var menuViewCotnroller: ViewController
    var centerViewController: ViewController?
    
    init(menuViewCotnroller: ViewController) {
        self.menuViewCotnroller = menuViewCotnroller
        super.init()
        self.canvas.addSubview(self.menuViewCotnroller.canvas)
    }
    
    func setCenterController(centerViewController: ViewController) {
        if self.centerViewController != nil {
            self.centerViewController!.canvas.removeFromSuperview() //?? посмотреть и исправить
        }
        self.centerViewController = centerViewController
        self.canvas.addSubview(centerViewController.canvas)
    }
}
