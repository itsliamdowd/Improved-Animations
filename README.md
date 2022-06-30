# ImprovedAnimations

A package designed to make animations between different view controllers as simple as possible!

## 🖥️ Installation

# Supported Platforms

iOS is the only platform supported for now
This package has only been tested for storyboard - SwiftUI has not been tested

# Install Using Swift Package Manager (Recommended Method)

 - First open your project in Xcode and then for Xcode 12, navigate to File → Swift Packages → Add Package Dependency... or For Xcode 13, navigate to Files → Add Package
 - Paste the repository URL (https://github.com/SkiingIsFun123/Improved-Animations) and click the next button
 - For version, verify it's up to next major version
 - Click finish
 - You're all set, and thank you for using ImprovedAnimations!

## 🔨 Code Examples

# 📱 Slide Animation
```
import ImprovedAnimations
ImprovedAnimations.slideAnimation(view: view, direction: "right", time: 0.3, destination: "ViewControllerToPresent")
```

 - View: current view (don't change this value!)
 - Direction: direction the animation comes from (values include "left", "right", "top", "bottom")
 - Time: time the animation will take to complete (value is in a float form)
 - Destination: the view controller to be presented (pass the view controller's storyboard identifier for this value)
 
# 📱 Fade Animation
```
import ImprovedAnimations
ImprovedAnimations.fadeAnimation(view: view, time: 0.3, destination: "ViewControllerToPresent")
```

 - View: current view (don't change this value!)
 - Time: time the animation will take to complete (value is in a float form)
 - Destination: the view controller to be presented (pass the view controller's storyboard identifier for this value)
 
