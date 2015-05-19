# Website Design
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


### Canonical name
| Name                 | Alternatives                                                |
|:--------------------:|:-----------------------------------------------------------:|
| largest              | x-large, extra-large                                        |

### Whitespace
 - All elements are responsible for the vertical whitespace directly below them, with the exception
   of the first element on the page

### Naming Standard
| Structure    | Standard                                                  | Example        |
|:------------:|:---------------------------------------------------------:|:--------------:|
| placeholders | Singular, describing it's semantic purpose. One word only | ```%heading``` | 

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
|      |             |       | _typography.scss|
|      |             |       | _utilities.scss |
|      |             |       | _wells.scss     |
|      |             |       |                 |
