//
//  DDRavenLogger.h
//  Pods
//
//  Created by Andreas Kompanez on 10/06/16.
//
//

#import <Foundation/Foundation.h>

#import <CocoaLumberjack/CocoaLumberjack.h>

@class RavenClient;

/// Custom log flag. Defined as (1 << 10)
extern const NSUInteger DDLogFlagRaven;

extern const NSUInteger DDLogLevelRaven;

#define DDLogRavenInfo(frmt, ...)    LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEF, (DDLogFlagRaven | DDLogFlagInfo),    0, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

#define DDLogRavenWarning(frmt, ...)    LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEF, (DDLogFlagRaven | DDLogFlagWarning),    0, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

#define DDLogRavenError(frmt, ...)    LOG_MAYBE(LOG_ASYNC_ENABLED, LOG_LEVEL_DEF, (DDLogFlagRaven | DDLogFlagError),    0, nil, __PRETTY_FUNCTION__, frmt, ##__VA_ARGS__)

NS_ASSUME_NONNULL_BEGIN

@interface DDRavenLogger : DDAbstractLogger

@property(nonatomic, readonly, nonnull) RavenClient *ravenClient;

- (instancetype)initWithRavenClient:(RavenClient *_Nonnull)client NS_DESIGNATED_INITIALIZER;

- (instancetype)init NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
