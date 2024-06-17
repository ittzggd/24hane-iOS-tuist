// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif
#if canImport(SwiftUI)
  import SwiftUI
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum CalendarTestAsset {
  public enum Assets {
  public static let accentColor = CalendarTestColors(name: "AccentColor")
    public static let background = CalendarTestImages(name: "Background")
    public static let backgroundDefault = CalendarTestColors(name: "BackgroundDefault")
    public static let backgroundCalendar = CalendarTestColors(name: "backgroundCalendar")
    public static let dateBackgroundLevel1 = CalendarTestColors(name: "dateBackgroundLevel1")
    public static let dateBackgroundLevel2 = CalendarTestColors(name: "dateBackgroundLevel2")
    public static let dateBackgroundLevel3 = CalendarTestColors(name: "dateBackgroundLevel3")
    public static let dateBackgroundLevel4 = CalendarTestColors(name: "dateBackgroundLevel4")
    public static let dateSelected = CalendarTestColors(name: "dateSelected")
    public static let dateToday = CalendarTestColors(name: "dateToday")
    public static let fontDefault = CalendarTestColors(name: "fontDefault")
    public static let fontDisabled = CalendarTestColors(name: "fontDisabled")
    public static let fontGray = CalendarTestColors(name: "fontGray")
    public static let fontWhite = CalendarTestColors(name: "fontWhite")
    public static let launchScreenColor = CalendarTestColors(name: "launchScreenColor")
    public static let launchLogo = CalendarTestImages(name: "LaunchLogo")
    public static let launchScreen = CalendarTestImages(name: "LaunchScreen")
    public static let logo = CalendarTestImages(name: "Logo")
    public static let book = CalendarTestImages(name: "book")
    public static let cabi = CalendarTestImages(name: "cabi")
    public static let calendar = CalendarTestImages(name: "calendar")
    public static let card = CalendarTestImages(name: "card")
    public static let chat = CalendarTestImages(name: "chat")
    public static let hamburger = CalendarTestImages(name: "hamburger")
    public static let home = CalendarTestImages(name: "home")
    public static let info = CalendarTestImages(name: "info")
    public static let logout = CalendarTestImages(name: "logout")
    public static let notification = CalendarTestImages(name: "notification")
    public static let selectedBurger = CalendarTestImages(name: "selectedBurger")
    public static let selectedCalendar = CalendarTestImages(name: "selectedCalendar")
    public static let selectedHome = CalendarTestImages(name: "selectedHome")
    public static let union = CalendarTestImages(name: "union")
    public static let user = CalendarTestImages(name: "user")
  }
  public enum PreviewAssets {
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class CalendarTestColors {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  public private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  #if canImport(SwiftUI)
  private var _swiftUIColor: Any? = nil
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public private(set) var swiftUIColor: SwiftUI.Color {
    get {
      if self._swiftUIColor == nil {
        self._swiftUIColor = SwiftUI.Color(asset: self)
      }

      return self._swiftUIColor as! SwiftUI.Color
    }
    set {
      self._swiftUIColor = newValue
    }
  }
  #endif

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension CalendarTestColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  convenience init?(asset: CalendarTestColors) {
    let bundle = CalendarTestResources.bundle
    #if os(iOS) || os(tvOS) || os(visionOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Color {
  init(asset: CalendarTestColors) {
    let bundle = CalendarTestResources.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct CalendarTestImages {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = CalendarTestResources.bundle
    #if os(iOS) || os(tvOS) || os(visionOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }

  #if canImport(SwiftUI)
  @available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
  public var swiftUIImage: SwiftUI.Image {
    SwiftUI.Image(asset: self)
  }
  #endif
}

#if canImport(SwiftUI)
@available(iOS 13.0, tvOS 13.0, watchOS 6.0, macOS 10.15, visionOS 1.0, *)
public extension SwiftUI.Image {
  init(asset: CalendarTestImages) {
    let bundle = CalendarTestResources.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: CalendarTestImages, label: Text) {
    let bundle = CalendarTestResources.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: CalendarTestImages) {
    let bundle = CalendarTestResources.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:enable all
// swiftformat:enable all
