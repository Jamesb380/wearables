library(dplyr)
library(plyr)
library(data.table)



test.df <- fread("/Users/james.bennett/Desktop/wearables/test/X_test.txt")
train.df <- fread("/Users/james.bennett/Desktop/wearables/train/X_train.txt")
combine.df <- rbind(test.df,train.df)

df <- combine.df[,c(1:6, 41:46, 121:126, 161:166, 201:202)]

setnames(df, "V1", "Walking X-axis mean")
setnames(df, "V2", "Walking Y-axis mean")
setnames(df, "V3", "Walking Z-axis mean")
setnames(df, "V4", "Walking X-axis sd")
setnames(df, "V5", "Walking Y-axis sd")
setnames(df, "V6", "Walking Z-axis sd")


setnames(df, "V41", "Up stairs X-axis mean")
setnames(df, "V42", "Up Stairs Y-axis mean")
setnames(df, "V43", "Up Stairs Z-axis mean")
setnames(df, "V44", "Up stairs X-axis sd")
setnames(df, "V45", "Up stairs Y-axis sd")
setnames(df, "V46", "Up stairs Z-axis sd")


setnames(df, "V81", "Down stairs X-axis mean")
setnames(df, "V82", "Down Stairs Y-axis mean")
setnames(df, "V83", "Down Stairs Z-axis mean")
setnames(df, "V84", "Down stairs X-axis sd")
setnames(df, "V85", "Down stairs Y-axis sd")
setnames(df, "V86", "Down stairs Z-axis sd")


setnames(df, "V121", "Sitting X-axis mean")
setnames(df, "V122", "Sitting Y-axis mean")
setnames(df, "V123", "Sitting Z-axis mean")
setnames(df, "V124", "Sitting X-axis sd")
setnames(df, "V125", "Sitting Y-axis sd")
setnames(df, "V126", "Sitting Z-axis sd")


setnames(df, "V161", "Standing X-axis mean")
setnames(df, "V162", "Standing Y-axis mean")
setnames(df, "V163", "Standing Z-axis mean")
setnames(df, "V164", "Standing X-axis sd")
setnames(df, "V165", "Standing Y-axis sd")
setnames(df, "V166", "Standing Z-axis sd")

setnames(df, "V201", "Laying mean")
setnames(df, "V202", "Laying sd")

step_5df <- df%>%
        mutate(c(1:26), mean)

