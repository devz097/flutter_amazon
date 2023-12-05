//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<amazon_payfort/AmazonPayfortPlugin.h>)
#import <amazon_payfort/AmazonPayfortPlugin.h>
#else
@import amazon_payfort;
#endif

#if __has_include(<network_info_plus/FPPNetworkInfoPlusPlugin.h>)
#import <network_info_plus/FPPNetworkInfoPlusPlugin.h>
#else
@import network_info_plus;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AmazonPayfortPlugin registerWithRegistrar:[registry registrarForPlugin:@"AmazonPayfortPlugin"]];
  [FPPNetworkInfoPlusPlugin registerWithRegistrar:[registry registrarForPlugin:@"FPPNetworkInfoPlusPlugin"]];
}

@end
