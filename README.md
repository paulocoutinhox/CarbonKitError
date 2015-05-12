# CarbonKitError
CarbonKitError - AutoLayout bug on iOS7

# The problem  

The error happens on line:

```objective-c
- (void)didMoveToSuperview {  
         ....  
	[self setTranslatesAutoresizingMaskIntoConstraints:NO];  
         ....  
 }  
```  

If you comment, it dont crash, but the view is not centralized.
