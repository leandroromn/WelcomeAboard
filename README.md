<p align="center">
    <img src="repository-images/welcome-aboard.png" width="600" alt="RKit" />
</p>

<p align="center">
    <img src="https://img.shields.io/badge/Swift-5.1-orange.svg" />
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/cocoapods-compatible-brightgreen.svg?style=flat" alt="CocoaPods" />
    </a>
     <img src="https://img.shields.io/badge/platforms-ios-brightgreen.svg?style=flat" alt="iOS" />
    <a href="https://twitter.com/leandroromn">
        <img src="https://img.shields.io/badge/twitter-@leandroromn-blue.svg?style=flat" alt="Twitter: @leandroromn" />
    </a>
</p>

Welcome to **WelcomeAboard**, a small pod to receive new users with a classic iOS style visual.

This repository was created to facilitate the creation of a welcome screen based on iOS views for native apps. Fully customizable and smaller.

## Installation
### CocoaPods
This project was built to use with CocoaPods in your application. To install **WelcomeAboard** on your iOS project, add the following line to your `Podfile`:
```ruby
pod 'WelcomeAboard'
```
Then, run the command on terminal:
```bash
$ pod install
```
Congratulations! **WelcomeAboard** has been successfully installed on your project. 😄

## How to use
First, add `import WelcomeAboard` line on top of your ViewController's code to import the pod.
Then, create the required models to fill up the WABaseView and sub-components.
```swift
import WelcomeAboard // UIKit import is no longer required because WelcomeAboard import UIKit internally.

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let content = createWAContent()
        view = WABaseView(content: content)
    }

    private func createWAContent() -> WAContent.Base {
        let title = WAContent.Title(format: .oneline, text: "Welcome to Home")

        let items = [
            WAContent.Card(title: "First Title",
                           resume: "First description",
                           icon: UIImage(systemName: "command")),
            WAContent.Card(title: "Second Title",
                           resume: "Second Description",
                           icon: UIImage(systemName: "option")),
            WAContent.Card(title: "Third Title",
                           resume: "Third Description",
                           icon: UIImage(systemName: "control"))
        ]

        let button = WAContent.Button(text: "Continue")

        return WAContent.Base(backgroundColor: .white,
                              title: title,
                              cards: items,
                              button: button)
    }
}
```
In this example, `WABaseView` was created inside `loadView` method, but this is not required. You can create the `WABaseView` whereaver you want.

### WAContent.Base
Name | Type
------------ | -------------
*backgroundColor* | `UIColor`
*title* | `WAContent.Title`
*cards* | `[WAContent.Card]`
*button* | `WAContent.Button`

### WAContent.Title
Name | Type
------------ | -------------
*format* | `WAContent.Title.Format`
*text* | `String`

### WAContent.Title.Format
- `.oneline`
- `.multiline`
    - `welcomeText: String`

Name | Type
------------ | -------------
*textAlignment* | `NSTextAlignment`

### WAContent.Card
Name | Type
------------ | -------------
*title* | `String`
*titleFont* | `UIFont`
*resume* | `String`
*resumeFont* | `UIFont`
*icon* | `UIImage?`

### WAContent.Button
Name | Type
------------ | -------------
*text* | `String`
*backgroundColor* | `UIColor`
*action* | `(() -> Void)?`