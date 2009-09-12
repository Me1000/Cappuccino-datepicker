/*
 * AppController.j
 * Date Picker
 *
 * Created by You on July 6, 2009.
 * Copyright 2009, RCL Concepts All rights reserved.
 * http://www.rclconcepts.com/
 * http://www.timetableapp.com/
 */

@import <Foundation/CPObject.j>
@import "DatePicker.j"


@implementation AppController : CPObject
{
	CPWindow theWindow;
	DatePicker theDatePicker;
	
	int blah @accessors;
	
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
    contentView = [theWindow contentView];
    
    theDatePicker = [[A alloc] initWithFrame:CGRectMake(100,100,100,30)];
    [theDatePicker displayPreset:1];
    [theDatePicker setDelegate:self];

    
    [contentView addSubview:theDatePicker];

    var button = [[CPButton alloc] initWithFrame:CGRectMake(230, 103, 200, 24)];
	[button setTitle:@"the Date Value"];
	[button setAction:@selector(datePickerValue:)];
	[button setTarget:self];
	[contentView addSubview:button];
	
	 theDatePicker2 = [[B alloc] initWithFrame:CGRectMake(100,150,100,30)];
    [theDatePicker2 displayPreset:2];
    [contentView addSubview:theDatePicker2];

    var button2 = [[CPButton alloc] initWithFrame:CGRectMake(230, 153, 200, 24)];
	[button2 setTitle:@"the Date Value"];
	[button2 setAction:@selector(datePicker2Value:)];
	[button2 setTarget:self];
	[contentView addSubview:button2];

	[theWindow orderFront:self];	
	[CPMenu setMenuBarVisible:YES];
	
//	alert ([theDatePicker nextValidKeyView] === theDatePicker2)
}

-(void)datePickerValue:(id)sender
{
	//[theDatePicker setDate:[CPDate dateWithTimeIntervalSinceNow:9000000]];
	console.log([theDatePicker date]);
}

-(void)datePicker2Value:(id)sender
{
	console.log([theDatePicker2 date]);
}


-(void)datePickerDidChange:(id)sender
{
	/*if([sender object] === theDatePicker){
		[theDatePicker2 setMinDate: [theDatePicker date]];
	}*/
}

@end


@implementation A : DatePicker
{	
}
- (CPString)description
{
	return @"the 1st one";
}
@end

@implementation B : DatePicker
{	
}
- (CPString)description
{
	return @"the 2nd one";
}
@end