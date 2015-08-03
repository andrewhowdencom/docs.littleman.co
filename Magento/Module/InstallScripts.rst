Review Checks
-------------
- Install scripts should be build defensively enough that they can be interrupted half way through and resume without issue. This includes things like 
 - Checking tables exist before attempting to create them.
 - Checking columns exist before attempting to create them.
 - Checking columns are in the expected state before attempting to modify them.
