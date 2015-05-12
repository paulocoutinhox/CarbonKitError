# CarbonKitError
CarbonKitError - AutoLayout bug on iOS7

# The problem  

The error happens on line:

```objective-c
- (void)didMoveToSuperview 
{  
    ....  
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];  
    ....  
}  
```  

If you comment, it dont crash, but the view is not centralized.

# Error description

```
2015-05-12 14:37:28.911 CarbonKitError[493:60b] *** Assertion failure in -[UITableView layoutSublayersOfLayer:], /SourceCache/UIKit/UIKit-2935.138/UIView.m:8794
2015-05-12 14:37:28.921 CarbonKitError[493:60b] *** Terminating app due to uncaught exception 'NSInternalInconsistencyException', reason: 'Auto Layout still required after executing -layoutSubviews. UITableView's implementation of -layoutSubviews needs to call super.'
*** First throw call stack:
(0x2e017f83 0x387c8ccf 0x2e017e5d 0x2e9c5d5b 0x30834e19 0x304b262b 0x304ade3b 0x304dccdd 0x308b1163 0x308af783 0x308ae9d3 0x308ae95b 0x308ae8f3 0x308a6f69 0x3083b107 0x308ae641 0x308ae105 0x30840045 0x3083d827 0x308a733d 0x104483 0x308a4587 0x308a3edb 0x3089e56b 0x3083a6e9 0x30839851 0x3089dca9 0x32e52aed 0x32e526d7 0x2dfe2a67 0x2dfe2a03 0x2dfe11d7 0x2df4bebf 0x2df4bca3 0x3089ced1 0x3089814d 0x104659 0x38cd5ab7)
libc++abi.dylib: terminating with uncaught exception of type NSException
(lldb) 
```
