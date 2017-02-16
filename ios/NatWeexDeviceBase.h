//
//  NatWeexDeviceBase.h
//
//  Created by huangyake on 17/1/7.
//  Copyright © 2017 Nat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>


@protocol NatWeexDeviceBasePro <WXModuleProtocol>

- (void)info:(WXModuleCallback)callback;

@end

@interface NatWeexDeviceBase : NSObject<NatWeexDeviceBasePro>

@end
