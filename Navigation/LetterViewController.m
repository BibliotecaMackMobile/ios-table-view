//
//  LetterViewController.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetterViewController.h"


@interface LetterViewController ()

@end

@implementation LetterViewController
@synthesize synthesizer;
@synthesize utterance;
@synthesize view1;
static int vari = 0;
static char ref;
static char ref2;

- (void)viewDidLoad
{
	[super viewDidLoad];
    synthesizer = [AVSpeechSynthesizer new];
    self.view.backgroundColor = [UIColor whiteColor];
    
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    ref2 = ref;
    ref = let.letter;
    
    self.title = [NSString stringWithFormat:@"%c", let.letter ];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *prev = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previus:)];
    self.navigationItem.leftBarButtonItem=prev;

    UITapGestureRecognizer *tgr = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self action:@selector(handleImageTap:)];
    tgr.delegate = self;
    [self.view addGestureRecognizer:tgr];
    
    UIButton* english = [UIButton buttonWithType:UIButtonTypeSystem];
    [english addTarget:self action:@selector(soundEnglish:) forControlEvents:UIControlEventTouchUpInside];
    [english setTitle:@"English" forState:UIControlStateNormal];
    [english sizeToFit];
    english.center = CGPointMake(270, 540);
    [self.view addSubview:english];
    
    UILabel* text = [UILabel new];
    [text setText:let.word ];
    [text sizeToFit];
    text.center = CGPointMake(160, 460);
    [self.view addSubview:text];
    
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(30, 120, 260, 310)];
    [_imageView setImage:[let img]];
    [[self view] addSubview:_imageView];
}

-(IBAction)handleImageTap:(id)sender{
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    
    utterance = [AVSpeechUtterance speechUtteranceWithString:let.word];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"ja-JP"];
    [synthesizer speakUtterance:utterance];
}

-(void)next:(id)sender {
    
    if (!view1 )
        view1 = [[LetterViewController alloc]initWithNibName:nil bundle:NULL];
    
    [self.navigationController pushViewController:view1 animated:YES];
        if (ref == 'Z')
            vari = 0;
        else
            vari++;
}

-(void)previus:(id)sender {
    view1 = [[LetterViewController alloc]
             initWithNibName:nil
             bundle:NULL];
    
    if (!vari)
        return;
    else
        vari--;
    
    [self.navigationController pushViewController:view1 animated:YES];
}

-(void)sound:(id)sender{
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    
    utterance = [AVSpeechUtterance speechUtteranceWithString:let.word];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"ja-JP"];
    [synthesizer speakUtterance:utterance];
    
}

-(void)soundEnglish:(id)sender{
    Singleton* sing = [Singleton instanciar];
    Letter* let = [Letter new];
    let = [[sing array]objectAtIndex:vari];
    
    utterance = [AVSpeechUtterance speechUtteranceWithString:let.english];
    utterance.rate = AVSpeechUtteranceMinimumSpeechRate;
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:[AVSpeechSynthesisVoice currentLanguageCode]];
    [synthesizer speakUtterance:utterance];
    
}

@end
