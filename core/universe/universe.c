#include "universe.h"

#include <stdlib.h>


Universe *UniverseCreate() {
    Universe * universe = malloc(sizeof(Universe));
    return universe;
}
