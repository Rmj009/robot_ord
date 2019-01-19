head(a1data)

library(readr)
Joint_Torque_Feedback <- read_delim("C:/Users/RoboticsLab/robot_ord/test03-1axis/03_1 (01)/Joint_Torque Feedback.txt", 
                                    "\t", escape_double = FALSE, col_names = FALSE, 
                                    col_types = cols(X7 = col_skip()), trim_ws = TRUE)
Robot_q_Feedback <- read_delim("C:/Users/RoboticsLab/robot_ord/test03-1axis/03_1 (01)/Robot_q Feedback.txt", 
                               "\t", escape_double = FALSE, col_names = FALSE, 
                               trim_ws = TRUE)
Robot_qvel_Feedback <- read_delim("C:/Users/RoboticsLab/robot_ord/test03-1axis/03_1 (01)/Robot_qvel Feedback.txt", 
                                  "\t", escape_double = FALSE, col_names = FALSE, 
                                  col_types = cols(X7 = col_skip()), trim_ws = TRUE)


Tor31_1<-Joint_Torque_Feedback$X1
q1a_1<-Robot_q_Feedback$X1
qvel1a_1<-Robot_qvel_Feedback$X1
test031<-as.data.frame(cbind(Tor31_1,q1a_1,qvel1a_1))



Joint_Torque_Feedback <- read_delim("test03-1axis/03_1 (18)/Joint_Torque Feedback.txt", 
                                    "\t", escape_double = FALSE, col_names = FALSE, 
                                    col_types = cols(X7 = col_skip()), trim_ws = TRUE)
Robot_q_Feedback <- read_delim("test03-1axis/03_1 (18)/Robot_q Feedback.txt", 
                               "\t", escape_double = FALSE, col_names = FALSE, 
                               trim_ws = TRUE)
Robot_qvel_Feedback <- read_delim("test03-1axis/03_1 (18)/Robot_qvel Feedback.txt", 
                                  "\t", escape_double = FALSE, col_names = FALSE, 
                                  col_types = cols(X7 = col_skip()), trim_ws = TRUE)

Tor31_18<-Joint_Torque_Feedback$X1
q1a_18<-Robot_q_Feedback$X1
qvel1a_18<-Robot_qvel_Feedback$X1
test0318<-as.data.frame(cbind(Tor31_18,q1a_18,qvel1a_18))





for( i in 1:5 ){
  
  paste("C:/Users/Robotlab/Pictures/prc/normal/3b_3PPCA01_Normal01/3b_3PPCA01_Normal01_",i,".txt",sep ="") = aa
  
  bb <- read.csv(aa)
  
  list(bb)
  
}


for(j in 1:3){
  
  
  ks.test(j)  
  
}

#---------no2a---------

#T2.test Robust Hotelling T2 test
T2.test(no2a,no2b)
T2.test(no2b,no2c)
T2.test(no2a,ok_a)
T2.test(no2a,ok_b)
T2.test(no2a,ok_c)
T2.test(no2a,ok_d)
T2.test(no2a,ok_e)

T2.test(no2b,ok_a)
T2.test(no2b,ok_b)
T2.test(no2b,ok_c)
T2.test(no2b,ok_d)
T2.test(no2b,ok_e)

T2.test(no2c,ok_a)
T2.test(no2c,ok_b)
T2.test(no2c,ok_c)
T2.test(no2c,ok_d)
T2.test(no2c,ok_e)



bartlett.test(N3_)
x <- list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
# compute the list mean for each list element
n <- 17; fac <- factor(rep(1:3, length = n), levels = 1:5)
fac
table(fac)
tapply(1:n, fac, sum)
tapply(1:n, fac, sum, simplify = FALSE)
tapply(1:n, fac, range)
tapply(1:n, fac, quantile)

require(graphics)
head(InsectSprays)
plot(count ~ spray, data = InsectSprays)
bartlett.test(InsectSprays$count, InsectSprays$spray)
bartlett.test(count ~ spray, data = InsectSprays)


#---------n02b------
bartlett.test(No2_1,no2b)
kruskal.test(No2_1$X.0.00001300,no2b$X.0.00007515)
library(rrcov)
T2.test(no2b,no2c)



# xyz in x ----------------------------------------------------------------
setwd("C:/Users/RoboticsLab/robot_ord/SCARA")
library(readr)
## Wush 大方法 需要先設定對setwd
flist<- dir("C:/Users/RoboticsLab/robot_ord/SCARA", "*.txt", recursive=TRUE)
result<-list()
for(path in flist) {
  name <- basename(path)
  result[[path]]<-read_csv(path,col_names = F,trim_ws = F)
  
}


for (x in result) {
  scaraFrame<-cbind(x)

}

scaraFrame<-cbind(result[[1]],result[[2]],result[[3]],result[[4]],result[[5]],result[[6]])

T2.test(no2a,no2b)
