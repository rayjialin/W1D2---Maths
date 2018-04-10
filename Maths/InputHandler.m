//
//  InputHandler.m
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *) converToNSString{
    char input[255];
    fgets(input, 255, stdin);
     return [[NSString stringWithCString:input encoding: NSUTF8StringEncoding] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"\n"]];
}

+ (NSInteger) convertToNSInteger:(NSString *)string{
    return [string integerValue];
}

@end
