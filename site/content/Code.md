# Code

## Documentation 

### Doc Blocks 
```
    /**
     * [OK] Sets the foo number, used to calculate the amount of bar an object has.
     * [BAD] Sets the foo number.
     * 
     * @param \Varien_Object $obj The object that needs bar calculated.
     * @param int $foo The amount of foo the object has.
     * 
     * @return Varien_Object
     */
    public function setFooNumber(Varien_Object $obj, $foo = self::DEFAULT_NUMBER)
    {
        $obj->setFooNumber(intval($foo));
        return $obj;
    }
```

#### Do
  #. Make sure your comment explains the context of the method.

#### Dont 
  #. Write a method without documentation.
  #. Write a description that adds no value, just for the sake of it.
