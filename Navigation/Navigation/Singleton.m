//
//  Singleton.m
//  Navigation
//
//  Created by Lucas Augusto Cordeiro on 2/24/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Singleton.h"
#import "Letter.h"

@implementation Singleton
@synthesize array;

static Singleton* instancia = nil;

+ (id)allocWithZone:(struct _NSZone *)zone
{
    return  [self instanciar];
}


+(id)instanciar{
    if(!instancia)
        instancia = [[super allocWithZone:nil]init];
    return instancia;
}

- (id) init
{
    self = [super init];
    if (self) {
        array = [[NSMutableArray alloc] init];
        
        for(char cha = 'A'; cha <= 'Z'; cha++){
            Letter* object = [Letter new];
            
            if (cha == 'A') {
                //Baby
                [object setWord:@"Akachan"];
                [object setEnglish:@"Baby"];
                [object setImg:[UIImage imageNamed:@"akachan.jpg"]];

            }
            if (cha == 'B') {
                //Cazuza
                [object setWord:@"Buta"];
                [object setEnglish:@"Pig"];
                object.img = [UIImage imageNamed:@"Buta.png"];
            }
            if (cha == 'C') {
                //Word
                [object setWord:@"Chikyuu"];
                [object setEnglish:@"Earth"];
                object.img = [UIImage imageNamed:@"chikyuu.png"];
            }
            if (cha == 'D') {
                //phone
                [object setWord:@"Denwa"];
                [object setEnglish:@"telephone"];
                object.img = [UIImage imageNamed:@"denwa.png"];
            }
            if (cha == 'E') {
                //Rodrigo
                [object setWord:@"Enpitsu"];
                [object setEnglish:@"Pencil"];
                object.img = [UIImage imageNamed:@"Enpitsu.png"];
            }
            if (cha == 'F') {
                //Owl
                [object setWord:@"Fukurou "];
                [object setEnglish:@"Owl"];
                object.img = [UIImage imageNamed:@"fukurou.jpg"];
            }
            if (cha == 'G') {
                //Sky
                [object setWord:@"Goten"];
                [object setEnglish:@"Sky"];
                object.img = [UIImage imageNamed:@"goten.JPG"];

            }
            if (cha == 'H') {
                //Flower
                [object setWord:@"Hana"];
                [object setEnglish:@"Flower"];
                object.img = [UIImage imageNamed:@"hana.jpeg"];

            }
            if (cha == 'I') {
                //Dog
                [object setWord:@"Inu"];
                [object setEnglish:@"Dog"];
                object.img = [UIImage imageNamed:@"inu.jpeg"];

            }
            if (cha == 'J') {
                //Home
                [object setWord:@"Jinka"];
                [object setEnglish:@"Home"];
                object.img = [UIImage imageNamed:@"jinka.png"];

            }
            if (cha == 'K') {
                //Perfect
                [object setWord:@"Kagi"];
                [object setEnglish:@"Key"];
                object.img = [UIImage imageNamed:@"Kagi.png"];

            }
            if (cha == 'L') {
                //Lamen
                [object setWord:@"Lamen"];
                [object setEnglish:@"Lamen"];
                object.img = [UIImage imageNamed:@"lamen.jpeg"];

                
            }
            if (cha == 'M') {
                //Ear
                [object setWord:@"Mimi"];
                [object setEnglish:@"Ear"];
                object.img = [UIImage imageNamed:@"mimi.jpeg"];

            }
            if (cha == 'N') {
                //Cat
                [object setWord:@"Neko"];
                [object setEnglish:@"Cat"];
                object.img = [UIImage imageNamed:@"Neko1.png"];

            }
            if (cha == 'O') {
                //ghost
                [object setWord:@"Obake"];
                [object setEnglish:@"Ghost"];
                object.img = [UIImage imageNamed:@"obake.png"];

            }
            if (cha == 'P') {
                //Bread
                [object setWord:@"Pan"];
                [object setEnglish:@"Bread"];
                object.img = [UIImage imageNamed:@"pan.png"];

            }
            if (cha == 'R') {
                //camelo
                [object setWord:@"Rakuda"];
                [object setEnglish:@"Camel"];
                object.img = [UIImage imageNamed:@"rakuda.jpg"];

            }
            if (cha == 'S') {
                //Monkey
                [object setWord:@"Saru"];
                [object setEnglish:@"Monkey"];
                object.img = [UIImage imageNamed:@"saru.jpg"];

            }
            if (cha == 'T') {
                //Sun
                [object setWord:@"Taiyou"];
                [object setEnglish:@"Sun"];
                object.img = [UIImage imageNamed:@"taiyou.jpg"];

            }
            if (cha == 'U') {
                //Cavalo
                [object setWord:@"Uma"];
                [object setEnglish:@"Horse"];
                object.img = [UIImage imageNamed:@"Uma1.png"];

            }
            if (cha == 'W') {
                //Eagle
                [object setWord:@"Washi"];
                [object setEnglish:@"Eagle"];
                object.img = [UIImage imageNamed:@"washi.jpg"];

            }
            if (cha == 'Y') {
                //Amora
                [object setWord:@"Yamaguwa"];
                [object setEnglish:@"Blackberry"];
                object.img = [UIImage imageNamed:@"yamaguwa.jpg"];

            }
            if (cha == 'Z') {
                //skull
                [object setWord:@"Zukotsu"];
                [object setEnglish:@"Skull"];
                object.img = [UIImage imageNamed:@"zukotsu.jpg"];

            }
            if (cha == 'Q' || cha == 'V' || cha == 'X') {
                
            }else{
            [object setLetter:cha];
            [array addObject:object];
            }
        }
    }
    return self;
}

-(void)addLetter:(Letter*)letter{
    [array addObject:letter];
}

@end
