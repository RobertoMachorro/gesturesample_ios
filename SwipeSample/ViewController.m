//
//  ViewController.m
//  SwipeSample
//
//  Created by Roberto Machorro on 4/11/18.
//  Copyright © 2018 Unplugged Ideas, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionLeft action:@selector(swipeLeft:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionRight action:@selector(swipeRight:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionUp action:@selector(swipeUp:)];
	[self addSwipeWithDirection:UISwipeGestureRecognizerDirectionDown action:@selector(swipeDown:)];
}


- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

#pragma mark - Swipe Gestures

- (void)addSwipeWithDirection:(UISwipeGestureRecognizerDirection)direction action:(SEL)method {
	UISwipeGestureRecognizer *gestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:method];
	[gestureRecognizer setDirection:direction];
	[self.view addGestureRecognizer:gestureRecognizer];
}

- (IBAction)swipeLeft:(UISwipeGestureRecognizer*)sender {
	NSLog(@"Swipe Left: %@", sender);
}

- (IBAction)swipeRight:(UISwipeGestureRecognizer*)sender {
	NSLog(@"Swipe Right: %@", sender);
}

- (IBAction)swipeUp:(UISwipeGestureRecognizer*)sender {
	NSLog(@"Swipe Up: %@", sender);
}

- (IBAction)swipeDown:(UISwipeGestureRecognizer*)sender {
	NSLog(@"Swipe Down: %@", sender);
}

@end
