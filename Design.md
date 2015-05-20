# Website Design
## Definitions 
| Word              | Description                                                    |
|:-----------------:|:--------------------------------------------------------------:|
| descriptor        | A qualifier for the psuedoelement structure (eg. title)        |
| psuedoelement     | The semantic name for the page structure (eg. navbar)          |

## Overview
### Pertinant Data
- Brand Colors

### Process
1. Develop a kitchen sink of elements that will be used throughout the site. Some common ones are
  - Buttons
  - Loading Indicators
  - Headings
  - Paragraph Text
  - Lists

## SCSS

## Headings
Heading styles should not be coupled with their tag counterparts. h1 - h5 are used for determining the importants of the content that follows, the class for describing further information about that section. 

## Naming
| Type                 | Standard                                                    |
|:--------------------:|:-----------------------------------------------------------:|
| Color variable       | {psuedoelement}-{descriptor}-color                          |

### Canonical name
| Name                 | Alternatives                                                |
|:--------------------:|:-----------------------------------------------------------:|
| largest              | x-large, extra-large                                        |

### Reserved Words

#### Modifiers
Modifiers are selectors that only modify the look of the page when combined with another selector. They should not have any styles applied to them directly, and ideally should only be used as placeholders. 

| Word     | Description                                             |
|:--------:|:-------------------------------------------------------:|
| left     | Move the element to the left side of its parent         |
| right    | Move the element to the right side of its parent        | 

### Whitespace
 - All elements are responsible for the vertical whitespace directly below them, with the exception 
   of the first element on the page

### Directory Structure

| Sass |             |       |                 |
|------|:-----------:|:-----:|:----------------|
|      | styles      |                         | 
|      | _mixins                               |
|      | _colors                               | 
|      | _variables                            | 
|      | _placeholders                         | 
|                                              |
|      | styles/     |       |                 |
|      |             | core/ |                 |
|      |             |       | _buttons.scss   |
|      |             |       | _carousels.scss |
|      |             |       | _collapse.scss  | 
|      |             |       | _forms.scss     |
|      |             |       | _loading.scss   |
|      |             |       | _messages.scss  |
|      |             |       | _modals.scss    |
|      |             |       | _panels.scss    |
|      |             |       | _utilities.scss |
|      |             |       | _wells.scss     |
|      |             |       |                 |  
