//
//  ContactList.m
//  ContactList
//
//  Created by Noor Alhoussari on 2017-05-30.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

- (instancetype)init
{
    self = [super init];
    if (self) {
        _array = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact*) newContact{
    if (newContact !=nil){
        [[self array] addObject:newContact];
    }
}

-(void) printAllContacts{
    int index = 0;
    for (Contact *tempContact in [self array]){
        NSLog(@"%d: <%@>()", index, [tempContact name]);
        index++;
    }
}


@end
