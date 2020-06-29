
#load library
library(plumber)
library(jsonlite)

#connect with api#
pr=plumb("Plumber-api.R")

#create swagger file#
swaggerFile=pr$swaggerFile()
swaggerFile$info$title="sales after advertising"
swaggerFile$info$description="returns ssales value considering advertising"
swaggerFile$info$version="1.0.0"
swagger=toJSON(swaggerFile,pretty=TRUE,auto_unbox=TRUE)
cat(swagger,file="plumber-swagger.json",append =FALSE)

#run on web#
pr$run(host="0.0.0.0", port=8080)
