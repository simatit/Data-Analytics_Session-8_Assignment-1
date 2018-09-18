# 1. Use the package RcmdrPlugin.IPSUR.
# data(RcmdrTestDrive)
# and perform the below operations:

# a. Calculate the average salary by gender and smoking status.
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, mean)
# Female      Male 
# 698.0911   743.3915

tapply(RcmdrTestDrive$salary, RcmdrTestDrive$smoking, mean)
# Nonsmoker     Smoker 
# 719.3792     746.3494

# b. Which gender has the highest mean salary?
# As per problem 1 solution 'a' Highest mean salary of "Male" is high.

# c. Report the highest mean salary.
mean(RcmdrTestDrive$salary)
# 724.5164
# Overall Average of the sallary is 724.5164

# d. Compare the spreads for the genders by calculating the standard deviation of salary by gender.
tapply(RcmdrTestDrive$salary, RcmdrTestDrive$gender, sd)
# Female     Male 
# 130.7053  158.5423

boxplot(salary~gender, data= RcmdrTestDrive, main="salary versus gender", 
        xlab="gender",ylab="salary",col=topo.colors(2))
