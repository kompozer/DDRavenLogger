//
//  DDRavenLogger.m
//  Pods
//
//  Created by Andreas Kompanez on 10/06/16.
//
//

#import "DDRavenLogger.h"

#import "RavenClient.h"

const NSUInteger DDLogFlagRaven = (1 << 10);

const NSUInteger DDLogLevelRaven = (DDLogFlagRaven);

@interface DDRavenLogger ()

@property(nonatomic, readwrite) RavenClient *ravenClient;

@end

@implementation DDRavenLogger

- (instancetype)initWithRavenClient:(RavenClient *)client {
    self = [super init];
    if (self) {
        NSParameterAssert(client);
        _ravenClient = client;
    }
    return self;
}

#pragma mark - DDLogger

- (void)logMessage:(DDLogMessage *)logMessage {
    
    if ((logMessage.flag & DDLogFlagRaven) != DDLogFlagRaven) {
        return;
    }
    
    RavenLogLevel ravenLogLevel = kRavenLogLevelDebugInfo;
    if ((logMessage.flag & DDLogFlagInfo) == DDLogFlagInfo) {
        ravenLogLevel = kRavenLogLevelDebugInfo;
    } else if ((logMessage.flag & DDLogFlagWarning) == DDLogFlagWarning) {
        ravenLogLevel = kRavenLogLevelDebugWarning;
    } else if ((logMessage.flag & DDLogFlagError) == DDLogFlagError) {
        ravenLogLevel = kRavenLogLevelDebugError;
    }
    
    NSString *message = logMessage.message;
    if (message.length == 0) {
        message = @"";
    }
    if (self->_logFormatter) {
        message = [self->_logFormatter formatLogMessage:logMessage];
    }

    [self.ravenClient captureMessage:message
                               level:ravenLogLevel
                     additionalExtra:nil
                      additionalTags:nil
                              method:logMessage.function.UTF8String
                                file:logMessage.file.UTF8String
                                line:(NSInteger)logMessage.line
                             sendNow:NO];
}

@end
