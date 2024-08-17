# Define static library target
#
add_library(
        virtual_universe
        STATIC
        universe/universe.c
        universe/universe.h
)

add_executable(virtual_universe_main main.c)
target_link_libraries(virtual_universe_main virtual_universe)

