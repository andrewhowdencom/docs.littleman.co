Review Checks
-------------
- Install scripts should be build defensively enough that they can be interrupted half way through and resume without issue. This includes things like 
 - Checking tables exist before attempting to create them.
 - Checking columns exist before attempting to create them.
 - Checking columns are in the expected state before attempting to modify them.
- Module changes should be designed to work both with the old schema and the new. There is no reason code changes need to rely on a schema change, unless thst change is a critical bugfix.