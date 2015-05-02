# Magento Design

## Templates

### Translations
Work something like

```
    <?php /** @var $this Mage_Paypal_Block_Standard_Form */ ?>
    <?php echo $this->__('A sensible default'); ?>
```

The best-practice way to manage strings is with Magento's Translate calls. This means that, within the template, the strings should be
   1. Absolutely correct english (or, locale)
   2. Sensible, and minimal
   3. Individual enough the message is never going to be mixed with another translate call (no ```$this->__('Hello, World'); ?>```
   4. Never changed (well, hardly ever)

