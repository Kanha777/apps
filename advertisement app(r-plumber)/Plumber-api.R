#load model#

model=readRDS("advert.rds")

#* Plot a histogram of TV
#* @png
#* @get /plothp
function(){
  hist(data$TV)
}

#* Plot a histogram of Radio
#* @png
#* @get /plotam
function(){
  hist(data$radio)
}

#* Plot a histogram of newspaper
#* @png
#* @get /plotwt
function(){
  hist(data$newspaper)
}


#* Returns the probability whether the car has a manual transmission
#* @param TV
#* @param radio
#* @param newspaper
#* @post /sales

function(TV,radio,newspaper){
  newdata=data.frame(TV=as.numeric(TV),radio=as.numeric(radio),newspaper=as.numeric(newspaper))
  predict(model,newdata,type="response")
}



