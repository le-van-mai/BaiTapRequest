//
//  main.m
//  BaiTapRequest
//
//  Created by MacOS on 6/11/23.
//

#import <Foundation/Foundation.h>
#import "Request.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Request *r = [[Request alloc] init];
        [r GetDaDa];
        [r print];
    }
    return 0;
}
