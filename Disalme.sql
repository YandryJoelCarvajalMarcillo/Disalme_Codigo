-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 17, 2022 at 06:55 PM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id18083477_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '4fda380c5b70eb3e6b9e2d2dbe089668', '2017-01-24 16:21:18', '07-12-2021 08:03:09 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(5, 'Muebles', 'Muebleria', '2017-01-24 19:19:54', ''),
(7, 'Construccion', 'Construccion', '2021-12-22 05:45:23', NULL),
(8, 'Madera', 'Maderas, tableros  otro tipos...', '2022-01-17 15:18:35', NULL),
(9, 'Electricidad', 'Extensiones, enchufes, boquillas...', '2022-01-17 15:19:29', NULL),
(10, 'Herramientas', 'Taladros, pulidoras...', '2022-01-17 15:20:30', NULL),
(11, 'Pintura', 'Pinturas, pegamentos..', '2022-01-17 15:21:16', NULL),
(12, 'Baño y Fonanería', 'Aparatos sanitarios', '2022-01-17 15:23:57', NULL),
(13, 'Cocina', 'Accesorios, muebles, aparatos...', '2022-01-17 16:11:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 1, '2', 1, '2020-06-22 13:58:56', 'Internet Banking', NULL),
(8, 1, '1', 1, '2020-06-22 14:06:25', 'COD', NULL),
(9, 1, '12', 1, '2020-06-22 14:06:25', 'COD', NULL),
(10, 4, '2', 3, '2020-06-23 00:58:37', 'Debit / Credit card', NULL),
(11, 4, '18', 1, '2020-06-23 01:54:11', 'Internet Banking', NULL),
(12, 4, '20', 1, '2020-06-23 03:02:41', 'Internet Banking', NULL),
(13, 4, '15', 1, '2020-06-23 03:04:45', 'COD', NULL),
(14, 4, '12', 1, '2020-06-23 03:07:50', NULL, NULL),
(15, 4, '15', 1, '2020-06-23 03:07:50', NULL, NULL),
(16, 4, '2', 1, '2020-06-23 03:23:40', NULL, NULL),
(17, 5, '2', 1, '2021-12-07 23:22:35', 'Debit / Credit card', NULL),
(18, 5, '2', 1, '2021-12-07 23:23:54', 'COD', NULL),
(19, 5, '16', 1, '2021-12-07 23:37:53', 'Debit / Credit card', NULL),
(20, 5, '4', 1, '2021-12-11 06:49:09', 'Debit / Credit card', 'En proceso'),
(21, 5, '4', 1, '2021-12-11 06:49:17', 'Debit / Credit card', NULL),
(22, 5, '2', 1, '2021-12-27 18:01:35', 'Debit / Credit card', NULL),
(23, 1, '17', 1, '2021-12-27 22:03:57', 'Debit / Credit card', NULL),
(24, 1, '17', 1, '2021-12-27 22:22:14', 'Debit / Credit card', NULL),
(25, 1, '17', 1, '2021-12-27 23:03:55', 'Debit / Credit card', NULL),
(26, 1, '17', 1, '2021-12-28 00:00:02', 'Debit / Credit card', NULL),
(27, 1, '17', 1, '2021-12-28 00:23:31', 'Debit / Credit card', NULL),
(28, 5, '21', 1, '2021-12-28 00:26:17', NULL, NULL),
(29, 1, '20', 1, '2021-12-28 00:33:33', 'Debit / Credit card', NULL),
(30, 7, '1', 1, '2022-01-11 16:25:30', NULL, NULL),
(31, 7, '3', 1, '2022-01-11 16:25:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 20, 'En proceso', 'se va a enviar', '2021-12-11 06:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 10, 13, 'Agarres para roperos', 'Plastic', 3, 3, '<span style=\"font-family: &quot;Open Sans&quot;, sans-serif; font-size: 13.7136px; letter-spacing: -0.205704px;\">National Hardware, Tirador / elevador tipo barra diseñado para ventanas, gabinetes, puertas, cajones y más. Ofrece un diseño atractivo y fácil de agarrar. Se adapta a una variedad de aplicaciones.&nbsp;</span><br>', 'Agarradera para roperos.jpg', 'agadrrera2.jpg', 'agarradera3.jpg', 0, 'En Stock', '2022-01-17 15:52:44', NULL),
(23, 12, 14, 'Basurero', 'Disalme', 6, 6, '<span style=\"color: rgb(108, 107, 106); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 16px;\">Tiene cesta extraíble para facilitar la eliminación de la basura.&nbsp;</span><br><span style=\"color: rgb(108, 107, 106); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 16px;\">Resistente, práctico y funcional.&nbsp;</span><br><span style=\"color: rgb(108, 107, 106); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 16px;\">Fácil de lavar.&nbsp;</span><br><span style=\"color: rgb(108, 107, 106); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 16px;\">Se puede utilizar en cocinas, oficinas, baños y entornos comerciales.&nbsp;</span><br><p style=\"box-sizing: border-box; margin-bottom: 0px; padding: 0px; color: rgb(108, 107, 106); font-family: &quot;Source Sans Pro&quot;, Arial, sans-serif; font-size: 16px;\">Por su diseño clásico, se adapta a diferentes ambientes y decoración.</p>', 'Basurero.jpg', 'basurero2.jpg', 'basurero3.jpg', 0, 'En Stock', '2022-01-17 15:58:22', NULL),
(24, 9, 15, 'Boquilla de focos', 'Century', 2, 2, '<p style=\"border: 0px; outline: 0px; padding: 0px; vertical-align: baseline; color: rgb(102, 102, 102); font-family: &quot;Open Sans&quot;, Arial, Helvetica, sans-serif;\"><span class=\"TextRun SCXW98904146\" lang=\"ES-EC\" xml:lang=\"ES-EC\" style=\"border: 0px; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">Boquilla Foco Lámpara Porcelana E12, ideal para usarlo&nbsp;</span><span class=\"TextRun SCXW98904146\" lang=\"ES-EC\" xml:lang=\"ES-EC\" style=\"border: 0px; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">con&nbsp; focos</span><span class=\"TextRun SCXW98904146\" lang=\"ES-EC\" xml:lang=\"ES-EC\" style=\"border: 0px; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">, lámparas led o dicroicos en el hogar, oficinas y negocios.</span><span class=\"EOP SCXW98904146\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335551550&quot;:6,&quot;335551620&quot;:6,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\" style=\"border: 0px; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\">&nbsp;</span></p><div><span class=\"EOP SCXW98904146\" data-ccp-props=\"{&quot;201341983&quot;:0,&quot;335551550&quot;:6,&quot;335551620&quot;:6,&quot;335559739&quot;:160,&quot;335559740&quot;:259}\" style=\"border: 0px; font-style: inherit; margin: 0px; outline: 0px; padding: 0px; vertical-align: baseline;\"><br></span></div>', 'boquilla de fotos.jpeg', 'boquilla2.jpg', 'boquilla3.jpg', 0, 'En Stock', '2022-01-17 16:04:01', NULL),
(25, 11, 16, 'Brochas', 'Wilson', 5, 6, 'Versatilidad y flexibilidad para pintar en todo tipo de superficie y dejar un\r\nbuen acabado.\r\nÓptima para pintar superficies difíciles incluyendo metal, madera, paredes\r\nexteriores y más.\r\nGran resistencia química en presencia de solventes.<br>', 'Brochas Masisa.jpg', 'Brocha.jpeg', 'brocha3.jpg', 0, 'En Stock', '2022-01-17 16:09:48', NULL),
(26, 13, 17, 'Canastillas ', 'Stink', 75, 80, 'Facilita el llenado y la limpieza de utensilios domésticos. incluye el material de montaje.<div><br>Estas cestas vienen con un par de extensión completa (rodamientos de bola permite la cesta para ser retirado del gabinete sin problemas y el beneficio añadido de tener rodamientos de cierre suave asegura suave, seguro Cierre cada vez.<br></div>', 'Canastillas para cocina.jpg', 'canastilla2.jpg', 'canastilla3.jpg', 0, 'En Stock', '2022-01-17 16:17:28', NULL),
(27, 10, 18, 'Cáncamos', 'Sin marca', 0, 0, '<font color=\"#333e48\" face=\"Open Sans, HelveticaNeue-Light, Helvetica Neue Light, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif\"><span style=\"font-size: 14px; letter-spacing: -0.14px;\">&nbsp;Se clava o se tornilla en la pared mediante taco o madera y se utiliza para tensar lazos, cortinas cuerdas u otros objetos., cuadros, lámparas, sujeción&nbsp;de persianas</span></font><br>', 'cancomo.jpeg', 'cancamo2.png', 'cancamo3.png', 0, 'En Stock', '2022-01-17 16:24:16', NULL),
(28, 7, 19, 'Carreta', 'Bellota', 55, 60, '<p style=\"text-align: left;\"><span style=\"color: rgb(102, 102, 102); font-family: &quot;Proxima Nova&quot;, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;\">Carretilla, ideal para trabajos en la construcción o el campo.</span></p>', 'Carreta.jpeg', 'carreta2.jpg', 'carreta3.jpg', 0, 'En Stock', '2022-01-17 16:31:05', NULL),
(29, 10, 20, 'Cerradura de manija', 'Sin marca', 18, 15, '<span style=\"color: rgb(130, 130, 130); font-family: robotoregular, sans-serif; font-size: 14px;\">Cerradura tubular Mitú Grado 3 de diseño contemporáneo. Cada una de las aplicaciones de ésta cerradura tienen características únicas que se adecuan a la necesidad de su puerta; desde funciones básicas de sólo privacidad como cerraduras de baño hasta soluciones más seguras como cerraduras de entrada principal.</span><br>', 'cerradura.jpg', 'cerradura2.jpg', 'cerradura3.jpg', 0, 'En Stock', '2022-01-17 16:38:18', NULL),
(30, 10, 20, 'Cerrojo mariposa', 'Yale', 21, 23, '<span style=\"color: rgb(51, 62, 72); font-family: &quot;Open Sans&quot;, HelveticaNeue-Light, &quot;Helvetica Neue Light&quot;, &quot;Helvetica Neue&quot;, Helvetica, Arial, &quot;Lucida Grande&quot;, sans-serif; font-size: 14px; letter-spacing: -0.14px;\">Para puertas de abrir hacia adentro o hacia afuera.</span><br>', 'cerrojos.jpg', 'cerrojo2.jpg', 'cerrojo3.jpg', 0, 'En Stock', '2022-01-17 16:42:03', NULL),
(31, 11, 21, 'Cinta aislante', 'Sin marca', 1, 1, '<p class=\"MsoNormal\">CINTA ELECTRICA AISLANTE DE VINIL<br>\r\nUSO GENERAL 1500<br>\r\n<br>\r\nUSAR PREFERENTE PARA INSTALACIONES EN INTERIORES Y HASTA 600V<br>\r\nTEMPERATURA DE ORPERACION 0° - 80°C<o:p></o:p></p>', 'cinta aislante.jpeg', 'cintaaislante2.jpg', 'cintaaislante3.jpg', 0, 'En Stock', '2022-01-17 16:48:12', NULL),
(32, 11, 21, 'Cinta de papel', 'Romeral', 2, 2, '<span style=\"color: rgb(52, 61, 61); font-family: Roboto; font-size: 16px;\">Sujeción, empaquetado e instalaciones varias. Uso general: refrigeración, textil, papel y gráfica.</span><br>', 'cinta de papel.jpeg', 'cintapalpel2.jpg', 'cintapapel3.jpg', 0, 'En Stock', '2022-01-17 16:51:21', NULL),
(33, 11, 21, 'Empastes', 'Sika', 13, 13, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Klavika Light&quot;; font-size: 18.1px;\">Empaste Interior Blanco es una base acrílica para pinturas, que da como resultado un excelente acabado estético y decorativo.</span><br>', 'Empaste.jpeg', 'empaste2.jpg', 'empaste3.jpg', 0, 'En Stock', '2022-01-17 16:59:41', NULL),
(34, 9, 15, 'Enchufe', 'Sin marca', 1, 2, '<p class=\"MsoNormal\">Especificación: ideal para extensiones y conexiones de\r\naparatos.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Características: polarizado.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Con conexión a tierra.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Voltaje de 110V.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Fácil de instalar.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Larga vida útil.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Material: fabricado en material resistente.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Rosca metálica.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', 'enchufe.jpeg', 'enchufe2.jpg', 'enchufe3.jpg', 0, 'En Stock', '2022-01-17 17:04:30', NULL),
(35, 9, 15, 'Extensión', 'Sin marca', 5, 6, '<div class=\"\" style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: Fabriga, -apple-system, BlinkMacSystemFont, &quot;avenir next&quot;, avenir, &quot;helvetica neue&quot;, helvetica, ubuntu, roboto, noto, &quot;segoe ui&quot;, arial, sans-serif; font-size: 16px;\"><div style=\"box-sizing: border-box;\"><div class=\"vtex-flex-layout-0-x-flexRow\" style=\"box-sizing: border-box;\"><section class=\"vtex-store-components-3-x-container ph3 ph5-m ph2-xl mw9 center \" style=\"box-sizing: border-box; padding-left: 15px; padding-right: 15px; margin-left: auto; margin-right: auto; max-width: 75rem !important;\"><div class=\"flex mt0 mb0 pt0 pb0    justify-start  vtex-flex-layout-0-x-flexRowContent items-stretch w-100\" style=\"box-sizing: border-box; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 0px; display: flex; -webkit-box-align: stretch; align-items: stretch; -webkit-box-pack: start; justify-content: flex-start; width: 1170px;\"><div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth   flex\" style=\"box-sizing: border-box; padding-right: 0px; display: flex; -webkit-box-align: stretch; align-items: stretch; justify-content: center; width: 1170px;\"><div class=\"vtex-flex-layout-0-x-flexCol  ml0 mr0 pl0 pr0      flex flex-column h-100 w-100\" style=\"box-sizing: border-box; padding-left: 0px; margin-left: 0px; padding-right: 0px; margin-right: 0px; display: flex; -webkit-box-orient: vertical; flex-direction: column; -webkit-box-direction: normal; height: 168.391px; width: 1170px;\"><div class=\"vtex-flex-layout-0-x-flexColChild pb0\" style=\"box-sizing: border-box; padding-bottom: 0px; height: 168.391px;\"><div class=\"vtex-tab-layout-0-x-container vtex-tab-layout-0-x-container--home\" style=\"box-sizing: border-box;\"><div class=\"vtex-tab-layout-0-x-contentContainer w-100\" style=\"box-sizing: border-box; width: 1170px;\"><div class=\"vtex-tab-layout-0-x-contentItem w-100\" style=\"box-sizing: border-box; width: 1170px;\"><div class=\"vtex-flex-layout-0-x-flexRow\" style=\"box-sizing: border-box;\"><div class=\"flex mt0 mb7 pt0 pb0    justify-start  vtex-flex-layout-0-x-flexRowContent items-stretch w-100\" style=\"box-sizing: border-box; padding-top: 0px; margin-top: 0px; padding-bottom: 0px; margin-bottom: 2rem; display: flex; -webkit-box-align: stretch; align-items: stretch; -webkit-box-pack: start; justify-content: flex-start; width: 1170px;\"><div class=\"pr0 items-stretch vtex-flex-layout-0-x-stretchChildrenWidth   flex\" style=\"box-sizing: border-box; padding-right: 0px; display: flex; -webkit-box-align: stretch; align-items: stretch; justify-content: center; width: 1170px;\"><div class=\"vtex-store-components-3-x-productDescriptionContainer\" style=\"box-sizing: border-box; width: 1170px;\"><div class=\"vtex-store-components-3-x-productDescriptionText c-muted-1\" style=\"box-sizing: border-box; color: rgb(114, 114, 115);\"><div class=\"vtex-store-components-3-x-container relative\" style=\"box-sizing: border-box; position: relative; padding-left: 15px; padding-right: 15px; transition: all 600ms ease-in-out 0s; height: auto; overflow: hidden; max-width: 75rem !important;\"><div class=\"vtex-store-components-3-x-content h-auto\" style=\"box-sizing: border-box; height: auto;\">Extensión fácil de usar y excelente calidad.</div></div></div></div></div></div></div></div></div></div></div></div></div></div></section></div></div></div>', 'Extensión.jpeg', 'extencion2.jpg', 'extencion3.jpg', 0, 'En Stock', '2022-01-17 17:08:07', NULL),
(36, 10, 22, 'Flexómetro ', 'Stanley', 7, 8, '<p class=\"MsoNormal\">Revestimiento Tylon que aumenta hasta un 50% la durabilidad\r\nde la hoja.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Diseño compacto de la caja con foma ergonómica, máximo\r\nconfort y fácil manejo.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Gran resistencia a los golpes gracias a la caja 100%\r\ncontorneada de caucho que protege la cinta.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Revestimiento mate de la cinta que facilita la lectura sin\r\nbrillos.<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Dispone de fijador y rebobinado automático<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\">Anchura: 19 mm<o:p></o:p></p>\r\n\r\n<p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p>', 'flexometro.jpeg', 'flexometro2.jpg', 'flexometro3.jpg', 0, 'En Stock', '2022-01-17 17:13:31', NULL),
(37, 9, 15, 'Foco ahorrador', 'Led', 2, 2, '<p class=\"MsoNormal\">FOCO LED 5w 9w LUZ BLANCA O AMARILLA TIPO BULBO AHORRA $.\r\nEXCELENTE BRILLO Y DURACION.<br>\r\nROSCA NORMAL E27<o:p></o:p></p>', 'Foco ahorrativo.jpeg', 'foco2.jpg', 'foco3.jpg', 0, 'Fuera de Stock', '2022-01-17 17:18:36', NULL),
(38, 13, 23, 'Llave flexible', 'Sin marca', 7, 8, '<span style=\"color: rgb(102, 102, 102); font-family: &quot;Proxima Nova&quot;, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;\">Grifo flexible, 60 cm de tubo flexible, esta fabricado en Acero inoxidable, para una mayor durabilidad, gira 360 grados</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; color: rgb(102, 102, 102); font-family: &quot;Proxima Nova&quot;, -apple-system, &quot;Helvetica Neue&quot;, Helvetica, Roboto, Arial, sans-serif; font-size: 20px;\">', 'LLave flexible.jpg', 'llave2.jpg', 'llave3.jpg', 0, 'En Stock', '2022-01-17 17:24:53', NULL),
(39, 8, 24, 'Madera solida', 'Sin marca', 12, 15, '<p class=\"MsoNormal\">Tablero formado por listones de madera maciza de Pino\r\nRadiata de igual sección y unidos entre sí por adhesivos homologados. De esta\r\nmanera se obtienen paneles de gran formato con buena estabilidad ante cualquier\r\ntipo de mecanización: corte, fresado, tallado, taladrado, etc.<o:p></o:p></p>', 'Maderas, pino.jpg', 'madera2.jpg', 'madera3.jpg', 0, 'En Stock', '2022-01-17 17:30:07', NULL),
(40, 7, 19, 'Concretera', 'Sin marca', 460, 500, '<p class=\"MsoNormal\">Motor eléctrico, 110v, 850w, 1 1/8hp, velocidad tambor:\r\n30vpm, apertura del tambor 375mm, maneja estuco, mortero y hormigón a 30rpm en\r\nel tambor. Uso en construcción y agrícola.<o:p></o:p></p>', 'mezcladora.jpeg', 'mezcladora2.jpg', 'mezcladora3.jpg', 0, 'En Stock', '2022-01-17 17:34:27', NULL),
(41, 10, 22, 'Nivelador', 'Stanley', 10, 12, '<p class=\"MsoNormal\"><span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Fabricado en cuerpo de aluminio</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased;\">\r\n<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Burbuja con ventana superior para mayor visibilidad</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased;\">\r\n<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Tres burbujas (vertical, horizontal y de 45º) le permiten\r\nconseguir los mejores resultados de nivelacion.</span><br style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased;\">\r\n<span style=\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Proporciona una gran resistencia a la deformación, contra\r\nchoques y contra la abrasión, por lo que es ideal para trabajos de construcción\r\nen obras.</span><o:p></o:p></p>', 'Nivelador.jpg', 'nivelador2.jpg', 'nivelador3.jpg', 0, 'En Stock', '2022-01-17 17:55:25', NULL),
(42, 10, 22, 'Pala', 'Tramontina', 13, 15, '<p class=\"MsoNormal\">Fabricante: Tramontina<br>\r\nMEDIDAS:<br>\r\nLargo: 100 cm<br>\r\nAncho: 20 cm<br>\r\nMaterial: Metal+Madera<br>\r\nColor: Negro, Mango de Madera<br>\r\nCantidad: 1 unidad<br>\r\nEstado: nueva<o:p></o:p></p>', 'pala.jpeg', 'pala2.jpg', 'pala3.jpg', 0, 'En Stock', '2022-01-17 18:49:34', NULL),
(43, 11, 21, 'Madetec Barniz Poliuetano Y20', 'Pintuco', 18, 20, '<span style=\"box-sizing: border-box; font-weight: bolder; color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 14px;\">Madetec Barniz Poliuetano Y20</span><span style=\"color: rgb(51, 51, 51); font-family: Montserrat, sans-serif; font-size: 14px;\">&nbsp;es un barniz alquídico de secamiento al aire tipo 1, fabricado a partir de resinas de poliuretano modificado, de alta resistencia y durabilidad, brinda un excelente acabado brillante para superficies de madera. Una vez seco, proporciona una gran dureza resistente a rayones menores.</span><br>', 'pintura de madera.jpeg', 'pintura2.jpg', 'pintura3.jpg', 0, 'En Stock', '2022-01-17 18:53:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 10, 'Agarres', '2022-01-17 15:35:17', NULL),
(14, 12, 'Accesorios de baño', '2022-01-17 15:53:57', NULL),
(15, 9, 'Boquilla y bombillas', '2022-01-17 15:59:04', '17-01-2022 11:01:02 AM'),
(16, 11, 'Útiles de pintura', '2022-01-17 16:05:04', NULL),
(17, 13, 'Accesorios', '2022-01-17 16:11:51', NULL),
(18, 10, 'Fijación ', '2022-01-17 16:19:52', NULL),
(19, 7, 'Maquinas', '2022-01-17 16:26:16', NULL),
(20, 10, 'Cerrajería ', '2022-01-17 16:33:39', NULL),
(21, 11, 'ADHESIVOS, COLAS Y PEGAMENTOS', '2022-01-17 16:44:52', NULL),
(22, 10, 'Herramientas manual', '2022-01-17 17:10:37', NULL),
(23, 13, 'Línea blanca', '2022-01-17 17:22:10', NULL),
(24, 8, 'Tableros y tablas', '2022-01-17 17:26:11', '17-01-2022 12:27:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:49:46', NULL, 0),
(25, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 13:54:27', '22-06-2020 07:42:06 PM', 1),
(26, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2020-06-22 20:37:14', NULL, 1),
(27, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 00:58:24', '22-06-2020 08:40:53 PM', 1),
(28, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 01:45:10', NULL, 1),
(29, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:26', NULL, 0),
(30, 'platea21@platea21.com', 0x3a3a3100000000000000000000000000, '2020-06-23 03:23:36', NULL, 1),
(31, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:19:47', '07-12-2021 06:24:15 PM', 1),
(32, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:35:00', '07-12-2021 06:44:41 PM', 1),
(33, 'yandryrap@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-07 23:41:15', NULL, 0),
(34, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:46:48', NULL, 0),
(35, 'platea21@platea21.com', 0x3230302e3130372e3234382e32333300, '2021-12-07 23:47:42', NULL, 0),
(36, 'platea21@platea21.com', 0x3230302e3130372e3234382e32333300, '2021-12-07 23:47:53', NULL, 0),
(37, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:51:55', NULL, 0),
(38, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:52:04', NULL, 0),
(39, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:52:10', NULL, 0),
(40, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:52:20', NULL, 0),
(41, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:53:00', NULL, 0),
(42, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:54:21', NULL, 0),
(43, 'platea21@platea21.com', 0x3139302e35322e3230352e3133360000, '2021-12-07 23:54:29', NULL, 0),
(44, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-08 01:38:30', NULL, 1),
(45, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-11 06:44:40', NULL, 1),
(46, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-27 05:12:48', NULL, 1),
(47, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-27 18:01:16', '27-12-2021 07:25:01 PM', 1),
(48, 'josemaquinareyes@gmail.com', 0x3139302e35322e3230352e3133360000, '2021-12-28 00:25:37', NULL, 1),
(49, 'joelmarcillo2021@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-30 00:06:27', NULL, 0),
(50, 'joelmarcillo2021@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-30 00:06:41', NULL, 0),
(51, 'joelmarcillo2021@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-30 00:06:54', NULL, 0),
(52, 'joelmarcillo2021@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-30 00:07:35', NULL, 0),
(53, 'joelmarcillo2021@gmail.com', 0x3135372e3130302e3137302e31333600, '2021-12-30 00:10:21', '29-12-2021 08:13:06 PM', 1),
(54, 'eberdayan17@gmail.com', 0x3135372e3130302e39322e3131350000, '2022-01-11 16:25:26', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Platea21', 'platea21@platea21.com', 948445199, '77821d6f09aad66ace339068f6b7f61c', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-23 00:58:07', NULL),
(5, 'Jose Javier Reyes Macias', 'josemaquinareyes@gmail.com', 961553152, '68f97ef4903cc03977dcb65e88a40d5a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-07 23:19:30', NULL),
(6, 'Yandry Carvajal', 'joelmarcillo2021@gmail.com', 983985561, '78780221751e27fc9ae68c116221b278', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-30 00:10:10', NULL),
(7, 'Eber', 'eberdayan17@gmail.com', 997011818, '36c3dfab412f6221c8916ca96051d19a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-11 16:25:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 12, '2020-06-23 03:05:43'),
(3, 6, 17, '2021-12-30 00:43:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
