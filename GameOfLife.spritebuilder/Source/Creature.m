//
//  Creature.m
//  GameOfLife
//
//  Created by Derek Jensen on 11/20/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Creature.h"

@implementation Creature

-(instancetype)initCreature {
    // since we made Create inherit from CCSprite, 'super' below refers to CCSprite
    self = [super initWithImageNamed:@"GameOfLifeAssets/Assets/bubble.png"];
    
    if(self) {
        self.isAlive = NO;
    }
    
    return self;
}

-(void)setIsAlive:(BOOL)newState {
    // when you create an @propery as we did in the .h, an instance variable with a leading underscore is automatically created for you
    _isAlive = newState;
    
    // 'visible' is a property of any class that inherits from CCNode.  CCSprite is a subclass of CCNode, and Creature is a subclass of CCSprite, so Creates have a visible property
    self.visible = _isAlive;
}

@end
