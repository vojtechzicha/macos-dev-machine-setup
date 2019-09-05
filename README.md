# Mac OS Dev Setup

These are the files I use to set up my MacBook Pro 13'' 2016.

## Shell updates

```sh
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

defaults write com.apple.LaunchServices LSQuarantine -bool false

sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
```

## Manual install applications

- AdGuard
- ABRA FlexiBee

## PlayOnMac installations

- Enterprise Architect
- Hadaka Shitsuji
- No Thank You!!!
- Simutrans
- Steam
  - Age of Empires II (see <https://gist.github.com/contra/554f541f7fa93c12499e0829439860eb>)

## YNAB Toolkit settings

```json
[
  { "key": "AccountsDisplayDensity", "value": "0" },
  { "key": "AccountsEmphasizedOutflows", "value": false },
  { "key": "AccountsStripedRows", "value": false },
  { "key": "AutoDistributeSplits", "value": false },
  { "key": "AutomaticallyMarkAsCleared", "value": false },
  { "key": "BetterScrollbars", "value": "1" },
  { "key": "BudgetCategoryFeatures", "value": true },
  { "key": "BudgetProgressBars", "value": "pacing" },
  { "key": "BudgetQuickSwitch", "value": true },
  { "key": "BudgetSpendingGoal", "value": true },
  { "key": "CalendarFirstDay", "value": "0" },
  { "key": "CategoryActivityCopy", "value": false },
  { "key": "CategoryActivityPopupWidth", "value": "0" },
  { "key": "ChangeEnterBehavior", "value": true },
  { "key": "CheckCreditBalances", "value": true },
  { "key": "CheckNumbers", "value": false },
  { "key": "ClearSelection", "value": false },
  { "key": "CollapseSideMenu", "value": true },
  { "key": "ColourBlindMode", "value": false },
  { "key": "CompactIncomeVsExpense", "value": false },
  { "key": "CreditCardEmoji", "value": true },
  { "key": "CurrentMonthIndicator", "value": true },
  { "key": "CustomFlagNames", "value": true },
  { "key": "DaysOfBuffering", "value": true },
  { "key": "DaysOfBufferingHistoryLookup", "value": "0" },
  { "key": "DeselectTransactionsOnSave", "value": true },
  { "key": "DisableToolkit", "value": false },
  { "key": "DisplayTargetGoalAmount", "value": "0" },
  { "key": "DisplayTotalMonthlyGoals", "value": true },
  { "key": "DisplayUpcomingAmount", "value": false },
  { "key": "EasyTransactionApproval", "value": false },
  { "key": "EditAccountButton", "value": "2" },
  { "key": "EnlargeCategoriesDropdown", "value": true },
  { "key": "EnterToMove", "value": false },
  { "key": "FilterCategories", "value": true },
  { "key": "GoalIndicator", "value": true },
  { "key": "GoalWarningColor", "value": false },
  { "key": "GoogleFontsSelector", "value": "0" },
  { "key": "HideAccountBalancesType", "value": "0" },
  { "key": "HideAgeOfMoney", "value": false },
  { "key": "HideHelp", "value": true },
  { "key": "HideReferralBanner", "value": true },
  { "key": "HideTotalAvailable", "value": false },
  { "key": "HighlightNegatives", "value": true },
  { "key": "ImportNotification", "value": "0" },
  { "key": "IncomeFromLastMonth", "value": "3" },
  { "key": "IncomeVsExpenseHoverHighlight", "value": true },
  { "key": "LargerClickableIcons", "value": false },
  { "key": "LinkToInflows", "value": false },
  { "key": "MonthlyNotesPopupWidth", "value": "0" },
  { "key": "NavDisplayDensity", "value": "1" },
  { "key": "Pacing", "value": "0" },
  { "key": "PrintingImprovements", "value": true },
  { "key": "PrivacyMode", "value": "2" },
  { "key": "QuickBudgetWarning", "value": false },
  { "key": "ReconciledTextColor", "value": "4" },
  { "key": "RemovePositiveHighlight", "value": false },
  { "key": "RemoveZeroCategories", "value": true },
  { "key": "ResizeInspector", "value": false },
  { "key": "ResizeSidebar", "value": true },
  { "key": "RightClickToEdit", "value": true },
  { "key": "RowHeight", "value": "0" },
  { "key": "RowsHeight", "value": "0" },
  { "key": "RunningBalance", "value": "0" },
  { "key": "SeamlessBudgetHeader", "value": true },
  { "key": "SetMultipleFlags", "value": false },
  { "key": "ShowCategoryBalance", "value": true },
  { "key": "SpareChange", "value": false },
  { "key": "SplitTransactionAutoAdjust", "value": true },
  { "key": "SquareNegativeMode", "value": false },
  { "key": "StealingFromFuture", "value": true },
  { "key": "SwapClearedFlagged", "value": false },
  { "key": "TargetBalanceWarning", "value": false },
  { "key": "ToBeBudgetedWarning", "value": true },
  { "key": "ToggleMasterCategories", "value": false },
  { "key": "ToggleSplits", "value": false },
  { "key": "ToggleTransactionFilters", "value": "2" },
  { "key": "ToolkitReports", "value": true },
  { "key": "TransactionGridFeatures", "value": true },
  { "key": "ViewZeroAsEmpty", "value": false },
  { "key": "l10n", "value": "0" }
]
```
