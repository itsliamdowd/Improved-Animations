/**
 *  Improved Animations
 *
 *  Copyright (c) 2022 Liam Dowd. Licensed under the MIT license, as follows:
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 */

#if canImport(UIKit)

import UIKit

#endif

public struct ImprovedAnimations {
    public static func slideAnimation(view: UIView, direction: String, time: Float, destination: String) {
        let transition = CATransition()
        transition.duration = CFTimeInterval(time)
        transition.type = CATransitionType.push
        if direction == "left" {
            transition.subtype = CATransitionSubtype.fromLeft
        }
        else if direction == "right" {
            transition.subtype = CATransitionSubtype.fromRight
        }
        else if direction == "top" {
            transition.subtype = CATransitionSubtype.fromTop
        }
        else if direction == "bottom" {
            transition.subtype = CATransitionSubtype.fromBottom
        }
        else {
            transition.subtype = CATransitionSubtype.fromRight
        }
        transition.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let presentedVC = storyboard.instantiateViewController(withIdentifier: destination)
        let presentViewController = UIApplication.shared.keyWindow?.rootViewController
        presentViewController!.present(destination, animated: false, completion: nil)
    }
}
