//
//  InputCollector.m
//  ContactList
//
//  Created by Noor Alhoussari on 2017-05-30.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"What would you like do next? (new) - Create a new contact. (list) - List all contacts. (quit) - Exit");
    }
    return self;
}

-() inputForPrompt: (NSString *)promtString {
    char input = '\0';
    fgets(&input, 255, stdin);
    NSString *stringIncoding = [NSString stringWithCString: &input encoding: NSUTF8StringEncoding];
    
    NSCharacterSet *resultCharacter = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *stringInput = [stringIncoding stringByTrimmingCharactersInSet:resultCharacter];
    return stringInput;
}

@end
