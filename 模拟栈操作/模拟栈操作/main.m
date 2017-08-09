//
//  main.m
//  模拟栈操作
//
//  Created by apple on 2017/8/9.
//  Copyright © 2017年 apple. All rights reserved.
//


#import <Foundation/Foundation.h>

#import <stdio.h>
#import <stdbool.h>
#import <assert.h>
//保护全局变量
static int data[1024];//一个栈里面最多能保存1024个数据
static int count = 0;//记录栈顶的位置

#pragma mark - 检测栈满
bool full() {
    if (count>=1024) return 1;
    return 0;

}
#pragma mark - 检测栈空
bool empty() {
    if (count<=0) return 1;
    return 0;
}

#pragma mark - 数据入栈
void push(int x) {
    assert(!full());//防止数组越界
    data[count++] = x;
}
#pragma mark - 数据出栈
int pop() {
    assert(!empty());
    return data[--count];
}
#pragma mark - 查看栈顶元素
int top() {
    return data[count-1];
}




int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        for (int i = 1; i<=10; i++) {
            //入栈
            push(i);
        }
        while (!empty()) {
            //出栈
            printf("栈顶元素%d\n",top());
            pop();
        }
        printf(" ");

    }
    return 0;
}
