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
public enum NetworkManageAsset {
  public enum Assets {
  public static let accentColor = NetworkManageColors(name: "AccentColor")
    public static let background = NetworkManageImages(name: "Background")
    public static let backgroundDefault = NetworkManageColors(name: "BackgroundDefault")
    public static let backgroundCalendar = NetworkManageColors(name: "backgroundCalendar")
    public static let dateBackgroundLevel1 = NetworkManageColors(name: "dateBackgroundLevel1")
    public static let dateBackgroundLevel2 = NetworkManageColors(name: "dateBackgroundLevel2")
    public static let dateBackgroundLevel3 = NetworkManageColors(name: "dateBackgroundLevel3")
    public static let dateBackgroundLevel4 = NetworkManageColors(name: "dateBackgroundLevel4")
    public static let dateSelected = NetworkManageColors(name: "dateSelected")
    public static let dateToday = NetworkManageColors(name: "dateToday")
    public static let fontDefault = NetworkManageColors(name: "fontDefault")
    public static let fontDisabled = NetworkManageColors(name: "fontDisabled")
    public static let fontGray = NetworkManageColors(name: "fontGray")
    public static let fontWhite = NetworkManageColors(name: "fontWhite")
    public static let launchScreenColor = NetworkManageColors(name: "launchScreenColor")
    public static let launchLogo = NetworkManageImages(name: "LaunchLogo")
    public static let launchScreen = NetworkManageImages(name: "LaunchScreen")
    public static let logo = NetworkManageImages(name: "Logo")
    public static let book = NetworkManageImages(name: "book")
    public static let cabi = NetworkManageImages(name: "cabi")
    public static let calendar = NetworkManageImages(name: "calendar")
    public static let card = NetworkManageImages(name: "card")
    public static let chat = NetworkManageImages(name: "chat")
    public static let hamburger = NetworkManageImages(name: "hamburger")
    public static let home = NetworkManageImages(name: "home")
    public static let info = NetworkManageImages(name: "info")
    public static let logout = NetworkManageImages(name: "logout")
    public static let notification = NetworkManageImages(name: "notification")
    public static let selectedBurger = NetworkManageImages(name: "selectedBurger")
    public static let selectedCalendar = NetworkManageImages(name: "selectedCalendar")
    public static let selectedHome = NetworkManageImages(name: "selectedHome")
    public static let union = NetworkManageImages(name: "union")
    public static let user = NetworkManageImages(name: "user")
  }
  public enum PreviewAssets {
  }
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class NetworkManageColors {
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

public extension NetworkManageColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, visionOS 1.0, *)
  convenience init?(asset: NetworkManageColors) {
    let bundle = NetworkManageResources.bundle
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
  init(asset: NetworkManageColors) {
    let bundle = NetworkManageResources.bundle
    self.init(asset.name, bundle: bundle)
  }
}
#endif

public struct NetworkManageImages {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS) || os(visionOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = NetworkManageResources.bundle
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
  init(asset: NetworkManageImages) {
    let bundle = NetworkManageResources.bundle
    self.init(asset.name, bundle: bundle)
  }

  init(asset: NetworkManageImages, label: Text) {
    let bundle = NetworkManageResources.bundle
    self.init(asset.name, bundle: bundle, label: label)
  }

  init(decorative asset: NetworkManageImages) {
    let bundle = NetworkManageResources.bundle
    self.init(decorative: asset.name, bundle: bundle)
  }
}
#endif

// swiftlint:enable all
// swiftformat:enable all
