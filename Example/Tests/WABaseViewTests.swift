import Quick
import Nimble
import Nimble_Snapshots
import WelcomeAboard

class WABaseViewTests: QuickSpec {
    override func spec() {
        describe("#init") {
            let viewController = UIViewController()

            beforeEach {
                let window = UIWindow(frame: UIScreen.main.bounds)
                window.makeKeyAndVisible()
                window.rootViewController = viewController
            }

            it("created a valid title with oneline format for content") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")
                expect(title.text).to(equal("Welcome to App"))
                expect(title.format).to(equal(.oneline))
            }

            it("created a valid title with multiline format for content") {
                let title = WAContent.Title(format: .multiline(welcomeText: "Welcome to"), text: "My App")
                expect(title.text).to(equal("My App"))
                expect(title.format).to(equal(.multiline(welcomeText: "Welcome to")))
            }

            it("create a valid card model") {
                let card = WAContent.Card(title: "Card Title", resume: "Card Resume", icon: UIImage(systemName: "option"))
                expect(card.title).to(equal("Card Title"))
                expect(card.resume).to(equal("Card Resume"))
                expect(card.icon).toNot(beNil())
            }

            it("create a valid button model") {
                let button = WAContent.Button(text: "Continue", backgroundColor: .blue) {
                    print("Hello, test!")
                }
                expect(button.text).to(equal("Continue"))
                expect(button.backgroundColor).to(equal(.blue))
                expect(button.action).toNot(beNil())
            }

            it("creates a valid content model for views") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command")),
                    WAContent.Card(title: "Second Title",
                                   resume: "Second resume",
                                   icon: nil)
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                expect(content.title.text).to(equal("Welcome to App"))
                expect(content.title.format).to(equal(.oneline))
                expect(content.cards.count).to(equal(2))
                expect(content.cards[0].title).to(equal("First Title"))
                expect(content.cards[0].resume).to(equal("First resume"))
                expect(content.cards[0].icon).toNot(beNil())
                expect(content.cards[1].title).to(equal("Second Title"))
                expect(content.cards[1].resume).to(equal("Second resume"))
                expect(content.cards[1].icon).to(beNil())
                expect(content.button.text).to(equal("Continue"))
                expect(content.button.backgroundColor).to(equal(.lightGray))
                expect(content.button.action).to(beNil())
            }

            it("renders welcome view with default style") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command")),
                    WAContent.Card(title: "Second Title",
                                   resume: "Second resume",
                                   icon: UIImage(systemName: "option")),
                    WAContent.Card(title: "Third Title",
                                   resume: "Third resume",
                                   icon: UIImage(systemName: "control"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view with more than 3 cards") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command")),
                    WAContent.Card(title: "Second Title",
                                   resume: "Second resume",
                                   icon: UIImage(systemName: "option")),
                    WAContent.Card(title: "Third Title",
                                   resume: "Third resume",
                                   icon: UIImage(systemName: "control")),
                    WAContent.Card(title: "Fourth Title",
                                   resume: "Fourth resume",
                                   icon: UIImage(systemName: "gamecontroller")),
                    WAContent.Card(title: "Fifth Tile",
                                   resume: "Fifth resume",
                                   icon: UIImage(systemName: "archivebox")),
                    WAContent.Card(title: "Sixth Title",
                                   resume: "Sixth resume",
                                   icon: UIImage(systemName: "doc"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view cards with different fonts") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   titleFont: .systemFont(ofSize: 19, weight: .bold),
                                   resume: "First resume",
                                   resumeFont: .systemFont(ofSize: 15, weight: .medium),
                                   icon: UIImage(systemName: "command")),
                    WAContent.Card(title: "Second Title",
                                   titleFont: .systemFont(ofSize: 19, weight: .bold),
                                   resume: "Second resume",
                                   resumeFont: .systemFont(ofSize: 15, weight: .medium),
                                   icon: UIImage(systemName: "option")),
                    WAContent.Card(title: "Third Title",
                                   titleFont: .systemFont(ofSize: 19, weight: .bold),
                                   resume: "Third resume",
                                   resumeFont: .systemFont(ofSize: 15, weight: .medium),
                                   icon: UIImage(systemName: "control"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view with blue background color") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .blue,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view with blue continue button") {
                let title = WAContent.Title(format: .oneline, text: "Welcome to App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command"))
                ]

                let button = WAContent.Button(text: "Continue", backgroundColor: .blue)

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view with multiline title format") {
                let title = WAContent.Title(format: .multiline(welcomeText: "Welcome to"), text: "My App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }

            it("renders welcome view with multiline title and format and 6 cards") {
                let title = WAContent.Title(format: .multiline(welcomeText: "Welcome to"),
                                            text: "My App")

                let items = [
                    WAContent.Card(title: "First Title",
                                   resume: "First resume",
                                   icon: UIImage(systemName: "command")),
                    WAContent.Card(title: "Second Title",
                                   resume: "Second resume",
                                   icon: UIImage(systemName: "option")),
                    WAContent.Card(title: "Third Title",
                                   resume: "Third resume",
                                   icon: UIImage(systemName: "control")),
                    WAContent.Card(title: "Fourth Title",
                                   resume: "Fourth resume",
                                   icon: UIImage(systemName: "gamecontroller")),
                    WAContent.Card(title: "Fifth Tile",
                                   resume: "Fifth resume",
                                   icon: UIImage(systemName: "archivebox")),
                    WAContent.Card(title: "Sixth Title",
                                   resume: "Sixth resume",
                                   icon: UIImage(systemName: "doc"))
                ]

                let button = WAContent.Button(text: "Continue")

                let content = WAContent.Base(backgroundColor: .white,
                                             title: title,
                                             cards: items,
                                             button: button)

                viewController.view = WABaseView(content: content)

                expect(viewController.view).to(haveValidSnapshot())
            }
        }
    }
}
