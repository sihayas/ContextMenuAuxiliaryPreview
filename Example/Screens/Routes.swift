//
//  Routes.swift
//  VisualEffectBlurViewExample
//
//  Created by Dominic Go on 10/7/23.
//

import UIKit

enum Route: CaseIterable {

  case auxPreviewTest01;

  var viewController: UIViewController {
    switch self {
      case .auxPreviewTest01:
        return AuxPreviewTest01ViewController();
    };
  };
};

let RouteManagerShared = RouteManager.sharedInstance;

class RouteManager {
  static let sharedInstance = RouteManager();
  
  weak var window: UIWindow?;
  
  var routes: [Route] = [
    .auxPreviewTest01,
  ];
  
  var routeCounter = 0;
  
  var currentRouteIndex: Int {
    self.routeCounter % self.routes.count;
  };
  
  var currentRoute: Route {
    self.routes[self.currentRouteIndex];
  };
  
  func applyCurrentRoute(){
    guard let window = self.window else { return };
  
    let nextVC = self.currentRoute.viewController;
    window.rootViewController = nextVC;
  };
  
  func nextRoute(){
    self.routeCounter += 1;
    self.applyCurrentRoute();
  };
};
