//
//  ViewController.swift
//  Multithreading_15 - Operation & OperationQueue & OperationBlock
//
//  Created by Дмитрий Гусев on 30.05.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        
//        print(Thread.current)
//
//        let closure1 = {
//            print("Start")
//            print(Thread.current)
//            print("Finish")
//        }
//
//        let queue = OperationQueue()
//        queue.addOperation(closure1)
        
//        print(Thread.current)
//
//        var result: String?
//        let concutOperation = BlockOperation {
//            result = "The Swift" + " " + "Developers"
//            print(Thread.current)
//        }
////        concutOperation.start()
////        print(result!)
//
//        let queue = OperationQueue()
//        queue.addOperation(concutOperation)

        
//        let queue1 = OperationQueue()
//        queue1.addOperation {
//            print(Thread.current)
//        }
        
        
        class MyThread: Thread {
            override func main() {
                print("test main thread")
                print(Thread.current)
            }
        }
        
        class OperationA: Operation {
            override func main() {
                print("test Operation")
                print(Thread.current)
            }
        }
        
//        let myThread = MyThread()
//        myThread.start()
        
        let myOperation = OperationA()
//        myOperation.start()
        
        let queue2 = OperationQueue()
        queue2.addOperation(myOperation)
        
        
    }


}

