//
//  CelulaCDTableViewCell.h
//  CelulaCustomizada
//
//  Created by Bruno Daniele on 9/1/14.
//  Copyright (c) 2014 Bruno Daniele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CelulaCDTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblArtista;
@property (weak, nonatomic) IBOutlet UILabel *lblAlbum;
@property (weak, nonatomic) IBOutlet UILabel *lblAno;
@property (weak, nonatomic) IBOutlet UILabel *lblPreco;
@property (weak, nonatomic) IBOutlet UIImageView *imgCapa;


@end
