//
//  main.m
//  Maths
//
//  Created by ruijia lin on 4/10/18.
//  Copyright © 2018 ruijia lin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSString *quit = @"quit";
        NSLog(@"Do The Math!");
        
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [QuestionManager new];
        QuestionFactory *questionFactory = [QuestionFactory new];
        
        while (gameOn) {
            
            Question *mathQuestion = [questionFactory generateRandomQuestion];
            [mathQuestion generateQuestion];
            [questionManager.questions addObject:mathQuestion];
            NSLog(@"%@", mathQuestion.question);
            
            
            NSString *inputAnswerString = [InputHandler converToNSString];
            
            // quit the program if user type in "quit"
            if ( [inputAnswerString isEqualToString:quit] ){
                NSLog(@"\nThank you for playing.");
                gameOn = NO;
                continue;
            }
            
            NSInteger inputAnswerInt = [InputHandler convertToNSInteger:inputAnswerString];
            
            if (inputAnswerInt == mathQuestion.answer) {
                NSLog(@"Right!");
                scoreKeeper.rightCounter ++;
            }else {
                NSLog(@"Wrong!");
                scoreKeeper.wrongCounter ++;
            }
            
            
            //test time interval
            NSLog(@"%@",[questionManager timeOutput]);
        }
        
        // Display the score
        [scoreKeeper displayScore];
    }
    return 0;
}
