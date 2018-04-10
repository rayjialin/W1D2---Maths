//
//  InputHandler.h
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

//@property NSString *inputAnswerString;
//@property NSInteger inputAnswerInt;

+ (NSString *) converToNSString;

+ (NSInteger) convertToNSInteger:(NSString *)string;

@end
