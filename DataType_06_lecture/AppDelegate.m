//
//  AppDelegate.m
//  DataType_06_lecture
//
//  Created by Slava on 15.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    id empty = @"=======================";
    NSLog(@"%@ПРИМИТИВНЫЕ ТИПЫ%@", empty, empty);

    BOOL boolVarYesNo = YES;// 1bit (1 or 0)
    BOOL boolVarTrueFalse = false;
    
    NSInteger intVar = 10;
    NSUInteger uIntVar = 100000000; // безразмерный
    
    CGFloat floatVar  = 1.5f;
    double doubleVar = 23.2f;
    
    
    NSLog(@"boolVarYesNo = %hhd", boolVarYesNo);
    NSLog(@"boolVarTrueFalse = %hhd", boolVarTrueFalse);
    NSLog(@"intVar = %d", intVar);
    NSLog(@"uIntVar = %d", uIntVar);
    NSLog(@"floatVar = %.2f", floatVar);
    NSLog(@"doubleVar = %.2f", doubleVar);
    
    
    NSLog(@"%@SIZEOF%@", empty, empty);
    
    // ухнаем размеры наших велечин с помощью sizeof
    NSLog(@"boolVarYesNo = %ld", sizeof(boolVarYesNo));
    NSLog(@"boolVarTrueFalse = %ld", sizeof(boolVarTrueFalse));
    NSLog(@"intVar = %ld", sizeof(intVar));
    NSLog(@"uIntVar = %ld", sizeof(uIntVar));
    NSLog(@"floatVar = %ld", sizeof(floatVar));
    NSLog(@"doubleVar = %ld", sizeof(doubleVar)) ;
    
    
    NSLog(@"%@", empty);
    
    Student *studentA = [[Student alloc]init];
    studentA.name = @"Alex";
    Student *studentB = studentA;         // указатель объекта studentB на studentA
    NSLog(@"имя студента А = %@", studentA.name);
    studentB.name = @"Not Alex";
    NSLog(@"имя студента B = %@", studentA.name);
    NSLog(@"имя студента B = %@", studentB.name);
    
    
    NSLog(@"%@", empty);

    NSInteger a = 10;
    NSLog(@"a = %d", a);
    NSInteger b = a;
    b = 22;
    NSLog(@"a = %d, b = %d ", a, b);
    NSInteger *c = &a;  // указатель с указывает на а
    *c = 8;
    // NSLog(@"c = %d", *c);
    NSLog(@"a = %d, b = %d", a, b);     // поменялась только "a"
    
    
    NSLog(@"%@", empty);
    
    Student *student = [[Student alloc]init];
    student.sex = GenderMale;
    NSLog(@"пол студента = %u", student.sex);
    
    
    NSLog(@"%@СТРУКТУРЫ%@", empty, empty);

    // структуры
    CGPoint point;
    point.x = 4.4f;
    point.y = 3;
//    point = CGPointMake(<#CGFloat x#>, <#CGFloat y#>);
    
    CGSize size;
    size.width = 10;
    size.height = 222;
//    size = CGSizeMake(<#CGFloat width#>, <#CGFloat height#>);
    
    CGRect rect;            //  квадрат
    rect.origin.x = 2;
    rect.origin.y = 2;
    rect.size.height = 2;
    rect.size.width = 2;
//    rect.origin = point;
//    rect.size = size;
//    или так
//    rect = CGRectMake(<#CGFloat x#>, <#CGFloat y#>, <#CGFloat width#>, <#CGFloat height#>);
    
    
    NSLog(@"%@ВЫВОД ПРИМИТИВНЫХ ТИПОВ ИЗ МАССИВА%@", empty, empty);

    BOOL boolVarYesNoObj = YES;
    BOOL boolVarTrueFalseObj = false;
    NSInteger intVarObj = 10;
    NSUInteger uIntVarObj = 100000000;
    CGFloat floatVarObj  = 1.5f;
    double doubleVarObj = 23.2f;
    
    // используем оболочкy
    NSNumber *boolVarYesNoArray = [NSNumber numberWithBool:boolVarYesNoObj];
    NSNumber *boolVarTrueFalseArray = [NSNumber numberWithBool:boolVarTrueFalseObj];
    NSNumber *intVarArray = [NSNumber numberWithInteger:intVarObj];
    NSNumber *uIntVarArray = [NSNumber numberWithInteger:uIntVarObj];
    NSNumber *floatVarArray = [NSNumber numberWithFloat:floatVarObj];
    NSNumber *doubleVarArray = [NSNumber numberWithDouble:doubleVarObj];
    
    NSArray *primitiveArray = @[boolVarYesNoArray, boolVarTrueFalseArray, intVarArray, uIntVarArray, uIntVarArray, floatVarArray, doubleVarArray];
    
    NSLog(@"boolVarYesNo = %hhd", [[primitiveArray objectAtIndex:0] boolValue]);
    NSLog(@"boolVarTrueFalse = %hhd", [[primitiveArray objectAtIndex:1] boolValue]);
    NSLog(@"intVar = %d", [[primitiveArray objectAtIndex:2] integerValue]);
    NSLog(@"uIntVar = %d",[[primitiveArray objectAtIndex:3] unsignedIntegerValue]);
    NSLog(@"floatVar = %.2f", [[primitiveArray objectAtIndex:4] floatValue]);
    NSLog(@"doubleVar = %.2f", [[primitiveArray objectAtIndex:5] doubleValue]);
    
    
    NSLog(@"%@ВЫВОД СТРУКТУРЫ ИЗ МАССИВА%@", empty, empty);

    CGPoint point1 = CGPointMake(2, 3);
    CGPoint point2 = CGPointMake(3, 3);
    CGPoint point3 = CGPointMake(4, 2);
    CGPoint point4 = CGPointMake(5, 1);
    CGPoint point5 = CGPointMake(7, 8);
    NSArray *structureArray = [NSArray arrayWithObjects:
                               [NSValue valueWithCGPoint:point1],
                               [NSValue valueWithCGPoint:point2],
                               [NSValue valueWithCGPoint:point3],
                               [NSValue valueWithCGPoint:point4],
                               [NSValue valueWithCGPoint:point5],
                               nil
                               ];
    for (NSValue *value in structureArray) {
        CGPoint p = [value CGPointValue];
        NSLog(@"точка = %@", NSStringFromCGPoint(p));
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
