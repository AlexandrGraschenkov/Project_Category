//
//  main.m
//  TestCategory
//
//  Created by Alexander on 23.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Node.h"
#import "NSArray+Ex.h"


@interface NSString (WordsCount)
@property (readonly) NSInteger wordsCount;
@end

@implementation NSString (WordsCount)
- (NSInteger)wordsCount
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    return words.count;
}
@end




@interface Node (HiddenMethods)
@property Node *parentNode;
@end

int main(int argc, char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", @"asdasd afsafsdf fasfsdf".wordsCount);
       
        
        Node *n1 = [[Node alloc] initWithValue:100];
        Node *n2 = [[Node alloc] initWithValue:1];
        Node *n3 = [[Node alloc] initWithValue:2];
        [n1 addNode:n2];
        [n1 addNode:n3];
        NSLog(@"%d", n3.parentNode.value);
        NSLog(@"%d", n1.count);
        
        
        
        NSInteger sum = [@[@1, [NSObject new], @"123", @3] sum];
        NSLog(@"%d", sum);
        NSMutableArray *mutArr = @[];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
