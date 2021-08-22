# include header files
INCLUDE_DIRECTORIES( ${CMAKE_SOURCE_DIR}/include )

INCLUDE(CTest)
ENABLE_TESTING()
ADD_TEST(HEAP ./readModbus -f 3 -a 0x01B1 -s 0x2 -t 1)

# define source files
SET(readModbus_SRCS
    readModbus.c
)

# define executables
ADD_EXECUTABLE(readModbus ${readModbus_SRCS})

# link library against executeables
TARGET_LINK_LIBRARIES(readModbus mylib modbus)

# folders to install
INSTALL(TARGETS readModbus
        RUNTIME DESTINATION bin
        LIBRARY DESTINATION lib
)
