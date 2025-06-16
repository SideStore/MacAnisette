#import <Foundation/Foundation.h>
#import "ALTAnisetteData.h"

@interface AOSUtilities : NSObject
+ (id)currentComputerName;
+ (id)machineUDID;
+ (id)machineSerialNumber;
+ (id)retrieveOTPHeadersForDSID:(id)arg1;
@end

@interface AKDevice : NSObject
+ (id)currentDevice;
- (id)localUserUUID;
- (id)locale;
- (id)serverFriendlyDescription;
- (id)uniqueDeviceIdentifier;
@end

@interface AOSKit : NSObject
+ (ALTAnisetteData *)getAnisetteData;
@end

