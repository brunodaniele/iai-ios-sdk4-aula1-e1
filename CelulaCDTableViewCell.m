//
//  CelulaCDTableViewCell.m
//  CelulaCustomizada
//
//  Created by Bruno Daniele on 9/1/14.
//  Copyright (c) 2014 Bruno Daniele. All rights reserved.
//

#import "CelulaCDTableViewCell.h"

@implementation CelulaCDTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
