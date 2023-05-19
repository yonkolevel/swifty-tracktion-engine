#import "TracktionEngineWrapper.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdocumentation"
#include <tracktion_engine/tracktion_engine.h>
#pragma clang diagnostic pop

#import <iostream>

using namespace tracktion;



@implementation TracktionEngineWrapper

- (void)startEngine {
    // Create an instance of the Tracktion engine
    Engine engine {"MyApp"};

    // Start the engine
//    engine.getDeviceManager().initialise(512, 48000);
}

@end
