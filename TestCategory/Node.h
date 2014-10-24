//
//  Node.h
//  TestCategory
//
//  Created by Alexander on 23.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

@property (readonly) NSInteger value;
@property (readonly) NSInteger integerValue;
@property (readonly) NSInteger count;
@property (readonly) Node *rootNode;

- (id)initWithValue:(NSInteger)value;

- (void)addNode:(Node *)node;

@end
