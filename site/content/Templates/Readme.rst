Below is the readme template!

..code::  

    Project Outline
    ----------------

    Project Goals
    '''''''''''''
    
    1. This is a project goal

    This project is intended to cover the gap found during {foo}

    Similar Work
    ''''''''''''

    Justification
    '''''''''''''

    Alerting Policies
    '''''''''''''''''

    ======================= ===============================================
    Policy                  Description
    ----------------------- -----------------------------------------------
    GET / (https) not 200   Check whether the HTTPS homepage is working
    GET / (http) not 302    Check whether the site is redirecting from HTTP
    ======================= ===============================================

    Summary
    '''''''
    
    ============= ============ ==============
    License       Code Style   Code Locale
    ------------- ------------ --------------
    Apache-2      Zend         en-AU [lang]_
    ============= ============ ==============

    Compatibility
    '''''''''''''

    Magento  Compatibility
    
    ===== ===== ===== ===== ===== =====
     1.9   1.8   1.7   1.6   1.5   1.4 
    ----- ----- ----- ----- ----- -----
      Y     ?     ?     ?     ?     ?
    ===== ===== ===== ===== ===== =====

    Installation 
    -------------
    Add the satis repository
        .. code::
        {
           "repositories": [
               {
                   "type": "composer",
                   "url": "http://satis.howden.io"
               }
           ]
        }

    Do a thing

    Usage
    -----
    
    Example A
    '''''''''
    
    This is an example.
    .. code::
        // This is an example code
        <?php echo $foo; ?>

    Thanks
    ------
    
    - Company A (https://www.littleman.co/)
    - Software B (https://software.com/)
    - Person C (https://personalwebsite.com) @twitterHandle

    Contributing
    ------------
    
    Contributions are always welcome! I mirror my work on GitHub, however, if you'd like to [open an issue](http://link.com)
    i'd love the feedback!

    References
    -----------
    
    .. [lang] Lingoes.net,. (2015). Language Code Table. Retrieved 4 June 2015, from http://www.lingoes.net/en/translator/langcode.htm

Conclude readme template
