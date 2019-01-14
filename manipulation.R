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
"test03-1axis/03_1 (01)/Joint_Torque Feedback.txt"
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





