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
| xlarge               | x-large, extra-large                                        |

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
|      |             |       | _forms.scss     |
|      |             |       | _loading.scss   |
|      |             |       | _messages.scss  |
|      |             |       | _modals.scss    |
|      |             |       | _panels.scss    |
|      |             |       | _utilities.scss |
|      |             |       | _wells.scss     |
|      |             |       |                 |  
