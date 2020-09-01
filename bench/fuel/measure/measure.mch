MACHINE measure
SEES ctx

OPERATIONS
   m1, m2 <-- measure_level =
   BEGIN
       BEGIN m1 :: 0..TANK_CAPACITY END ||
       BEGIN m2 :: 0..TANK_CAPACITY END
   END;

   m1, m2, m3 <-- measure_consumption =
   BEGIN
       BEGIN m1 :: 0..MAX_CONSUMPTION END ||
       BEGIN m2 :: 0..MAX_CONSUMPTION END ||
       BEGIN m3 :: 0..MAX_CONSUMPTION END
   END
END