app <- ShinyDriver$new("../../")
app$snapshotInit("mytest")

app$setInputs(`sales_overview_ui_1-obs_count` = 14)
app$setInputs(`sales_overview_ui_1-obs_count` = 37)
app$snapshot()
