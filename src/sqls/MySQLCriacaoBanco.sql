CREATE DATABASE alunobd;  
  
USE alunobd;  
  
CREATE  TABLE `login` (  
  `user` VARCHAR(20) NOT NULL ,  
  `password` VARCHAR(20) NOT NULL ,  
  PRIMARY KEY (`user`) );   
INSERT INTO `login` (`user`, `password`) VALUES ('admin', '123456'); 

CREATE TABLE `aluno` (
 `alunoId` int(5) NOT NULL AUTO_INCREMENT,
 `matric` varchar(15) DEFAULT NULL,
 `nome` varchar(25) DEFAULT NULL,
 `curso` varchar(15) DEFAULT NULL,
 `ano` int(2) DEFAULT NULL,
 `sem` int(2) DEFAULT NULL,
 `p1` int(2) DEFAULT NULL,
 `p2` int(2) DEFAULT NULL,
 PRIMARY KEY (`alunoId`));
INSERT INTO `aluno` (`matric`, `nome`,`curso`,`ano`,`sem`,`p1`,`p2`) VALUES ('123456', 'Isabel','A.Sistemas','2016','1','6','7'); 


