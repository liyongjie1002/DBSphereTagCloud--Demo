//
//  ViewController.m
//  DBSphereViewTest
//
//  Created by liyongjie on 2017/6/19.
//  Copyright © 2017年 lyjpost. All rights reserved.
//

#import "ViewController.h"
#import <DBSphereView.h>


@interface ViewController ()
@property (nonatomic,strong)DBSphereView *sphereView;
@property (nonatomic,copy)NSArray *cityArr;
@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *cityStr = @"阿坝藏族羌族自治州,阿克苏地区,阿拉尔市,阿拉善盟,阿勒泰地区,阿里地区,安康市,安庆市,安顺市,安阳市,鞍山市,澳门特别行政区,巴彦淖尔市,巴音郭楞蒙古自治州,巴中市,白城市,白沙黎族自治县,白山市,白银市,百色市,蚌埠市,包头市,宝鸡市,保定市,保山市,保亭黎族苗族自治县,北海市,北京市,本溪市,毕节地区,滨州市,亳州市,博尔塔拉蒙古自治州,沧州市,昌都地区,昌吉回族自治州,昌江黎族自治县,长春市,长沙市,长治市,常德市,常州市,巢湖市,朝阳市,潮州市,郴州市,成都市,承德市,澄迈县,池州市,赤峰市,崇左市,滁州市,楚雄彝族自治州,达州市,大理白族自治州,大连市,大庆市,大同市,大兴安岭地区,丹东市,儋州市,德宏傣族景颇族自治州,德阳市,德州市,迪庆藏族自治州,定安县,定西市,东方市,东莞市,东营市,鄂尔多斯市,鄂州市,恩施土家族苗族自治州,防城港市,佛山市,福州市,抚顺市,抚州市,阜新市,阜阳市,甘南藏族自治州,甘孜藏族自治州,赣州市,高雄市,高雄县,固原市,广安市,广元市,广州市,贵港市,贵阳市,桂林市,果洛藏族自治州,哈尔滨市,哈密地区,海外,海北藏族自治州,海东地区,海口市,海南藏族自治州,海西蒙古族藏族自治州,邯郸市,汉中市,杭州市,合肥市,和田地区,河池市,河源市,菏泽市,贺州市,鹤壁市,鹤岗市,黑河市,衡水市,衡阳市,红河哈尼族彝族自治州,呼和浩特市,呼伦贝尔市,湖州市,葫芦岛市,花莲县,怀化市,淮安市,淮北市,淮南市,黄冈市,黄南藏族自治州,黄山市,黄石市,惠州市,鸡西市,基隆市,吉安市,吉林市,济南市,济宁市,济源市,佳木斯市,嘉兴市,嘉义市,嘉义县,嘉峪关市,江门市,焦作市,揭阳市,金昌市,金华市,锦州市,晋城市,晋中市,荆门市,荆州市,景德镇市,九江市,酒泉市,喀什地区,开封市,克拉玛依市,克孜勒苏柯尔克孜自治州,昆明市,拉萨市,来宾市,莱芜市,兰州市,廊坊市,乐东黎族自治县,乐山市,丽江市,丽水市,连云港市,凉山彝族自治州,辽阳市,辽源市,聊城市,林芝地区,临沧市,临汾市,临高县,临夏回族自治州,临沂市,陵水黎族自治县,柳州市,六安市,六盘水市,龙岩市,陇南市,娄底市,泸州市,吕梁市,洛阳市,漯河市,马鞍山市,茂名市,眉山市,梅州市,绵阳市,苗栗县,牡丹江市,内江市,那曲地区,南昌市,南充市,南京市,南宁市,南平市,南沙群岛,南通市,南投县,南阳市,宁波市,宁德市,怒江傈僳族自治州,攀枝花市,盘锦市,澎湖县,平顶山市,平凉市,屏东县,萍乡市,莆田市,濮阳市,七台河市,齐齐哈尔市,其他,潜江市,黔东南苗族侗族自治州,黔南布依族苗族自治州,黔西南布依族苗族自治州,钦州市,秦皇岛市,青岛市,清远市,庆阳市,琼海市,琼中黎族苗族自治县,曲靖市,衢州市,泉州市,日喀则地区,日照市,三门峡市,三明市,三亚市,山南地区,汕头市,汕尾市,商洛市,商丘市,上海市,上饶市,韶关市,邵阳市,绍兴市,深圳市,神农架林区,沈阳市,十堰市,石河子市,石家庄市,石嘴山市,双鸭山市,朔州市,思茅市,四平市,松原市,苏州市,宿迁市,宿州市,绥化市,随州市,遂宁市,塔城地区,台北市,台北县,台东县,台南市,台南县,台中市,台中县,台州市,太原市,泰安市,泰州市,唐山市,桃园县,天津市,天门市,天水市,铁岭市,通化市,通辽市,铜川市,铜陵市,铜仁地区,图木舒克市,吐鲁番地区,屯昌县,无锡市,万宁市,威海市,潍坊市,渭南市,温州市,文昌市,文山壮族苗族自治州,乌海市,乌兰察布市,乌鲁木齐市,吴忠市,芜湖市,梧州市,五家渠市,五指山市,武汉市,武威市,西安市,西宁市,西沙群岛,西双版纳傣族自治州,锡林郭勒盟,厦门市,仙桃市,咸宁市,咸阳市,香港特别行政区,湘潭市,湘西土家族苗族自治州,襄樊市,孝感市,忻州市,新乡市,新余市,新竹市,新竹县,信阳市,兴安盟,邢台市,徐州市,许昌市,宣城市,雅安市,烟台市,延安市,延边朝鲜族自治州,盐城市,扬州市,阳江市,阳泉市,伊春市,伊犁哈萨克自治州,宜宾市,宜昌市,宜春市,宜兰县,益阳市,银川市,鹰潭市,营口市,永州市,榆林市,玉林市,玉树藏族自治州,玉溪市,岳阳市,云浮市,云林县,运城市,枣庄市,湛江市,张家界市,张家口市,张掖市,彰化县,漳州市,昭通市,肇庆市,镇江市,郑州市,中沙群岛的岛礁及其海域,中山市,中卫市,重庆市,舟山市,周口市,株洲市,珠海市,驻马店市,资阳市,淄博市,自贡市,遵义市";
    _cityArr = [cityStr componentsSeparatedByString:@","];
    
    
    
    [self setUp];
}
#pragma mark  初始化

-(void)setUp{
    CGFloat bounds_Width = self.view.frame.size.width;

    _sphereView = [[DBSphereView alloc] initWithFrame:CGRectMake(0, 0, bounds_Width, bounds_Width)];
    [self.view addSubview:_sphereView];
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    for (NSInteger i = 0; i < 100; i ++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:_cityArr[i] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:18.];
        [btn setBackgroundColor:[UIColor clearColor]];
        btn.frame = CGRectMake(0, 0, 100, 20);
        [btn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [array addObject:btn];
        [_sphereView addSubview:btn];
    }
    
    [_sphereView setCloudTags:array];
    _sphereView.backgroundColor = [UIColor yellowColor];
 }


- (void)buttonPressed:(UIButton *)button{

    NSLog(@"%@",button.titleLabel.text);

}

@end
