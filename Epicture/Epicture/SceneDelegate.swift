//
//  SceneDelegate.swift
//  Epicture
//
//  Created by Paul Erny on 29/09/2020.
//  Copyright © 2020 Paul Erny. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
        if let url = URLContexts.first?.url {
            // get the url containing arguments and parses them
            print(url)
            let urlString = url.absoluteString
            let arr = urlString.components(separatedBy:"&")
            var data = [String:Any]()
            for row in arr {
                let pairs = row.components(separatedBy:"=")
                data[pairs[0]] = pairs[1]
            }
            let access_token = data["epicture://#access_token"]
            let refresh_token = data["refresh_token"]
            print("access token : \(access_token ?? "salut")")
            print("refresh_token : \(refresh_token ?? "salut")")

            // init a new view
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let tabbar = (storyboard.instantiateViewController(withIdentifier: "tabbar") as? MyTabBarController) {
                tabbar.modalPresentationStyle = .fullScreen // needed since iOS 13 to have the view in full screen
                let rootViewController = self.window!.rootViewController
            
                // init variables in MyTabBarController class
                tabbar.accessToken = access_token as! String
                tabbar.refreshToken = refresh_token as! String
                tabbar.selectedIndex = 1 // present home gave first

                // bring vue to foreground
                rootViewController?.present(tabbar, animated: true, completion: nil)
            }
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

