# NavBar
Sample App that reproduces a bug on the nav bar

The app reproduces a bug with the nav bar items.

When the UIKit button is tapped it pushes a default UIViewController (called UiKitViewController). 
When the SwiftUI button is tapped it pushes a UIHostingController (called SwiftUiViewController). 

Both controllers set up its navigation items on `viewDidLoad`. 
The issue is that on the SwiftUiViewController the UIBarButtonItem initialized with a custom view, UIBarButtonItem(customView:), disappears after a second.
