//
//  Contact.h
//  ContactList
//
//  Created by Noor Alhoussari on 2017-05-30.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString *name;
@property NSString *email;

- (instancetype)initWithName: (NSString *) name andEmail: (NSString *) email;


@end
