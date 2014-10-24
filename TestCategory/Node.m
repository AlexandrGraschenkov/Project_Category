//
//  Node.m
//  TestCategory
//
//  Created by Alexander on 23.10.14.
//  Copyright (c) 2014 Alexander. All rights reserved.
//

#import "Node.h"

@interface Node ()
@property Node *parentNode;
@property Node *leftNode;
@property Node *rightNode;
@end

@implementation Node
- (id)initWithValue:(NSInteger)aValue
{
    self = [super init];
    if (self) {
        _value = aValue;
    }
    
    return self;
}

- (NSInteger)integerValue
{
    return _value;
}

- (void)addNode:(Node *)node
{
    if (self.value < node.value) {
        if (self.rightNode) {
            [self.rightNode addNode:node];
        } else {
            self.rightNode = node;
            node.parentNode = self;
        }
    } else {
        if (self.leftNode) {
            [self.leftNode addNode:node];
        } else {
            self.leftNode = node;
            node.parentNode = self;
        }
    }
}

- (NSInteger)count
{
    return 1 + self.leftNode.count + self.rightNode.count;
}

- (Node *)rootNode
{
    Node *result = self;
    while (result.parentNode) {
        result = result.parentNode;
    }
    return result;
}

@end
