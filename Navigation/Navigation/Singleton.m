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
                [object setImg:[UIImage imageNamed:@"akachan.jpg"]];

            }
            if (cha == 'B') {
                //Cazuza
                [object setWord:@"Baka"];
                object.img = [UIImage imageNamed:@"baka.jpg"];
            }
            if (cha == 'C') {
                //Word
                [object setWord:@"Chikyuu"];
                object.img = [UIImage imageNamed:@"chikyuu.png"];
            }
            if (cha == 'D') {
                //phone
                [object setWord:@"Denwa"];
                object.img = [UIImage imageNamed:@"denwa.png"];
            }
            if (cha == 'E') {
                //Rodrigo
                [object setWord:@"Ecchi"];
                object.img = [UIImage imageNamed:@"ecchi.jpg"];
            }
            if (cha == 'F') {
                //Owl
                [object setWord:@"Fukurou "];
                object.img = [UIImage imageNamed:@"fukurou.jpg"];
            }
            if (cha == 'G') {
                //Sky
                [object setWord:@"Goten"];
                object.img = [UIImage imageNamed:@"goten.JPG"];

            }
            if (cha == 'H') {
                //Flower
                [object setWord:@"Hana"];
                object.img = [UIImage imageNamed:@"hana.jpeg"];

            }
            if (cha == 'I') {
                //Dog
                [object setWord:@"Inu"];
                object.img = [UIImage imageNamed:@"inu.jpeg"];

            }
            if (cha == 'J') {
                //Home
                [object setWord:@"Jinka"];
                object.img = [UIImage imageNamed:@"jinka.png"];

            }
            if (cha == 'K') {
                //Perfect
                [object setWord:@"Kanpeki"];
                object.img = [UIImage imageNamed:@"kanpeki.jpg"];

            }
            if (cha == 'L') {
                //Lamen
                [object setWord:@"Lamen"];
                object.img = [UIImage imageNamed:@"lamen.jpeg"];

                
            }
            if (cha == 'M') {
                //Ear
                [object setWord:@"Mimi"];
                object.img = [UIImage imageNamed:@"mimi.jpeg"];

            }
            if (cha == 'N') {
                //Cat
                [object setWord:@"Neko"];
                object.img = [UIImage imageNamed:@"neko.jpg"];

            }
            if (cha == 'O') {
                //ghost
                [object setWord:@"Obake"];
                object.img = [UIImage imageNamed:@"obake.png"];

            }
            if (cha == 'P') {
                //Bread
                [object setWord:@"Pan"];
                object.img = [UIImage imageNamed:@"pan.png"];

            }
            if (cha == 'Q') {
                //Sakura
                [object setWord:@"Quero"];
                object.img = [UIImage imageNamed:@"quero.jpg"];

            }
            if (cha == 'R') {
                //camelo
                [object setWord:@"Rakuda"];
                object.img = [UIImage imageNamed:@"rakuda.jpg"];

            }
            if (cha == 'S') {
                //Monkey
                [object setWord:@"Saru"];
                object.img = [UIImage imageNamed:@"saru.jpg"];

            }
            if (cha == 'T') {
                //Sun
                [object setWord:@"Taiyou"];
                object.img = [UIImage imageNamed:@"taiyou.jpg"];

            }
            if (cha == 'U') {
                //Cavalo
                [object setWord:@"Uma"];
                object.img = [UIImage imageNamed:@"uma.png"];

            }
            if (cha == 'V') {
                [object setWord:@"Vilma"];
                object.img = [UIImage imageNamed:@"vilma.jpg"];

            }
            if (cha == 'W') {
                //Eagle
                [object setWord:@"Washi"];
                object.img = [UIImage imageNamed:@"washi.jpg"];

            }
            if (cha == 'X') {
                [object setWord:@"xicara"];
                object.img = [UIImage imageNamed:@"xicara.png"];

            }
            if (cha == 'Y') {
                //Amora
                [object setWord:@"Yamaguwa"];
                object.img = [UIImage imageNamed:@"yamaguwa.jpg"];

            }
            if (cha == 'Z') {
                //skull
                [object setWord:@"Zukotsu"];
                object.img = [UIImage imageNamed:@"zukotsu.jpg"];

            }

            [object setLetter:cha];
            [array addObject:object];
        }
    }
    return self;
}

-(void)addLetter:(Letter*)letter{
    [array addObject:letter];
}

@end
