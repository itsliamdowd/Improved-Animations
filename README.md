# ImprovedAnimations

A package designed to make animations between different view controllers as simple as possible.

Slide Animation
```
import ImprovedAnimations
ImprovedAnimations.slideAnimation(view: view, direction: "right", time: 0.3, destination: "ViewControllerToPresent")
```

 - View: current view (don't change this value!)
 - Direction: direction the animation comes from (values include "left", "right", "top", "bottom")
 - Time: time the animation will take to complete (value is in a float form)
 - Destination: the view controller to be presented (pass the view controller's storyboard identifier for this value)
 
Fade Animation
```
import ImprovedAnimations
ImprovedAnimations.fadeAnimation(view: view, time: 0.3, destination: "ViewControllerToPresent")
```

 - View: current view (don't change this value!)
 - Time: time the animation will take to complete (value is in a float form)
 - Destination: the view controller to be presented (pass the view controller's storyboard identifier for this value)
 
