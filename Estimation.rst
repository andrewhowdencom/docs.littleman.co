All estimates include the time spent initially investigating and quoting the task, and the total time on the task should not exceed what's estimated without express approval from the client

Calculation Table
-----------------
Initial figures (not multipliers) should come from records of similar work. If you don't have any, take a best guess, but you should have at least some.

+----------------------------------+-------+-------+
| Area                             | Hours | Total |
+==================================+=======+=======+
| Investigation & Correspondence   | 0     | 0     |
+----------------------------------+-------+-------+
| **Development**                                  |
+----------------------------------+-------+-------+
| *Backend*                                        |
+----------------------------------+-------+-------+
| Server Configuration             | 0     | 0     |
+----------------------------------+-------+-------+
| Package Configuration            | 0     | 0     |
+----------------------------------+-------+-------+
| PHP                              | 0     | 0     |
+----------------------------------+-------+-------+
| *Frontend*                                       |
+----------------------------------+-------+-------+
| JavaScript (?)                   | 0     | 0     |
+----------------------------------+-------+-------+
| PHP / HTML (templates?)          | 0     | 0     |
+----------------------------------+-------+-------+
| SCSS (styles?)                   | 0     | 0     |
+----------------------------------+-------+-------+
| **Review**                                       | 
+----------------------------------+-------+-------+  
| Testing                          | 0     | 0     |
+----------------------------------+-------+-------+
| Documentation / Tooling          | 0     | 0     |
+----------------------------------+-------+-------+
| **Difficulty**                                   |
+----------------------------------+-------+-------+
| 1.5x Hard                        | 0     | 0     |
+----------------------------------+-------+-------+
| 1.25x Medium                     | 0     | 0     |   
+----------------------------------+-------+-------+
| 1x Easy                          | 0     | 0     |   
+----------------------------------+-------+-------+
| **Technical Debt**                               |
+----------------------------------+-------+-------+
| 1.2x - No SCSS                   | 0     | 0     |
+----------------------------------+-------+-------+
| *Magento Specific*                               |
+----------------------------------+-------+-------+
| .05x Each Theme (not store)      | 0     | 0     |
+----------------------------------+-------+-------+
| **Hand-off**                                     |
+----------------------------------+-------+-------+
| .25x Code Review                 | 0     | 0     |
+----------------------------------+-------+-------+
| 1.2x < 2h Client driven changes  | 0     | 0     | 
+----------------------------------+-------+-------+
| 1.2x < 2h "Buffer" time          | 0     | 0     | 
+----------------------------------+-------+-------+
| Total (rounded 1h)                       | 0     |
+------------------------------------------+-------+

A note about difficulty
```````````````````````
I don't think it's possible to objectively evaluate the difficulty of a particular subject, but a subjective view is still useful. Also, remember it's not just you looking at the code -- You'll have to explain your decisions to someone else at review anyway.

API
---

Contraindications
`````````````````
  - Do not work on a feature that requires API connection until you have a duplicate or access to production data.

Magento
-------

Things to check // @todo: Replace with "Multipliers"
````````````````````````````````````````````````````

  1. There are no local overrides or rewrites for things you're planning to change (use n98-magerun to check)


