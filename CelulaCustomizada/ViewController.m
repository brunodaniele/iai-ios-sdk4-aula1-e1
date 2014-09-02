//
//  ViewController.m
//  CelulaCustomizada
//
//  Created by Bruno Daniele on 9/1/14.
//  Copyright (c) 2014 Bruno Daniele. All rights reserved.
//

#import "ViewController.h"
#import "CelulaCDTableViewCell.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *listaCds;
@property (nonatomic, strong) NSString *pathArquivo;
@property (weak, nonatomic) IBOutlet UITableView *tabela;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.pathArquivo = [[NSBundle mainBundle] pathForResource:@"listaCDs" ofType:@"plist"];
    self.listaCds = [[NSMutableArray alloc] initWithContentsOfFile:self.pathArquivo];
    
    NSLog(@"%@", self.listaCds);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CelulaCDTableViewCell *celula = [tableView dequeueReusableCellWithIdentifier:@"celulaCD"];
    
    //preenchendo a celula
    //NSDictionary *dict = [self.listaCds objectAtIndex:indexPath.row];
    NSDictionary *dict = self.listaCds[indexPath.row];
    celula.lblArtista.text = dict[@"artista"];
    celula.lblAlbum.text = dict[@"album"];
    celula.lblAno.text = dict[@"ano"];
    celula.lblPreco.text = dict[@"preco"];
    celula.imgCapa.image = [UIImage imageNamed:dict[@"capa"]];
    
    return celula;
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.listaCds.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"Celula Clicada");
}

//Temos que tomar cuidado ao sobescrever um metodo da classe superior
//Sempre quando tentarmos sobrescrever o metodo devemos antes de qualquer coisa, acionar o mesmo metodo presente na classe superior
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [super touchesBegan:touches withEvent:event];
    NSLog(@"Captando toques dentro da celula");
}


@end
