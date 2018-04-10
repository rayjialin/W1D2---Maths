//
//  AdditionQuestion.m
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        int random1 = arc4random_uniform(91) + 10;
        int random2 = arc4random_uniform(91) + 10;
        
        _question = [NSString stringWithFormat:@"%i + %i ?", random1, random2];
        _answer = random1 + random2;
    }
    return self;
}

@end
