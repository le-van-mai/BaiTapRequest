//
//  Request.m
//  BaiTapRequest
//
//  Created by MacOS on 6/11/23.
//

#import "Request.h"

@implementation Request
-(instancetype)init{
    self = [super init];
    return self;
}
-(void)GetDaDa{
    NSString *dataURL = [NSString stringWithFormat:@"http://ip-api.com/json"];
    NSURL *URL = [NSURL URLWithString:dataURL];
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:URL];
    [request setHTTPMethod:@"GET"];
    NSError *error = nil;
    NSHTTPURLResponse *response = nil;
    NSData *Data = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    if([response statusCode]!=200){
        NSLog(@"Fail Data");
        return;
    }
    NSDictionary *DicData = [NSJSONSerialization JSONObjectWithData:Data options:nil error:&error];
    NSLog(@"%@", DicData);
    self.as = DicData[@"as"];
    self.city = DicData[@"city"];
    self.country = DicData[@"country"];
    self.countryCode = DicData[@"countryCode"];
    self.lat = [DicData[@"lat"]intValue];
    self.lon = [DicData[@"lon"]intValue];
    self.org = DicData[@"org"];
    self.query = DicData[@"query"];
    self.region = DicData[@"region"];
    self.regionName = DicData[@"regionName"];
}
-(void)print{
    NSLog(@"Data Location is. as: %@, city: %@, country: %@, countryCode: %@, lat: %i, lon: %i, org: %@, query: %@, region: %@, regionName: %@", self.as, self.city, self.country, self.countryCode, self.lat, self.lon, self.org, self.query,self.region, self.regionName);
}
@end
