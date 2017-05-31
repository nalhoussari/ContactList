//
//  Contact.m
//  ContactList
//
//  Created by Noor Alhoussari on 2017-05-30.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "Contact.h"

@implementation Contact

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email
{
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}



@end
