//
//  Request.h
//  BaiTapRequest
//
//  Created by MacOS on 6/11/23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Request : NSObject{
    
}
@property NSString *as;
@property NSString *city;
@property NSString *country;
@property NSString *countryCode;
@property int lat;
@property int lon;
@property NSString *org;
@property NSString *query;
@property NSString *region;
@property NSString *regionName;
-(instancetype)init;
-(void)GetDaDa;
-(void)print;
@end

NS_ASSUME_NONNULL_END
