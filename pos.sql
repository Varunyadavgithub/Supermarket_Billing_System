--phpMyAdmin SQL Dump
--version 5.0.2
--https://www.phpmyadmin.net/
--
--Host: 127.0.0.1:3306
--Generation Time: Mar 20, 2021 at 01:26 PM
--Server version: 5.7.31
--PHP Version: 7.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time zone = "+00:00";


/*140101 SET @OLD CHARACTER SET_CLIENT-CHARACTER_SET_CLIENT */;
/*140101 SET BOLD CHARACTER SET RESULTS CHARACTER SET RESULTS /
/*140101 SET @OLD COLLATION_CONNECTION COLLATION_CONNECTION */; 17
/*140101 SET NAMES utf8mb4 */;

--
--Database: pos
--

-- -------------------------------------------------------------------------------

--
--Table structure for table 'bills
--

DROP TABLE IF EXISTS bills';
CREATE TABLE IF NOT EXISTS bills ( 
    'bill_id' int(11) NOT NULL AUTO_INCREMENT, 
    'name' char(30) DEFAULT NULL,
    'phone' char(15) DEFAULT NULL, 
    'bill_date' date DEFAULT NULL, 
    PRIMARY KEY ("bill_id") 
) ENGINE=MYISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
--Dumping data for table "bills
INSERT INTO 'bills' ("bill_id","name","phone","bill_date") VALUES
(3,'ramji','23423423','2023-03-16'),
(4, 'pushkar, 1122334455, 2023-03-05'),
(5, 'rakesh', '9871816901, 2023-03-18'),
(6, 'swarnima', '9988776655', '2023-03-18'),

-------------------------------------------------------------------------

--
--Table structure for table "items
--

DROP TABLE IF EXISTS 'items';
CREATE TABLE IF NOT EXISTS 'items' ( 
    'id' int(11) NOT NULL AUTO_INCREMENT, 
    'item_name' char(38) DEFAULT NULL,
    'price' float(8,2) DEFAULT NULL,
    PRIMARY KEY ("id")
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;


--
--Dumping data for table "items"
--

INSERT INTO 'items' ('id', 'item_name', 'price') VALUES
(1, 'fan', 1250.00),
(2, 'Tubelight', 250.00), 
(3, 'Bulb-20', 350.00), 
(4, 'Bulb-40', 300.00),
(5, 'Bulb-60', 380.00),
(6, 'mosquito-racket', 380.00),
(7, 'pan', 10.00);


-- -----------------------------------------------------------------------

--
--Table structure for table "Login"
--

DROP TABLE IF EXISTS 'login';
CREATE TABLE IF NOT EXISTS 'login' ( 
    'id' int(11) NOT NULL AUTO_INCREMENT, 
    'name' char(30) DEFAULT NULL, 
    'pwd' char(30) DEFAULT NULL, 
    PRIMARY KEY ('id') 
) ENGINE=MyISAM AUTO INCREMENT-2 DEFAULT CHARSET=latin1;

--
--Dumping data for table 'Login'
--
INSERT INTO 'login' ('id','name','pwd') VALUES
(1.'varun'.'123456');

-- ------------------------------------------------------------------------------------------

--
--Table structure for table transaction
--

DROP TABLE IF EXISTS 'transaction';
CREATE TABLE IF NOT EXISTS 'transaction' (
    'id' int(11) NOT NULL AUTO_INCREMENT, 
    'item_id' int(11) DEFAULT NULL, 
    'qty' int(11) DEFAULT NULL, 
    'bill_id' int(11) DEFAULT NULL, 
    PRIMARY KEY ('id')
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
--Dumping data for table 'transaction'
--

INSERT INTO 'transaction' ('id', 'item_id', 'qty', 'bill_id') VALUES

(1, 4, 1, 1),

(2, 3, 1, 1),

(3, 1, 1, 1),

(4, 1, 1, 2),

(5, 5, 1, 2),

(6, 6, 1, 2),

(7, 3, 1, 2),

(8, 2, 1, 2),

(9, 1, 18, 4),

(10, 2, 20, 4), 

(11, 3, 12, 4),

(12, 1, 2, 5),

(13, 1, 2, 5),

(14, 1, 1, 6),

(15, 2, 3, 6),

(16, 4, 18, 6);

COMMIT;

/*140101 SET CHARACTER SET CLIENT BOLD CHARACTER SET CLIENT */;
/*140101 SET CHARACTER SET RESULTS-OLD CHARACTER SET RESULTS */; 
/*140101 SET COLLATTON CONNECTION BOLD COLLATION CONNECTION */;