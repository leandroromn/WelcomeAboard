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

<br/>

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

<br/>

Congratulations! 🥳<br/>
**WelcomeAboard** has been successfully installed on your project. 😄

<br/>

## How to use
First, add `import WelcomeAboard` line on top of your ViewController's code to import the library.<br/>
Then, create the required models to fill the `WABaseView` and sub-components.

```swift
import WelcomeAboard

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()
        let content = createWAContent()
        view = WABaseView(content: content)
    }

    private func createWAContent() -> WAContent.Base {
        let color = UIColor(red:0.90, green:0.22, blue:0.31, alpha:1.00)
        let title = WAContent.Title(format: .multiline(welcomeText: "Welcome to"),
                                    text: "WelcomeAboard")

        let items = [
            WAContent.Card(title: "Receive New Users",
                           resume: "Tell us about your application, explain the main features and what else you want to tell!",
                           icon: UIImage(systemName: "person.2.square.stack.fill"),
                           iconTintColor: color),
            WAContent.Card(title: "Highlight Features",
                           resume: "I'm sure your application contains incredible features. Use this space to give more visibility.",
                           icon: UIImage(systemName: "text.bubble.fill"),
                           iconTintColor: color),
            WAContent.Card(title: "Notify Bugfixes",
                           resume: "Nobody likes to receive a bug report. Informing that annoying problem has been fixed is much more nicer.",
                           icon: UIImage(systemName: "hammer.fill"),
                           iconTintColor: color)
        ]

        let button = WAContent.Button(text: "Continue", backgroundColor: color) { [weak self] in
            self?.dismiss(animated: true)
        }

        return WAContent.Base(backgroundColor: .white,
                              title: title,
                              cards: items,
                              button: button)
    }
}
```

> *Please, extract your strings to a separate file.* 😄

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