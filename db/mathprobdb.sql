-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2017 at 03:56 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mathprobdb`
--

-- --------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `mathprobdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mathprobdb`;--

-- Table structure for table `problem`
--

CREATE TABLE IF NOT EXISTS `problem` (
  `pid` int(10) unsigned NOT NULL,
  `content` varchar(5000) NOT NULL,
  `porder` int(10) DEFAULT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`pid`, `content`, `porder`, `keywords`) VALUES
(1, 'Let \\(a, b, c\\) be the side lengths, and \\(h_a, h_b, h_c\\) be the altitudes, respectively, and \\(r\\) be the inradius\r\nof a triangle. Prove the inequality\r\n\\[ \\frac{1}{h_a - 2 r} + \\frac{1}{h_b - 2 r} + \\frac{1}{h_c - 2 r} \\ge \\frac{3}{r}.\r\n\\]', 1, ''),
(2, 'Let \\(a, b, c; l_{\\alpha}, l_{\\beta}, l_{\\gamma}\\) be the lengths of the sides and the bisectors of respective\r\nangles. Let \\(s\\) be the semi-perimeter and \\(r\\) denote the inradius of a given triangle. Prove the inequality\r\n\\[ \\frac{l_{\\alpha}}{a} + \\frac{l_{\\beta}}{b} + \\frac{l_{\\gamma}}{c} \\le \\frac{s}{2 r}.\r\n\\]', 2, ''),
(3, 'Let \\(a, b, c; l_{\\alpha}, l_{\\beta}, l_{\\gamma}\\) be the lengths of the sides and the bisectors of respective\r\nangles. Let \\(R\\) and \\(r\\) be the circumradius and the inradius, respectively, of a given triangle. \r\nProve the inequality\r\n\\[ 18 r^2 \\sqrt{3} \\le a l_{\\alpha} + b l_{\\beta} + c l_{\\gamma} \\le 9 R^2.\r\n\\]', 3, ''),
(4, 'Let \\(a, b, c\\) be the lengths of the sides a triangle, with circumradius \\(R = \\frac{1}{2}\\). Prove the inequality\r\n\\[ \\frac{a^4}{b + c - a} + \\frac{b^4}{a + c - b} + \\frac{c^4}{a + b - c} \\ge 9 \\sqrt{3}.\r\n\\]', 4, ''),
(5, 'Let \\(a, b, c\\) be the side lengths of a triangle. Prove the inequality\r\n\\[ \\frac{a}{3 a - b + c} + \\frac{b}{3 b - c + a} + \\frac{c}{3 c - a + b} \\ge 1.\r\n\\]', 5, ''),
(6, 'Let \\(h_a, h_b, h_c\\) be the lengths of the altitudes, and \\(R\\) and \\(r\\) be the circumradius and inradius, respectively, of a given triangle. Prove the inequality\r\n\\[ h_a + h_b + h_c \\le 2 R + 5 r.\r\n\\]', 6, ''),
(7, 'Let \\(a, b, c\\) be the side lengths, and \\(\\alpha, \\beta, \\gamma\\) be the angles of a given triangle, respectively. Prove the inequality\r\n\\[ a \\left(\\frac{1}{\\beta} + \\frac{1}{\\gamma}\\right) + b \\left(\\frac{1}{\\gamma} + \\frac{1}{\\alpha}\\right) +\r\nc \\left(\\frac{1}{\\alpha} + \\frac{1}{\\beta}\\right)\r\n \\ge 2 \\left(\\frac{a}{\\alpha} + \\frac{b}{\\beta} + \\frac{c}{\\gamma}\\right).\r\n\\]', 7, ''),
(8, 'Let \\(a, b, c\\) be the lengths of the sides of a given triangle, and \\(\\alpha, \\beta, \\gamma\\) be the respective \r\nangles (in radians). Prove the inequality\r\n<p></p>\r\n<ol>\r\n  <li>Â  \\(\\dfrac{1}{\\alpha} + \\dfrac{1}{\\beta} + \\dfrac{1}{\\gamma} \\ge \\dfrac{9}{\\pi} \\)</li>\r\n  <p></p>\r\n  <li>Â  \\(\\dfrac{b + c - a}{\\alpha} + \\dfrac{c + a - b}{\\beta} + \\dfrac{a + b - c}{\\gamma} \\ge \\dfrac{6s}{\\pi}\\),\r\n  where \\(s = \\dfrac{a + b + c}{2} \\).</li>\r\n  <p></p>\r\n  <li>Â  \\(\\dfrac{b + c - a}{a \\alpha} + \\dfrac{c + a - b}{b \\beta} + \\dfrac{a + b - c}{c \\gamma} \\ge \\dfrac{9}{\\pi}\\).</li>\r\n</ol>', 8, ''),
(9, 'Let \\(X\\) be an arbitrary interior point of a given regular \\(n\\)-gon with side-length \\(a\\). Let \\(h_1, h_2, \\ldots,\r\nh_n\\) be the distances from \\(X\\) to the sides of the \\(n\\)-gon. Prove that\r\n\\[ \\frac{1}{h_1} + \\frac{1}{h_2} + \\cdots + \\frac{1}{h_n} > \\frac{2 \\pi}{a}.\r\n\\]', 9, ''),
(10, 'Prove that among the lengths of the sides of an arbitrary \\(n\\)-gon (\\(n \\ge 3\\)), there always exist two of them\r\n(let''s denote them by \\(b\\) and \\(c\\)) such that \\(1 \\le \\dfrac{d}{c} < 2\\).', 10, ''),
(11, 'Let \\(a_1, a_2, a_3, a_4\\) be the lengths of the sides, and \\(s\\) be the semi-perimeter of arbitrary quadrilateral. \r\nProve that\r\n\\[ \\sum^4_{i = 1} \\frac{1}{s + a_i} \\le \\frac{2}{9} \\sum^4_{1 \\le i < j \\le 4} \\frac{1}{\\sqrt{(s - a_i)(s - a_j)}}.\r\n\\]', 11, ''),
(12, 'Let \\(n \\in \\mathbb N\\), and \\(\\alpha, \\beta, \\gamma\\) be the angles of a given triangle. \r\nProve the inequality\r\n\\[ \\cot^n \\frac{\\alpha}{2} + \\cot^n \\frac{\\beta}{2} + \\cot^n \\frac{\\gamma}{2} \\ge 3^{(n+2)/2}.\r\n\\]', 12, ''),
(13, 'Let \\(\\alpha, \\beta, \\gamma\\) be the angles of an arbitrary acute triangle. Prove that\r\n\\[ 2 (\\sin \\alpha + \\sin \\beta + \\sin \\gamma) > 3 (\\cos \\alpha + \\cos \\beta + \\cos \\gamma).\r\n\\]', 13, ''),
(14, 'Let \\(\\alpha, \\beta, \\gamma\\) be the angles of a triangle. Prove the inequality\r\n\\[ \\sin \\alpha + \\sin \\beta + \\sin \\gamma \\ge \\sin 2\\alpha + \\sin 2\\beta + \\sin 2\\gamma.\r\n\\]', 14, ''),
(15, 'Let \\(\\alpha, \\beta, \\gamma\\) be the angles of a triangle. Prove the inequality\r\n\\[ \\cos \\alpha + \\sqrt{2} (\\cos \\beta + \\cos \\gamma) \\le 2.\r\n\\]', 15, ''),
(16, 'Let \\(\\alpha, \\beta, \\gamma\\) be the angles of a triangle and let \\(t\\) be a real number. Prove the inequality\r\n\\[ \\cos \\alpha + t (\\cos \\beta + \\cos \\gamma) \\le 1 + \\frac{t^2}{2}.\r\n\\]', 16, ''),
(17, 'Let \\(0 \\le \\alpha, \\beta, \\gamma \\le 90^{\\circ}\\) such that \\(\\sin \\alpha + \\sin \\beta + \\sin \\gamma = 1\\). Prove the inequality\r\n\\[ \\tan^2 \\alpha + \\tan^2 \\beta + \\tan^2 \\gamma \\le \\frac{3}{8}.\r\n\\]', 17, ''),
(18, 'Let \\(a, b, c\\) be positive real numbers such that \\(a + b + c = 3\\). Prove the inequality\r\n\\[ (1 + a + a^2)(1 + b + b^2)(1 + c +c^2) \\ge 9 (a b + b c + c a).\r\n\\]', 18, ''),
(19, 'Let \\(a, b, c > 0\\) such that \\(a + b + c = 1\\). Prove the inequality\r\n\\[ 6 (a^3 + b^3 + c^3) + 1 \\ge 5 (a^2 + b^2 + c^2).\r\n\\]', 19, ''),
(20, 'Let \\(x, y, z \\in {\\mathbb R}^+\\) such that \\(x + y + z = 1\\). Prove the inequality\r\n\\[ (1 - x^2)^2 + (1 - y^2)^2 + (1 - z^2)^2 \\le (1 + x)(1 + y)(1 + z).\r\n\\]', 20, ''),
(21, 'Let \\(x, y, z\\) be nonnegative real numbers such that \\(x^2 + y^2 + z^2 = 1\\). Prove the inequality\r\n\\[ (1 - x y)(1 - y x)(1 - z x) \\ge \\frac{8}{27}.\r\n\\]', 21, ''),
(22, 'Let \\(a, b, c \\in R^+\\) such that \\(\\dfrac{1}{a + 1} + \\dfrac{1}{b + 1} + \\dfrac{1}{c + 1} = 2\\). Prove the inequality\r\n<p></p>\r\n<ol>\r\n  <li> Â  \\(\\dfrac{1}{8 a^2 + 1} + \\dfrac{1}{8 b^2 + 1} + \\dfrac{1}{8 c^2 + 1} \\ge 1\\)</li>\r\n  <p></p>\r\n  <li> Â  \\(\\dfrac{1}{4 a b + 1} + \\dfrac{1}{4 b c + 1} + \\dfrac{1}{4 c a + 1} \\ge \\dfrac{3}{2}.\\)</li>\r\n</ol>', 22, ''),
(23, 'Let \\(a, b, c > 0\\) be real numbers such that \\(a b + b c + c a = 1\\). Prove the inequality\r\n\\[ \\frac{1}{a + b} + \\frac{1}{b + c} + \\frac{1}{c + a} - \\frac{1}{a + b + c} \\ge 2.\r\n\\]', 23, ''),
(24, 'Let \\(a, b, c \\ge 0\\) be real numbers. Prove the inequality\r\n\\[ \\frac{a b + 4 b c + c a}{a^2 + b c} + \\frac{b c + 4 c a + a b}{b^2 + c a} + \r\n\\frac{c a + 4 a b + b c}{c^2 + a b} \\ge 6.\r\n\\]', 24, ''),
(25, 'Let \\(a, b, c\\) be positive real numbers such that \\(a + b + c + 1 = 4 a b c\\). Prove the inequality\n\\[ \\frac{1}{a^4 + b + c} + \\frac{1}{b^4 + c + a} + \\frac{1}{c^4 + a + b} \\le \\frac{3}{a + b + c}.\n\\]', 25, ''),
(26, 'Let \\(x, y, z > 0\\) be real numbers such that \\(x + y + z = 1\\). Prove the inequality\r\n\\[ (x^2 + y^2)(y^2 + z^2)(z^2 + x^2) \\le \\frac{1}{32}.\r\n\\]', 26, ''),
(27, 'Let \\(x, y, z \\in {\\mathbb R}^+\\) such that \\(x + y + z = 1\\). Prove the inequality\r\n\\[ 1 \\le \\frac{x}{1 - y z} + \\frac{y}{1 - z x} + \\frac{z}{1 - x y} \\le \\frac{9}{8}.\r\n\\]', 27, ''),
(28, 'Let \\(x, y, z \\in {\\mathbb R}^+\\) such that \\(x y z = 1\\). Prove the inequality\r\n\\[ \\frac{1}{(1 + x)^2} + \\frac{1}{(1 + y)^2} + \\frac{1}{(1 + z)^2} \r\n+ \\frac{2}{(1 + x)(1 + y)(1 + z)} \\ge 1.\r\n\\]', 28, ''),
(29, 'Let \\(a, b, c \\ge 0\\) such that \\(a + b + c = 1\\). Prove the inequality\r\n<p></p>\r\n<ol>\r\n  <li> Â  \\(a b + b c + c a \\le a^3 + b^3 + c^3 + 6 a b c\\)</li>\r\n  <p></p>\r\n  <li> Â  \\(a^3 + b^3 + c^3 + 6 a b c \\le a^2 + b^2 + c^2\\)</li>\r\n  <p></p>\r\n  <li> Â  \\(a^2 + b^2 + c^2 \\le 2 (a^3 + b^3 + c^3) 3 a b c\\)</li>\r\n</ol>', 29, ''),
(30, 'Let \\(x, y, z \\ge 0\\) be real numbers such that \\(x y + y z + z x + x y z = 4\\). Prove the inequality \r\n\\[ 3 (x^2 + y^2 + z^2) + x y z \\ge 10.\r\n\\]', 30, ''),
(31, 'Let \\(x, y, z \\in R^+\\). Prove the inequality\r\n\\[ x^4 (y + z) + y^4 (z + x) + z^4 (x + y) \\le \\frac{1}{12} (x + y + z)^5.\r\n\\]', 31, ''),
(32, 'Let \\(a, b, c \\in R^+\\) such that \\(a + b + c = 1\\). Prove the inequality\r\n\\[ \\frac{1}{a} + \\frac{1}{b} + \\frac{1}{c} + 48 (a b + b c + c a) \\ge 25.\r\n\\]', 32, ''),
(33, 'Let \\(a, b, c\\) be nonnegative real numbers such that \\(a + b + c = 2\\). Prove the inequality\r\n\\[ a^4 + b^4 + c^4 + a b c \\ge a^3 + b^3 + c^3.\r\n\\]', 33, ''),
(34, 'Let \\(a, b, c\\) be nonnegative real numbers. Prove the inequality\r\n\\[ 2 (a^2 + b^2 + c^2) + a b c + 8 \\ge 5 (a + b + c).\r\n\\]', 34, ''),
(35, 'Let \\(a, b, c\\) be nonnegative real numbers. Prove the inequality\r\n\\[ a^3 + b^3 + c^3 + 4 (a + b + c) 9 a b c \\ge 8 (a b + b c + c a).\r\n\\]', 35, ''),
(36, 'Let \\(a, b, c\\) be nonnegative real numbers. Prove the inequality\r\n\\[ \\frac{a^3}{b^2 - b c + c^2} + \\frac{b^3}{c^2 - c a + a^2} + \\frac{c^3}{a^2 - a b + b^2} \\ge a + b + c.\r\n\\]', 36, ''),
(37, 'Let \\(a, b, c\\) be nonnegative real numbers such that \\(a + b + c = 2\\). Prove the inequality\r\n\\[ a^3 + b^3 + c^3 + \\frac{15 a b c}{4} \\ge 2. \\]', 37, ''),
(38, 'Let \\(a, b, c\\) be positive real numbers such that \\(a b c = 1\\). Prove the inequality\r\n\\[ \\frac{a^2 + b c}{a^2 (b + c)} + \\frac{b^2 + c a}{b^2 (c + a)} + \\frac{c^2 + a b}{c^2 (a + b)} \\ge a b + b c + c a.\r\n\\]', 38, ''),
(39, 'Let \\(a, b, c\\) be positive real numbers such that \\(a^2 + b^2 + c^2 = 3\\). Prove the inequality\r\n\\[ \\frac{a^3 + a b c}{(b + c)^2} + \\frac{b^3 + a b c}{(c + a)^2} + \\frac{c^3 + a b c}{(a + b)^2} \\ge \\frac{3}{2}.\r\n\\]', 39, ''),
(40, 'Let \\(a, b, c\\) be positive real numbers such that \\(a^4 + b^4 + c^4 = 3\\). Prove the inequality\r\n\\[ \\frac{1}{4 - a b} + \\frac{1}{4 - b c} + \\frac{1}{4 - c a} \\le 1.\r\n\\]', 40, ''),
(41, 'Let \\(a, b, c\\) be positive real numbers such that \\(a b + b c + c a = 3\\). Prove the inequality\r\n\\[ (a^3 - a + 5) (b^3 - b + 5) (c^3 - c + 5) \\ge 125.\r\n\\]', 41, ''),
(42, 'Let \\(x, y, z\\) be positive real numbers. Prove the inequality\r\n\\[ \\frac{1}{x^2 + x y + y^2} + \\frac{1}{y^2 + y z + z^2} + \\frac{1}{z^2 + z x + x^2} \\ge \\frac{9}{(x + y + z)^2}.\r\n\\]', 42, ''),
(43, 'Let \\(x, y, z\\) be positive real numbers such that \\(x y z = x + y + z + 2\\). Prove the inequality \r\n<p></p>\r\n<ol>\r\n  <li> Â  \\(x y + y z + z x \\ge 2 (x + y + z)\\)</li>\r\n  <p></p>\r\n  <li> Â  \\(\\sqrt{x} + \\sqrt{y} + \\sqrt{z} \\le \\dfrac{3 \\sqrt{x y z}}{2} \\)</li>\r\n</ol>', 43, ''),
(44, 'Let \\(x, y, z\\) be positive real numbers. Prove the inequality\r\n\\[ 8 (x^3 + y^3 + z^3) \\ge (x + y)^3 + (y + z)^3 + (z + x)^3.\r\n\\]', 44, ''),
(45, 'Let \\(a, b, c\\) be nonnegative real numbers. Prove the inequality\r\n\\[ a^3 + b^3 + c^3 a b c \\ge \\frac{1}{7} (a + b + c)^3.\r\n\\]', 45, ''),
(46, 'Let \\(a, b, c\\) be positive real numbers such that \\(a + b + c = 1\\). Prove the inequality\r\n\\[ a^2 + b^2 + c^2 + 3 a b c \\ge \\frac{4}{9}.\r\n\\]', 46, ''),
(47, 'Let \\(a_1, a_2, \\ldots, a_n\\) be positive real numbers.\r\nProve the inequality\r\n\\[ (1 + a_1)(1 + a_2) \\cdots (1 + a_n) \\le \\left(1 + \\frac{a^2_1}{a_2}\\right)\\left(1 + \\frac{a^2_2}{a_3}\\right)\r\n\\cdots \\left(1 + \\frac{a^2_n}{a_1}\\right).\r\n\\]', 47, ''),
(48, 'Let \\(a, b, c, d\\) be positive real numbers such that \\(a b c d = 1\\). Prove the inequality\r\n\\[ \\frac{1}{(1 + a)^2} + \\frac{1}{(1 + b)^2} + \\frac{1}{(1 + c)^2} + \\frac{1}{(1 + d)^2} \\ge 1.\r\n\\]', 48, ''),
(49, 'Let \\(a, b, c, d \\ge 0\\) be real numbers such that \\(a + b + c + d = 4\\). Prove that\r\n\\[ a b c + b c d + c d a + d a b + (a b c)^2 + (b c d)^2 + (c d a)^2 + (d a b)^2 \\le 8.\r\n\\]', 49, ''),
(50, 'Let \\(a, b, c, d \\ge 0\\) be real numbers such that \\(a + b + c + d = 1\\). Prove that\r\n\\[ a^4 + b^4 + c^4 + d^4 + \\frac{148}{27} a b c d \\ge \\frac{1}{27}.\r\n\\]', 50, ''),
(51, 'Let \\(a, b, c\\) be positive real numbers such that \\(a^2 + b^2 + c^2 = 3\\). Prove the inequality\r\n\\[ a^2 b^2 + b^2 c^2 + c^2 a^2 \\le a + b + c. \\]', 51, ''),
(52, 'Let \\(a, b, c, d \\ge 0\\) be positive real numbers such that \\(a + b + c + d = 4\\). Prove the inequality\r\n\\[ (1 + a^2)(1 + b^2)(1 + c^2)(1 + d^2) \\ge (1 + a)(1 + b)(1 + c)(1 + d).\r\n\\]', 52, ''),
(53, 'Let \\(a, b, c\\) be positive real numbers such that \\(a b c = 1\\). Prove the inequality\r\n\\[ \\frac{1}{a} + \\frac{1}{b} + \\frac{1}{c} + \\frac{6}{a + b + c} \\ge 5.\r\n\\]', 53, ''),
(54, 'Let \\(a, b, c\\) be positive real numbers such that \\(a + b + c = 3\\). Prove the inequality\r\n\\[ 12 \\left(\\frac{1}{a} + \\frac{1}{b} + \\frac{1}{c}\\right) \\ge 4 (a^3 + b^3 + c^3) + 21.\r\n\\]', 54, ''),
(55, 'Let \\(a, b, c, d, e\\) be nonnegative real numbers such that \\(a + b + c + d + e = 5\\). Prove the inequality\r\n\\[ 4 (a^2 + b^2 + c^2 + d^2 + e^2) + 5 a b c d \\ge 25.\r\n\\]', 55, ''),
(56, 'Let \\(a, b, c\\) be positive real numbers such that \\(a + b + c = 3\\). Prove the inequality\r\n\\[ \\frac{1}{2 + a^2 + b^2} + \\frac{1}{2 + b^2 + c^2} + \\frac{1}{2 + c^2 + a^2} \\le \\frac{3}{4}.\r\n\\]', 56, ''),
(57, 'Let \\(a, b, c\\) be positive real numbers such that \\(a^2 + b^2 + c^2 = 3\\). Prove the inequality\r\n\\[ a b + b c + c a \\le a b c + 2.\r\n\\]', 57, ''),
(58, 'Let \\(a, b, c\\) be positive real numbers. Prove the inequality\r\n\\[ \\frac{a}{b} + \\frac{b}{c} + \\frac{c}{a} \\ge \\frac{a + b}{b + c} + \\frac{b + c}{c + a} + \\frac{c + a}{a + b}.\r\n\\]', 58, ''),
(59, 'Let \\(a, b, c\\) be positive real numbers. Prove the inequality\r\n\\[ \\frac{a^2}{b^2 + c^2} + \\frac{b^2}{c^2 + a^2} + \\frac{c^2}{a^2 + b^2} \\ge \r\n\\frac{a}{b + c} + \\frac{b}{c + a} + \\frac{c}{a + b}.\r\n\\]', 59, ''),
(60, 'Let \\(a, b, c\\) be positive real numbers such that \\(a \\ge b \\ge c\\). Prove the inequality\r\n\\[ a^2 b (a - b) + b^2 c (b - c) + c^2 a (c - a) \\ge 0.\r\n\\]', 60, ''),
(61, 'Let \\(a, b, c\\) be the lengths of the sides of a triangle. Prove the inequality\r\n\\[ \\frac{(b + c)^2}{a^2 + b c} + \\frac{(c + a)^2}{b^2 + c a} + \\frac{(a + b)^2}{c^2 + a b} \\ge 6.\r\n\\]', 61, ''),
(62, 'Let \\(a, b, c\\) be positive real numbers. Prove the inequality\r\n\\[ \\frac{a + b}{b + c} + \\frac{b + c}{c + a} + \\frac{c + a}{a + b} + 3 \\frac{a b + b c + c a}{(a + b + c)^2} \\ge 4.\r\n\\]', 62, ''),
(63, 'Let \\(a, b, c\\) be real numbers. Prove the inequality\r\n\\[ 3 (a^2 - a b + b^2) (b^2 - b c + c^2) (c^2 - c a + a^2) \\ge a^3 b^3 + b^3 c^3 + c^3 a^3.\r\n\\]', 63, ''),
(64, 'Let \\(a, b, c, d \\in R^+\\) such that \\(a + b + c + d + a b c d = 5\\). Prove the inequality\r\n\\[ \\frac{1}{a} + \\frac{1}{b} + \\frac{1}{c} + \\frac{1}{d} \\ge 4.\r\n\\]', 64, ''),
(65, '<img src="selectedimages/semfigure35.PNG" alt="semfigure35" />\r\n<p></p><p></p>\r\nIn the figure above, what is the value of  \\(x\\)?', 65, ''),
(66, 'Three lines are drawn in a plane. Which of the following CANNOT be the total number of points of intersection?', 66, ''),
(67, 'If  \\(a - b = 10\\), and  \\(a^2 - b^2 = 20\\), what is the value of  \\(b\\)?', 67, ''),
(68, 'If  \\(3x + 2y = 11\\)  and  \\(2x + 3y = 17\\), what is the average (arithmetic mean) of  \\(x\\)  and  \\(y\\)?', 68, ''),
(69, 'Let  \\(A, B\\), and  \\(C\\)  be three points in a plane such that  \\(AB:BC = 3:5\\). Which of the following can be the ratio \\(AB:AC\\)?\r\n<p></p><ol class="moveleft0" type="I"><li>\\(1:2\\)</li><li>\\(1:3\\)</li><li>\\(3:8\\)</li></ol>', 69, ''),
(70, 'If today is Saturday, what day will it be \\(500\\) days from today?', 70, ''),
(71, 'What is the largest integer,  \\(x\\), such that  \\(x &lt; 10,000\\)  and  \\(\\dfrac{\\sqrt{x}}{5}\\)  is an even integer?', 71, ''),
(72, 'Ellie is dropping marbles into a box one at a time in the following order: red, white, white, blue, blue, blue; red, white, white, blue, blue, blue; .... How many marbles will be in the box right after \\(100\\)th blue one is put in?', 72, ''),
(73, 'Each of \\(100\\) cards has none, one, or two of the letters  \\(A\\)  and  \\(C\\)  written on it. If \\(75\\) cards have the letter  \\(A\\), \\(30\\) have the letter  \\(C\\), and fewer than \\(15\\) are blank, what is the largest possible number of cards that have both  \\(A\\)  and  \\(C\\)  written on them?', 73, ''),
(74, '<img src="selectedimages/semfigure36.PNG" alt="semfigure36" />\r\n<p></p><p></p>\r\nIn the figure above, the three circles are tangent to one another. If the ratio of the diameter of the large white circle to the diameter of the small white circle is \\(3:1\\), what fraction of the largest circle has been shaded?', 74, ''),
(75, 'What is the slope of the line that passes through  \\((0, 0)\\)  and is perpendicular to the line that passes through  \\((-2, 2)\\)  and  \\((3, 3)\\)?', 75, ''),
(76, 'A googol is the number that is written as \\(1\\) followed by \\(100\\) zeros. If  \\(g\\)  represents a googol, how many digits are there in  \\(g^2\\)?', 76, ''),
(77, 'If  \\(y\\)  is inversely proportional to  \\(x\\)  and directly proportional to  \\(z\\), and  \\(x = 4\\)  and  \\(z = 8\\)  when  \\(y = 10\\), what is the value of  \\(x + z\\)  when  \\(y = 20\\)?', 77, ''),
(78, 'What is the average (arithmetic mean) of  \\(3^{30}, 3^{60}\\), and  \\(3^{90}\\)?', 78, ''),
(79, 'If  \\(a\\)  and  \\(b\\)  are the lengths of the legs of a right triangle whose hypotenuse is \\(10\\) and whose area is \\(20\\), what is the value of  \\((a + b)^2\\)?', 79, ''),
(80, '<img src="selectedimages/semfigure37.PNG" alt="semfigure37" />\r\n<p></p><p></p><u>Note:</u> Figure not drawn to scale<p></p><p></p>\r\nIn  \\(\\Delta XYZ\\)  at the right, if  \\(XY &lt; YZ &lt; ZX\\), then which of the following <i>must</i> be true?', 80, ''),
(81, '<img src="selectedimages/semfigure38.PNG" alt="semfigure38" />\r\n<p></p><p></p>\r\nIn the figure above, four semicircles are drawn, each centered at the midpoint of one of the sides of square  \\(ABCD\\). Each of the four "petals" is the intersection of two of the semicircles. If  \\(AB = 4\\), what is the total area of the shaded region?', 81, ''),
(82, 'If  \\(12 a + 3 b = 1\\)  and  \\(7 b - 2 a = 9\\), what is the average (arithmetic mean) of  \\(a\\)  and  \\(b\\)?', 82, ''),
(83, 'If  \\(0 &lt; a &lt; b &lt; 1\\), which of the following is (are) true?<p></p><ol class="moveleft0" type="I"><li> \\(a - b\\)  is negative.</li><li> \\(\\dfrac{1}{ab}\\)  is positive.</li><li> \\(\\dfrac{1}{b} - \\dfrac{1}{a}\\)  is positive.</li></ol>', 83, ''),
(84, 'If  \\(a\\)  and  \\(b\\)  are negative, and  \\(c\\)  is positive, which of the following is (are) true?<p></p>\r\n<ol class="moveleft0" type="I"><li>\\(a - b &lt; a - c\\)</li><li>if  \\(a &lt; b\\), then  \\(\\dfrac{a}{c} &lt; \\dfrac{b}{c}\\).</li><li> \\(\\dfrac{1}{b} &lt; \\dfrac{1}{c}\\).</li></ol>', 84, ''),
(85, 'If  \\(p\\)  and   \\(q\\)  are primes greater than \\(2\\), which of the following <i>must</i> be true?<p></p>\r\n<ol class="moveleft0" type="I"><li> \\(p + q\\)  are even.</li><li> \\(p q\\)  is odd.</li><li> \\(p^2 - q^2\\)  is even.</li></ol>', 85, ''),
(86, 'In the figure below, lines  \\(k\\)  and  \\(\\ell\\)  are parallel. What is the value of  \\(y - x\\)?\r\n<p></p><p></p>\r\n<img src="selectedimages/semfigure39.PNG" alt="semfigure39" />', 86, ''),
(87, 'In the figure below, the rectangle  \\(ABCD\\)  is divided into two \\(30-60-90\\) triangles, a \\(45-45-90\\) triangle, and shaded triangle  \\(ABF\\). What is the perimeter of shaded triangle  \\(ABF\\)?<p></p><p></p><img src="selectedimages/semfigure41.PNG" width="280" alt="semfigure41" />', 87, ''),
(88, '<img src="selectedimages/semfigure40.PNG" width="280" alt="semfigure40" />\r\n<p></p><p></p>\r\nIn the figure above,  \\(DEFG\\)  is a rectangle. What is the area of  \\(\\Delta DFH\\)?', 88, ''),
(89, '<img src="selectedimages/semfigure42.PNG" alt="semfigure42" />\r\n<p></p><p></p>\r\nIn the figure above,  \\(\\ell\\)  is tangent to circle  \\(O\\)  at  \\(A\\), and  \\(OA = AB = 2\\). What is the area of the shaded region?', 89, ''),
(90, 'A \\(5\\)-foot-long cylindrical pipe has an inner diameter of \\(6\\) feet and an outer diameter of \\(8\\) feet. If the total surface area (inside and out, including ends) is  \\(k \\pi\\), what is the value of  \\(k\\)?', 90, ''),
(91, 'What is the slope of the line that passes through  \\((3, 2)\\)  and is parallel to the line that passes through  \\((-2, 3)\\)  and  \\((2, -3)\\)?', 91, ''),
(92, 'Line  \\(\\ell\\)  is tangent to a circle whose center is at  \\((3, 2)\\). If the point of tangency is  \\((6, 6)\\), what is the slope of line  \\(\\ell\\)?', 92, ''),
(93, 'There are \\(27\\) students in Mr. White&#8242;s homeroom. What is the probability that at least \\(3\\) of them have their birthdays in the same month?', 93, ''),
(94, 'A printer that can print \\(1\\) page in \\(5\\) seconds shuts down for \\(3\\) minutes to cool off after every hour of operation. How many minutes will the printer take to print \\(3600\\) pages?', 94, ''),
(95, '<img src="selectedimages/semfigure43.PNG" alt="semfigure43" />\r\n<p></p><p></p>\r\nIn the figure above, how many paths are there from  \\(A\\)  to  \\(X\\)  if the only ways to move are up and to the right?', 95, ''),
(96, 'At the audition for the school play,  \\(n\\)  people tried out. If  \\(k\\)  people went before Judy, who went before Liz, and  \\(m\\)  people went after Liz, how many people tried out between Judy and Liz?', 96, ''),
(97, 'If  \\(abc = 1\\), which of the following could be the number of integers among  \\(a, b\\), and  \\(c\\)?<p></p><ol class="moveleft0" type="I"><li>\\(1\\)</li><li>\\(2\\)</li><li>\\(3\\)</li></ol>', 97, ''),
(98, 'What is the maximum points of intersection between a square and a circle?', 99, ''),
(99, '<img src="selectedimages/semfigure44.PNG" width="280" alt="semfigure44" />\r\n<p></p><p></p>\r\nIn the figure above, all of the line segments meet to form right angles. What is the perimeter of the figure?', 98, ''),
(101, 'Five people shared a prize of  ($100). Each one received a whole number of dollars, and no two people received the same amount. If the largest share was  ($30)  and the smallest share was  ($15), what is the most money that the person with the third largest share could have received?ss', 101, 'Angular,Test,Who,Wow'),
(108, 'Test', NULL, ''),
(125, '<img src="selectedimages/semfigure45.PNG" width="280" alt="semfigure45" />\n<p></p><p></p>\nIn the figure above,  (JL = KL = LM)  and  ({\rm m}angle JLK = 70). This information is sufficient to determine the value of which of the followings?', 100, ''),
(128, 'Wow', 102, ''),
(129, 'Test', 103, 'Test,New,Hey'),
(131, 'New', 104, 'Hi,Bye');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
