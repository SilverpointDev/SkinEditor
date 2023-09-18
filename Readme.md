# Silverpoint Skin Editor

With the help of Silverpoint Skin Editor designers will be able to easily create and modify skins of applications based on SpTBXLib.

## Basic Concepts

The term skin refers to the concept of changing the software's look and feel, making it aesthetically pleasing.
Software that is capable of having a skin applied is referred to as being skinnable, and the process of writing or applying such a skin is known as skinning.

A skin for Silverpoint Skin Editor is made of a SKN file describing the logical structure of the skin. This is a text file that follows a specific format and it is used by the skin engine to skin the application's controls.

## Getting Started

When Skin Editor is opened you have the option to create a new skin, open an existing one or create a skin based on a template.

Skin Editor has 4 sections or panes:

1) Elements: this pane has a list of every control/element and their different states.
2) Skin Properties: shows the skin properties and their values. Some of the properties you can change are:
   - Name: the skin name.
   - Author: the skin author.
   - Office Icons: when set to true the menu item icons are painted with shadows (imitating Office).
   - Office Menu: when set to true the height of the separators on popup menus is 6 pixels (imitating Office), otherwise the size is 10 pixels. Also when the items are disabled the hottrack is not painted.
   - Office Statusbar: when set to true the Statusbar panels are painted with rectangular separators like Office.
3) Element Properties: shows the selected element properties. Some of the properties you can change are:
   - Body: to edit the Body properties select the type of the Body and change the gradient colors, Solid uses 1 color, the Simple Gradients uses 2, and the rest uses 4 colors.
   - Borders: to edit the Borders properties select the type of the Borders and change the border colors. You can specify the external and internal borders.
   - Text: specifies the text color.
4) Preview: this pane shows the preview of the skin.

## Creating a New Skin

1) Create a new project by clicking the New button on the toolbar.
2) Specify the Skin Name and Author on the New Skin dialog.  
You can also create a skin based upon a template.
3) You can now start editing the skin.  
An element can consist of several states, for instance the Button element has 6 states (Normal, Disabled, Hot, Pushed, Checked, Checked & Hot), while other elements have just a few like the ProgressBar element that has only 2 states (Normal, Hot).  
To access a specific element property, you must first locate the element on the Elements pane and then select the corresponding state, when the state is selected the properties will be showed on the Element Properties pane.

For more info go to:
http://www.silverpointdevelopment.com


## License

The contents of this package are licensed under the terms of the Mozilla Public License Version 1.1, found at:  
http://www.mozilla.org/MPL/MPL-1.1.html

Software is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.

The initial developer of this package is Robert Lee.