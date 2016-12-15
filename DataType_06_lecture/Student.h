//
//  Student.h
//  DataType_06_lecture
//
//  Created by Slava on 15.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum {          // деректива, которая помогает создать новый тип данных (typedef enum)
    GenderMale,         // начинается с 0, то есть мы присваем GenderMale = 0, и так по очереди. Можно присвоить GenderMale = 5
    GenderFemale
} Gender;

@interface Student : NSObject

@property (strong, nonatomic)NSString *name;
@property (assign, nonatomic)Gender sex;


// пример
// typedef NSInteger Taburetka;
// Taburetka a = 10; (не NSIn teger a = 10;)
@end
