# Attributes

## Product Attributes

### Backend Models
All backend models inherit from ```Mage_Eav_Model_Entity_Attribute_Backend_Abstract```

### Setup
| Attribute Type                          | Setup Model                                 |
|:---------------------------------------:|:-------------------------------------------:|
| Catalog Attributes                      | ```Mage_Catalog_Model_Resource_Setup```     |

### Description
Blank means the impact isn't known. 

| Attribute               | Values                                                    |
|:-----------------------:|:---------------------------------------------------------:|
| group                   |                                                           |
| input                   | ```boolean```                                             |
|                         | The type of input to display                              |
| type                    | ```int```                                                 |
|                         |                                                           |
| label                   | Anything on the frontend                                  |
|                         |                                                           |
| backend                 | ```catalog/product_attribute_backend_boolean```           |
|                         |                                                           |
| visible                 |                                                           |
|                         |                                                           |
| required                | ```true```, ```false```                                   |
|                         |                                                           |
| user_defined            | ```true```, ```false```                                   |
|                         | Whether it's a system attribute (user deletable)          |
| searchable              | ```true```, ```false```                                   |
|                         |                                                           |
| filterable              | ```true```, ```false```                                   |
|                         |                                                           |
| comparable              | ```true```, ```false```                                   |
|                         |                                                           |
| used_in_product_listing | ```true```, ```false```                                   |
|                         | Whether to load the attr in the list pages (list.phtml)   |

The list above is incomplete
