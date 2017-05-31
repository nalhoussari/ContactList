//
//  main.m
//  ContactList
//
//  Created by Noor Alhoussari on 2017-05-30.
//  Copyright © 2017 Noor Alhoussari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL on = YES;
        
        ContactList *contactList = [[ContactList alloc] init];
        
        while (on == YES){
            InputCollector *input = [[InputCollector alloc] init];
            NSString *usernameInput = [input inputForPrompt:@"Enter your username"];
        
            if ([usernameInput isEqualToString:@"new"]){
            
                NSLog(@"Insert the new contact's name: ");
                NSString *newName = [input inputForPrompt:@"Enter name"];
            
                NSLog(@"Insert the new contact's e-mail: ");
                NSString *newEmail = [input inputForPrompt:@"Enter e-mail"];
                
                Contact *newContact = [[Contact alloc ] initWithName: newName andEmail: newEmail];
                [contactList addContact:newContact];
                
            } else if ([usernameInput isEqualToString:@"list"]) {
                [contactList printAllContacts];
                
            } else if ([usernameInput isEqualToString:@"quit"]) {
                break;
        }
    }
    return 0;
}
