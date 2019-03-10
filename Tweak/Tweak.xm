static NSArray *prefixes = @[@"OwO ", @"H-hewwo?? ", @"Huohhhh. ", @"Haiiii! ", @"UwU ", @"OWO ", @"HIIII! "];
static NSArray *suffixes = @[@" :3", @" UwU", @" ʕʘ‿ʘʔ", @" >_>", @" ^_^", @"..", @" Huoh.", @" ^-^", @" ;_;", @" ;-;", @" xD", @" x3", @" :D", @" :P", @" ;3", @" XDDD", @", fwendo ", @"ㅇㅅㅇ ", @"(人◕ω◕) ", @"（＾ｖ＾） "];

%hook NCNotificationContentView

-(void)setSecondaryText:(NSString *)orig {
    if (!orig) {
        %orig(orig);
        return;
    }
    
    NSString *prefix = prefixes[arc4random() % [prefixes count]];
    NSString *suffix = suffixes[arc4random() % [suffixes count]];
    orig = [orig stringByReplacingOccurrencesOfString:@"r" withString:@"w"];
    orig = [orig stringByReplacingOccurrencesOfString:@"no" withString:@"nu"];
    orig = [orig stringByReplacingOccurrencesOfString:@"have" withString:@"haz"];
    orig = [orig stringByReplacingOccurrencesOfString:@"has" withString:@"haz"];
    orig = [orig stringByReplacingOccurrencesOfString:@"you" withString:@"uu"];


    NSString *text = [prefix stringByAppendingString:orig];
    text = [text stringByAppendingString:suffix];
    
    %orig(text);
}

%end
