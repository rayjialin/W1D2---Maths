//
//  QuestionFactory.h
//  Maths
//
//  Created by ruijia lin on 4/11/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

-(Question *)generateRandomQuestion;
@end