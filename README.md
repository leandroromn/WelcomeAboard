<p align="center">
    <img src="repository-images/welcomeaboard-logo.png" width="520" alt="RKit" />
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

<br/><br/>

<p align="right">
<img src="repository-images/welcomeaboard-example.png" align="right"
     title="Example" width="300">
</p>

Welcome to **WelcomeAboard**, a quick library to show the main features of your application.

This repository was created to facilitate the creation of a welcome screen similar to native Apple applications.

## Installation
### CocoaPods
To install **WelcomeAboard** on your iOS project, add the following line to your `Podfile`:
```ruby
pod 'WelcomeAboard'
```
Then, run the command on the terminal:
```bash
$ pod install
```
Congratulations! **WelcomeAboard** has been successfully installed on your project. 😄

<br/><br/><br/>

## How to use
First, add `import WelcomeAboard` line on top of your ViewController's code to import the library.<br/>
Then, create the required models to fill the `WABaseView` and sub-components.

```swift
import WelcomeAboard // UIKit import is no longer required because WelcomeAboard import UIKit internally.

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let content = createWAContent()
        view = WABaseView(content: content)
    }

    private func createWAContent() -> WAContent.Base {
        let title = WAContent.Title(format: .oneline,
                                    text: "Welcome to Home")

        let items = [
            WAContent.Card(title: "Control Your Home",
                           resume: "Securely control and monitor your home using the Home app, Control Center, Siri and Apple Watch.",
                           icon: UIImage(systemName: "house.fill"),
                           iconTintColor: .orange),
            WAContent.Card(title: "Set It and Forget It",
                           resume: "Automate common behaviors, settings, and scenes so everything is ready and waiting for you.",
                           icon: UIImage(systemName: "clock.fill"),
                           iconTintColor: .orange),
            WAContent.Card(title: "Share Access",
                           resume: "Allow friends, family, and folks you trust to access your home, whenever and however you want.",
                           icon: UIImage(systemName: "person.crop.circle.fill.badge.checkmark"),
                           iconTintColor: .orange)
        ]

        let button = WAContent.Button(text: "Continue", backgroundColor: .orange)

        return WAContent.Base(backgroundColor: .white,
                              title: title,
                              cards: items,
                              button: button)
    }
}
```

> *Please, extract your strings to a separate file.* 😝

In this example, `WABaseView` was created inside `loadView` method, but this is not required. You can create the `WABaseView` whereaver you want.

## Content models

### WAContent.Base
A container for other models to build `WABaseView`.

Name | Type | Required
------------ | ------------- | -------------
*backgroundColor* | `UIColor`  | ✅
*title* | `WAContent.Title`  | ✅
*cards* | `[WAContent.Card]`  | ✅
*button* | `WAContent.Button`  | ✅

### WAContent.Title
The model responsible for the title view.

Name | Type | Required
------------ | ------------- | -------------
*format* | `WAContent.Title.Format` | ✅
*text* | `String` | ✅

### WAContent.Title.Format
The model responsible for the format of title view.
You can choose between `.oneline` to get same result of the example or select the `.multiline` option to specify the welcome text and title text.
- `.oneline`
- `.multiline`
    - `welcomeText: String`

Name | Type | Required
------------ | ------------- | -------------
*textAlignment* | `NSTextAlignment` | 🟨

### WAContent.Card
The model responsible for the `WACardView` view.
The property `iconTintColor` is not required. The default value is `.black`.

Name | Type | Required
------------ | ------------- | -------------
*title* | `String` | ✅
*titleFont* | `UIFont` | ✅
*resume* | `String` | ✅
*resumeFont* | `UIFont` | ✅
*icon* | `UIImage?` | ✅
*iconTintColor* | `UIColor?` | ❌ 

### WAContent.Button
The model responsible for the `WAPrimaryButton` button.
The property `action` is not required. Remember to use `weak self` to avoid retain cycles.

Name | Type | Required
------------ | ------------- | -------------
*text* | `String`  | ✅
*backgroundColor* | `UIColor`  | ✅
*action* | `(() -> Void)?`  | ❌ 
```swift
let button = WAContent.Button(text: "Continue", backgroundColor: .orange) { [weak self] in
    self?.dismiss(animated: true)
}
```

## Credits
WelcomeAboard was originally written by [Leandro Romano](https://www.linkedin.com/in/leandroromn/) with a simple goal of accelerating development with a welcome preview that become standard in Apple's native apps.

The Welcome view layout was created by [Apple](http://apple.com/).

## Contributions and support
Feel free to send suggestions or even a pull request. 

If you make changes with visual effects, remember to run/update the snapshot tests.

Have fun using **WelcomeAboard** ⛵️

<br><br><br><br><br><br><br>


## Getting Started



### Motivation 

After several problems in ensuring the alignment and baselines established in the project requirement. This tool was developed, together with the design/ux team, to facilitate and ensure that visual elements follow the established baselines.