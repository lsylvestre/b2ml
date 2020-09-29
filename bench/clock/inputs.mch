/* WARNING : LCHIP system source file, do not edit */

MACHINE
    inputs
SEES
    g_types,
    io_constants,
    user_configuration
ABSTRACT_VARIABLES
    I1,
    I2,
    I3
INVARIANT
    I1 : uint8_t &
    I2 : uint8_t &
    I3 : uint8_t
INITIALISATION
    I1 :: uint8_t ||
    I2 :: uint8_t ||
    I3 :: uint8_t
OPERATIONS
    read_inputs =
    BEGIN
        I1 :: uint8_t ||
        I2 :: uint8_t ||
        I3 :: uint8_t
    END;

    po <-- get_I1 =
    PRE
        po : uint8_t
    THEN
        po := I1
    END;

    po <-- get_I2 =
    PRE
        po : uint8_t
    THEN
        po := I2
    END;

    po <-- get_I3 =
    PRE
        po : uint8_t
    THEN
        po := I3
    END
END
