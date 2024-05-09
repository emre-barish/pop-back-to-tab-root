# Pop Back to Tab Root


| **Device** | **Minimum OS** |
|:---:|:---:|
| **iPhone** | iOS 16 |

## Overview

This sample app shows how to pop back to the root view of tab items of a `TabView`, by tapping on tab items' labels in the tab bar, when a child view of tab items is on display.

There are two tab items in the sample app, `Tab One` and `Tab Two` views. Each one of these tab items have one child view, respectively `TabOneChild` and `TabTwoChild`, which can be reached via navigation links in root views of the tab items. When a child view of a tab item is on display, tapping on its label in the Tab Bar pops all child views back to their respective root views: `TabOneChild` pops back to `TabOne`, and `TabTwoChild` pops back to `TabTwo`.

