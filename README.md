# DDRavenLogger

[![CI Status](http://img.shields.io/travis/Andreas Kompanez/DDRavenLogger.svg?style=flat)](https://travis-ci.org/Andreas Kompanez/DDRavenLogger)
[![Version](https://img.shields.io/cocoapods/v/DDRavenLogger.svg?style=flat)](http://cocoapods.org/pods/DDRavenLogger)
[![License](https://img.shields.io/cocoapods/l/DDRavenLogger.svg?style=flat)](http://cocoapods.org/pods/DDRavenLogger)
[![Platform](https://img.shields.io/cocoapods/p/DDRavenLogger.svg?style=flat)](http://cocoapods.org/pods/DDRavenLogger)

CocoaLumberjack Custom Logger for Remote Logging to [Sentry](getsentry.com)



## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
A [Sentry](getsentry.com) account. `DDRavenLogger` is using the [raven-objc](https://github.com/getsentry/raven-objc) client for sending the messages to [Sentry](getsentry.com).

## Installation

DDRavenLogger is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "DDRavenLogger"
```

## Usage
```objc
// Init
RavenClient *ravenClient = [RavenClient sharedClient];

DDRavenLogger *ravenLogger = [[DDRavenLogger alloc] initWithRavenClient:ravenClient];
[DDLog addLogger:ravenLogger];

// Usage
DDLogRavenInfo("Info log message");
DDLogRavenWarning("Warning log message");
DDLogRavenError("Error log message");

```

## Author

Andreas Kompanez, [@kompozer](https://twitter.com/kompozer)

## License

DDRavenLogger is available under the MIT license. See the LICENSE file for more info.
