//
//  ViewController.swift
//  crashtest
//
//  Created by Keith Smiley on 1/13/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad()  {
        super.viewDidLoad()

        Task {
            await doAsyncTask()
            print("Async task completed")
        }
    }

    func doAsyncTask() async {
        do {
            try await Task.sleep(nanoseconds: 200000000)
        } catch {
            print("Error: \(error)")
        }
    }

}

