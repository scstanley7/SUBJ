setwd("~/Documents/ischoolMaterials/F2018/info-org/")

zotData.df <- read.csv("LIS5703fall2018.csv", stringsAsFactors = FALSE)

manualTags.v <- zotData.df$Manual.Tags
generatedTags.v <- zotData.df$Automatic.Tags

manualTags.v <- unlist(strsplit(manualTags.v, ";"))
generatedTags.v <- unlist(strsplit(generatedTags.v, ";"))

manualTags.v <- trimws(manualTags.v, which = "both")
generatedTags.v <- trimws(generatedTags.v, which = "both")

manualTags.t <- table(manualTags.v)
sortedManualTags.t <- sort(manualTags.t, decreasing = TRUE)

generatedTags.t <- table(generatedTags.v)
sortedGeneratedTags.t <- sort(manualTags.t, decreasing = TRUE)

write.csv(sortedManualTags.t, file = "sortedTags.csv", append = FALSE, quote = TRUE,eol = "\r\n")
write.csv(sortedGeneratedTags.t, file = "sortedGeneratedTags.csv", append = FALSE, quote = TRUE,eol = "\r\n")