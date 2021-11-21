//
//  Test.m
//  SimpleLocalizedTool
//
//  Created by 张超 on 15/12/22.
//  Copyright © 2015年 gerinn. All rights reserved.
//

#import "Test.h"

@implementation Test

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        
        NSString* a = NSLocalizedString(@"这是一个测试", nil);
        NSString* b = NSLocalizedString(@"第一条是普通本地化, 翻译写入Localizable.strings文件", nil);
        NSString* c = NSLocalizedString(@"第二条是带注释的语句", @"这里是这条本地化语句的注释");
        NSString* d = NSLocalizedStringFromTable(@"第三条是带表名的本地化语句，写在 XXX(表名).strings文件里", @"OtherFile",nil);
        NSString* e = NSLocalizedStringFromTable( @"最后一条测试书写规范，空格，特殊符号(\"{@#$)等等"  ,   @"OtherFile"  ,   nil);
        
        NSString* f = NSLocalizedString(@"这是一个追加测试", nil);
        NSString* g = NSLocalizedStringFromTable( @"最后一条追加测试书写规范，空格，特殊符号(\"{@#$)等等"  ,   @"OtherFile"  ,   nil);

        NSString* h = NSLocalizedString(@"这是一个又追加测试", nil);
        NSString* i = NSLocalizedStringFromTable( @"最后一再条追加测试书写规范，空格，特殊符号(\"{@#$)等等"  ,   @"OtherFile"  ,   nil);

        [NSString stringWithFormat:@"%@", NSLocalizedString(@"fghi", @"")];
        [NSString stringWithFormat:@"%@", NSLocalizedString(@"test 3")];

        [NSString stringWithFormat:@"%@", NSLocalizedString(@"abcde", @"")];
        [NSString stringWithFormat:@"%@", NSLocalizedString(@"tes 4")];

        [self handle:a];
        [self handle:b];
        [self handle:c];
        [self handle:d];
        [self handle:e];
        [self handle:f];
        [self handle:g];
        [self handle:h];
        [self handle:i];

    }
    return self;
}

- (void)handle:(NSString*)string
{
    
}

@end
