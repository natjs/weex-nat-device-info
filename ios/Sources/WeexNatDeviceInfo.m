//
//  WeexNatDeviceInfo.m
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import "WeexNatDeviceInfo.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatDeviceInfo/NatDeviceInfo.h>

@implementation WeexNatDeviceInfo
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/device/info, WeexNatDeviceInfo)
WX_EXPORT_METHOD(@selector(info:))

- (void)info:(WXModuleCallback)callback{
    [[NatDeviceInfo singletonManger] info:^(id error, id result) {
        if (callback) {
            if (error) {
                callback(error);
            } else {
                callback(result);
            }
        }
    }];
}

@end
