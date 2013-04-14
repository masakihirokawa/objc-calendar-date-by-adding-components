//
//  ViewController.m
//  CalendarDateByAddingComponentsSample
//
//  Created by Dolice on 2013/04/14.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self main];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)main
{
  //現在の日時を取得する
  NSDate *currentDate = [NSDate date];
  NSLog(@"BaseDate: %@", currentDate);
  
  //30日前のオブジェクトを取得する
  NSDateComponents *components = [[NSDateComponents alloc] init];
  [components setDay: -30];
  
  //グレゴリオ暦のカレンダーを取得する
  NSCalendar *calendar;
  calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
  
  //オブジェクトを取得する
  NSDate *date;
  date = [calendar dateByAddingComponents:components
                                   toDate:currentDate
                                  options:0];
  
  NSLog(@"Before 30days: %@", date);
}

@end
