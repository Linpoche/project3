-- table顧客: customer
-- 刪除已存在之重複table
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `customerID` varchar(5) NOT NULL default '',-- Primary key:流水號
  `cName` varchar(20) collate utf8_unicode_ci NOT NULL, -- 買家姓名
  `cAccount` varchar(20) NOT NULL unique, -- 買家帳號
  `cEmail` varchar(40) NOT NULL unique, -- 買家電郵
  `cPassword` varchar(100) NOT NULL, -- 買家密碼: 加密後可能加長故取60
  `cSex` enum('F','M') collate utf8_unicode_ci NOT NULL, -- 買家性別
  `cBirthDate` date default NULL, -- 買家生日
  `cAddress` varchar(60) default NULL, -- 買家地址
  `cMobile` varchar(24) default NULL, -- 買家手機
  `rewardsPoints` int DEFAULT 0, -- 使用的紅利點數
  PRIMARY KEY  (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- 預設儲存引擎: InnoDB(after php5.5)

-- add dummy datas:
INSERT INTO `customers` VALUES
('C001', '吳16', 'Q3E7T2bDDK', 'H6CuyhBaGi@gmail.com', '$2y$10$7U5o6grWP0hfhhyyZrEPCu7wcDp78DNYU3lahDuOCGzfCxHw2F/Se', 'F', '1997-11-23', 'my_dummy_adrs86', '0900-005-007', 10 ),
('C002', '周11', 'cttYDSZvag', 'qlA3yunucJ@gmail.com', '$2y$10$NexiWuecoXOe7zICkDmCmO2BqD5yaFRc/q/oTh26.LjD3Od51u2Du', 'M', '1997-05-25', 'my_dummy_adrs29', '0900-006-007', 10 ),
('C003', '鄭87', 'Rz4NPZ12Fy', '7DSZRiEXLW@gmail.com', '$2y$10$9bVoVTajHzrzIaVqAM3vnO9G7KqvM8MvB3OYuzXrIFcphbV4b7TEO', 'M', '1997-01-14', 'my_dummy_adrs59', '0900-001-007', 10 ),
('C004', '李25', '0k02bIwQ1q', '7iaXLktydy@gmail.com', '$2y$10$DP2TXGpr3uUy6rVbevMNZOkH6aWU4zAAdbJ.ua9w/tRdLyb7l9Cve', 'M', '1997-05-01', 'my_dummy_adrs40', '0900-007-001', 10 ),
('C005', '高95', '5iNNFeLgzF', 'AA5oR16tJb@gmail.com', '$2y$10$Id0wzzDtyBXWDM6F6NDcg./mG7zLloPB1L62v8txFf3CvNHRCZabW', 'M', '1997-06-09', 'my_dummy_adrs5', '0900-009-004', 10 ),
('C006', '馬46', '5pZmd8bNEO', 'y3i64KOMc5@gmail.com', '$2y$10$CYv9hcGmWdVPC7D.guuT8uRdVcTouqGneVShPX2OVBTdWifSLZ4uy', 'M', '1997-10-02', 'my_dummy_adrs89', '0900-006-003', 10 ),
('C007', '徐14', 'IqgMOvWoe8', '7kTiuNblgz@gmail.com', '$2y$10$Q/dYBDtasQkgu8i7.21cye5vUGqc.d0ZJOE3BC3EjGVgazuZCUgwO', 'F', '1997-04-16', 'my_dummy_adrs90', '0900-001-007', 10 ),
('C008', '王11', 'phLBeWdVCp', 'Lg1CIyTQo7@gmail.com', '$2y$10$UlYwB0f7bnwpQogrmBIL1.FydkOG5U2DWcL5PYui1fVf00ywWPMfy', 'F', '1997-08-19', 'my_dummy_adrs3', '0900-003-005', 10 ),
('C009', '楊17', 'uzM5WOXHDe', '44s6h2gKk0@gmail.com', '$2y$10$qQdt18kIj.9jYwOo9Un0Du2mOPj0OhGQeKWks8bIzh1TdwJD3gjgq', 'M', '1997-11-26', 'my_dummy_adrs40', '0900-004-004', 10 ),
('C010', '鄭62', 'UiHE8ByPop', 'FKfclAV5La@gmail.com', '$2y$10$lWv.OAo7vMo9w7pqKu/V3eUJIpo7Tvxw7toP/POZFYUI4rcbakeZq', 'F', '1997-10-31', 'my_dummy_adrs38', '0900-008-006', 10 ),
('C011', '梁86', 'WMSaVDT6wv', '3cDguryOhZ@gmail.com', '$2y$10$ulQygj.ftsx6h.qU/mbZbefjJGwI2FGzkMNlBkA4VG9X0Xahz6DJm', 'M', '1997-11-15', 'my_dummy_adrs46', '0900-001-009', 10 ),
('C012', '郭93', 'B9um1wXh69', 'GEqCnsrXaK@gmail.com', '$2y$10$NoG1CzjnEL0RZJhYgD8vLO.uUZpYMsvbxVZeHv4rV6BbsCWG79ea2', 'F', '1997-12-16', 'my_dummy_adrs26', '0900-001-007', 10 ),
('C013', '朱85', 'RasySsYPyS', '0N1ut9H7i2@gmail.com', '$2y$10$Ras0eRfCw6lr0GD1ntXsCeodxg6CBa7aKM8RxiQ3m5CmVe6T24fVK', 'F', '1997-03-17', 'my_dummy_adrs88', '0900-001-006', 10 ),
('C014', '張39', '0llRdPeC2n', '7KMRgWb6Tu@gmail.com', '$2y$10$oIP0rFNUW26MQfWD/UtxFuXWM15fohzmY1zyH02KJJjVicaQ0j8T2', 'M', '1997-10-30', 'my_dummy_adrs36', '0900-009-004', 10 ),
('C015', '胡63', 'kf6k4fAXpg', 'm3YTH9giuk@gmail.com', '$2y$10$UwuGCS/D0XlL46RtyJIKXeZQx1LmXeM395okR.7Lc4YMK1oVyCMLS', 'M', '1997-11-10', 'my_dummy_adrs25', '0900-001-002', 10 ),
('C016', '李49', 'G7DY1whZMg', 'uqGyZAbiGm@gmail.com', '$2y$10$1Tz6TwlCJVx3817Ub16py.VJmmQ8OEHieLJB9kzoFsdJ0Qkj3BKZ2', 'F', '1997-03-29', 'my_dummy_adrs28', '0900-002-003', 10 ),
('C017', '趙75', 'nQ71fYK7lg', 'r83ROZDRuW@gmail.com', '$2y$10$de.rWIqnosInb/ZgTEMX9.NtEP3qdUMcaE6x7WQC3jAa7TBUINwwW', 'F', '1997-05-09', 'my_dummy_adrs26', '0900-002-009', 10 ),
('C018', '梁62', '9oYdOTMFuO', 'gjjUz8H8Ir@gmail.com', '$2y$10$9raxu1U.RyhFo7dNZ2zCVuPAEr1E29NkhIXeVEx1pINqp.p.Ze302', 'F', '1997-06-20', 'my_dummy_adrs78', '0900-002-008', 10 ),
('C019', '孫62', 'GAPY6r16dc', 'gPJPgwqHXc@gmail.com', '$2y$10$U1X.1M4IDmX6YPZVr.NoIOhRRCMd4HWni2.Z17NrR1ZKCRB2WtNsC', 'F', '1997-07-27', 'my_dummy_adrs9', '0900-003-009', 10 ),
('C020', '楊34', 'Wt3Vou4KMH', '4LNMmTqxRx@gmail.com', '$2y$10$OQh71UeZfACOu.APie2ji.KHhE3qUexqNwpRvLcrGrOoLIw/k9az.', 'F', '1997-12-03', 'my_dummy_adrs73', '0900-003-004', 10 ),
('C021', '胡82', 'DuQmugmHuy', '4XsjRCatAW@gmail.com', '$2y$10$v3EdbUQBDO0/38olwybSLO5TP8MwysuSjAcOFG4uX8AHZubdMFybm', 'M', '1997-10-01', 'my_dummy_adrs42', '0900-006-002', 10 ),
('C022', '周62', 'ZnO3m9xa4i', 'gmmhNoQIhB@gmail.com', '$2y$10$6K1FMoAyfE7R.hgooA23ZegiSb4ykjKvayg5G/V5.ogGbEtaLvKNu', 'M', '1997-10-16', 'my_dummy_adrs52', '0900-003-007', 10 ),
('C023', '馬29', 'j3KpBsTMvN', 'S7XsqvcrB3@gmail.com', '$2y$10$HdypfVFnIVIuVep3qPkrgOmMXLLmTTIFzdF8POPIYCJXwfsSfrP2.', 'F', '1997-06-19', 'my_dummy_adrs91', '0900-002-002', 10 ),
('C024', '徐22', 'jq4iAZH9N4', 'v4AJrb9jIS@gmail.com', '$2y$10$I9jlvKK897liuzMQxOGtaOsCLFbOjlvuqpp0x4.Y/ZLHn6EawtUJK', 'M', '1997-01-11', 'my_dummy_adrs30', '0900-008-008', 10 ),
('C025', '梁25', 'bGYHL6BtYh', 'XniEaQHdJt@gmail.com', '$2y$10$Sv.eQqK5Tshi0Ah8wemCNu3Fn3ibkX8QarBiGM6bSCnjn1Q1CP96O', 'M', '1997-05-30', 'my_dummy_adrs59', '0900-002-001', 10 ),
('C026', '高65', 'gaZtuM6Cfw', 'cXiB7XjIOI@gmail.com', '$2y$10$p7uMRvuBIC6olymvDSRGo.4xgJdzI9CWX54SpgSQsvt32RQ1NDwla', 'M', '1997-08-28', 'my_dummy_adrs38', '0900-009-002', 10 ),
('C027', '林37', '8F6xKn1fbk', 'bgdRSm9PC7@gmail.com', '$2y$10$FtCc/mEcacCBDsUfChJLrOnBKGwQnTgbrVa6p631ZS3MT1r2nwjXi', 'M', '1997-06-28', 'my_dummy_adrs85', '0900-004-003', 10 ),
('C028', '胡15', 'qx4ot38nnO', 'ELVDtDVTai@gmail.com', '$2y$10$Ig8hKYXjyeTtAnFssjeC7O86PJUJo6anVpo7xpBv9zCEbR8K3deOK', 'F', '1997-08-21', 'my_dummy_adrs49', '0900-001-002', 10 ),
('C029', '謝71', 'FSKIPk9oci', 'g5Bf21NFLG@gmail.com', '$2y$10$wd3KiSdezVbZ48sXo36gcOOYgN6PSG9abvs3f3BuiyeLVDIrU91mK', 'F', '1997-08-30', 'my_dummy_adrs18', '0900-008-002', 10 ),
('C030', '楊45', 'IasiJlBt9t', 'e4BTYGv9oh@gmail.com', '$2y$10$cy//fy40N8o4vcVJEGsMD.8sFIzMPI/U21wBxxwueXD9CCh97RL1y', 'F', '1997-02-20', 'my_dummy_adrs73', '0900-009-005', 10 ),
('C031', '周77', '0TXdag2kFQ', 'qSE2igRRFV@gmail.com', '$2y$10$9zp0sy.HsUJPCSKdtprFn.eBZuKfb4ty8qc15Aw6itBF6r2luDoWS', 'M', '1997-01-19', 'my_dummy_adrs28', '0900-003-005', 10 ),
('C032', '趙99', 'LXOHe6hnzd', 'TfK6P8jzBk@gmail.com', '$2y$10$O89IiXvh1.NS79NPtwwgheKolFFPCw2yVVVdpGU9fnhWChqOIpx1W', 'M', '1997-03-12', 'my_dummy_adrs80', '0900-006-001', 10 ),
('C033', '朱58', 'oXTYs1cHAc', 'MLbOwdiAOq@gmail.com', '$2y$10$5W1edJ.COehtNMRvJYVXMOTym5eIV4HYntjyZ6vtGuwd4AQ9jyVhu', 'F', '1997-12-10', 'my_dummy_adrs71', '0900-004-009', 10 ),
('C034', '梁43', 'A2dLy9cVZy', 'bhIZfu2BhO@gmail.com', '$2y$10$4LYx9VdcugCZp0HaA1ewEu24mnlz0nTU.f.RbZ7vZaQ0Uma1/IjtO', 'M', '1997-09-06', 'my_dummy_adrs59', '0900-001-008', 10 ),
('C035', '趙55', 'pGKRfPp53B', 'Hx4wkXFnO9@gmail.com', '$2y$10$PeS2V99/Y.ZCh8kSwa.jzeAg.ZDdtFnk01ilWtRn8zIBrb3ORrgAW', 'M', '1997-12-13', 'my_dummy_adrs18', '0900-008-001', 10 ),
('C036', '楊78', 'anvIONxvsE', '17YQCB05re@gmail.com', '$2y$10$FkNqF8eZwh80ubL5NGo4meoEPFMFLFsUXNKPLncj6jC19d.LjkXBy', 'M', '1997-01-17', 'my_dummy_adrs28', '0900-006-004', 10 ),
('C037', '胡45', 'ecihdkk6j3', 'kz6LOZwuaJ@gmail.com', '$2y$10$y39VTmnZKzOtlbd0StppDeRTUCIEBtEodQZBm4qDQ1eRYmFAUinzm', 'F', '1997-02-16', 'my_dummy_adrs59', '0900-009-004', 10 ),
('C038', '胡18', 'wC2sF7RkZ3', '2sgqzAXR4x@gmail.com', '$2y$10$Ko8vLokDIsYM2uTRFZanEuNfFYoVTau0kBpSxP/Bp/Nozd3/Q32da', 'F', '1997-07-24', 'my_dummy_adrs70', '0900-009-002', 10 ),
('C039', '林47', 'yFyGRD1pyC', 'zvK4gueAl8@gmail.com', '$2y$10$scGjyPXnrdizP8q8Yj3oNezUaonfWYX5NkjziBOZVxurW05T1.5aW', 'M', '1997-12-11', 'my_dummy_adrs74', '0900-007-004', 10 ),
('C040', '劉58', 'XrixIxM6HN', 'Biiog6xJGa@gmail.com', '$2y$10$DMDf.VVa8Dz0AlhT.IWaI.gP2OiS.Zr1YIAcUIve4aiVE3QszTQsS', 'M', '1997-05-14', 'my_dummy_adrs92', '0900-001-003', 10 ),
('C041', '張84', 'xq4gZYBPth', 'Vv8E1NSOCY@gmail.com', '$2y$10$gh604zCGGv.1okl7wpdwK.J9Q/hW.XMxqBr.4VVgO2fs68DPImnVG', 'M', '1997-12-13', 'my_dummy_adrs19', '0900-001-006', 10 ),
('C042', '鄭69', 'RAzdZEUdEv', 'ok1oihuyvm@gmail.com', '$2y$10$6NvbWt0jJGPyS5aIWKq1ke4pKzedfMZRuiIYSo9fZjDu.p53Ua9Vy', 'F', '1997-10-23', 'my_dummy_adrs37', '0900-006-003', 10 ),
('C043', '胡11', 'vkkg3rXnyR', 'di2267QpXn@gmail.com', '$2y$10$Zzh.Z27hY4LxFPZmndt53eNNC8nfyJrOCIMo300CZdQwJLv5dRhJq', 'F', '1997-04-01', 'my_dummy_adrs2', '0900-009-005', 10 ),
('C044', '高13', 'yB0VODx9LW', 'Ocvs8ixxWo@gmail.com', '$2y$10$vQ63RxZn8Pcv0zFgE7DLx.//jnM5V2HjWfm8fCjq.NqTpvF8vj7Ty', 'M', '1997-12-20', 'my_dummy_adrs63', '0900-009-007', 10 ),
('C045', '劉86', 'eTCmqljRGk', 'A9OVH22pTg@gmail.com', '$2y$10$jHTNBhwzFUHWyS7gZVuNDOhmqNOxDode8EuQfbvYq2PbkrRaLWYLm', 'M', '1997-01-22', 'my_dummy_adrs43', '0900-007-005', 10 ),
('C046', '楊96', 'i8wcR83Wcs', 'mh0vOfoCEK@gmail.com', '$2y$10$aMphVj5Duala.brPgCElQeL83JmjZDl05SQaa2UFNyEFFQvKK7BqS', 'M', '1997-06-13', 'my_dummy_adrs69', '0900-008-009', 10 ),
('C047', '馬53', 'D31fPQgpdT', 'IXd1I8QjHt@gmail.com', '$2y$10$R7E5PgX/jdg1VOb65uOSO.fNiFBP//nd9APQ8QIwg7/mwcK9tdx7a', 'F', '1997-09-24', 'my_dummy_adrs70', '0900-002-003', 10 ),
('C048', '陳41', 'aXmKuYckfo', 'GI90nsMiKo@gmail.com', '$2y$10$x15gZ7MnDJRovuZrz/xD0uSGo7SF86sfQyY0xcqX6czmCB5aiXm/m', 'F', '1997-09-22', 'my_dummy_adrs37', '0900-002-009', 10 ),
('C049', '林22', 'vWj7iOhvLa', 'MURp4bi3T4@gmail.com', '$2y$10$7IQ9k8oDWchoWPibkd3ncemzVXdZbPygOPFQA4rm.yTV7rS59jk5q', 'F', '1997-03-25', 'my_dummy_adrs5', '0900-003-003', 10 ),
('C050', '陳74', 'A5RP2kCfny', 'FB8JRI8Hym@gmail.com', '$2y$10$vEXlr5XPuaBQQv/Rqb16l.Y/WTcfOmtQAr/pzzaZpvvRPdc8t1fE2', 'M', '1997-01-18', 'my_dummy_adrs98', '0900-005-001', 10 ),
('C051', '胡89', 'cKHPl8pXgs', 'DbsUtE6OcR@gmail.com', '$2y$10$NL0IB/RJY544zCzv5XY2OOmVFNwHNOUbLus.NBL2KMFXoDrDzPXj6', 'F', '1997-08-07', 'my_dummy_adrs72', '0900-001-003', 10 ),
('C052', '馬79', 'MkO7bkIZA0', 'LpL6lc8PT2@gmail.com', '$2y$10$KdHbS9Zsb./5ogVhjKLS/OZL.UjADLxjcZhatEE.BdAydNcqAPgF6', 'M', '1997-08-07', 'my_dummy_adrs64', '0900-009-002', 10 ),
('C053', '孫16', 'us1sxgAAk2', 'qRBU5bi4m2@gmail.com', '$2y$10$Ul6mcE5Hs6VJyqPidcIs1OwlSPuGl3eVVisiKMyQUuYT28qC3aPo6', 'M', '1997-09-14', 'my_dummy_adrs18', '0900-004-001', 10 ),
('C054', '何22', '2V6priR2mf', 'pUImEldaXG@gmail.com', '$2y$10$NYMuXTxiK4DOerjAZ9zMpu.lNjSlwUK3nYcogaD3cSArCN3JUlGiq', 'F', '1997-01-16', 'my_dummy_adrs76', '0900-002-002', 10 ),
('C055', '張11', 'lP9bMgF3Nu', 'm1vZJaIB7F@gmail.com', '$2y$10$ZdMeuO/lK6sBKK4lHlIkU.qXokBbRbnSzR5XL2bV5QO8PfdNvN0Pi', 'F', '1997-11-15', 'my_dummy_adrs76', '0900-009-003', 10 ),
('C056', '孫76', 'VPdH4a45js', 'h2jarqJE3U@gmail.com', '$2y$10$3Ed6nch6PA7RjgOMYAOt3e0rvyJUHQNSZjq4ELbzcIP69mBayzzFe', 'F', '1997-02-04', 'my_dummy_adrs2', '0900-009-007', 10 ),
('C057', '何44', 'zNBMwOGShI', '4Noc3cmLT5@gmail.com', '$2y$10$/35Id9NnOef2nkSx5B5H8u9uhQRfkcpkqr8Cbk.RAPAVjdHxbruvu', 'F', '1997-09-28', 'my_dummy_adrs55', '0900-009-003', 10 ),
('C058', '鄭56', 'e27CcfmnnA', '9J3sND6Jr6@gmail.com', '$2y$10$SnFe5xGewLSay4YZFZU5Z.K46J2awb048psYZ98wGcMGJsZl8pMlO', 'M', '1997-11-08', 'my_dummy_adrs94', '0900-001-009', 10 ),
('C059', '楊73', 'XJq5piwALx', 'K8bM160Jpv@gmail.com', '$2y$10$2DZfKX41yam4y/vnFJj7m.aymdZhRdtEom70qeG5X.oI/dBNDYa7W', 'M', '1997-11-15', 'my_dummy_adrs20', '0900-009-004', 10 ),
('C060', '張14', '5SpQfI0pnT', 'xu8KbsjiEw@gmail.com', '$2y$10$kk086FrqmHF7g63tJwH9sOvizj7hPoAxS3b.bh6fYqoivBMUjwBMC', 'F', '1997-06-05', 'my_dummy_adrs60', '0900-006-002', 10 ),
('C061', '徐72', 'vrIVNw3BgJ', '2JQO2sjkCs@gmail.com', '$2y$10$fJ5kUujfR8w/q1gHtkP4c..6oKgQD9OzMI1JzOFOubHmK1aP35/vG', 'F', '1997-05-09', 'my_dummy_adrs4', '0900-001-001', 10 ),
('C062', '高88', 'rFieLhKWLe', 'IW42Lo7mAJ@gmail.com', '$2y$10$LUwZDyUSEzN.12g5/WjlkOunTDaxdroZiWADvyozGELe92byV/yMi', 'M', '1997-04-05', 'my_dummy_adrs59', '0900-005-009', 10 ),
('C063', '周75', 'c3X70Ei9kA', 'o3oNh4U2fz@gmail.com', '$2y$10$hIstPcAOs0IqLaqtzBJqK.ZLgUqnQ8ndiroQIdOA3GkgiA28TB7dy', 'M', '1997-05-17', 'my_dummy_adrs56', '0900-008-008', 10 ),
('C064', '孫45', 'uJJrZxW09j', 'lpITBK4QxA@gmail.com', '$2y$10$MMInOL1bX2jJfP9klLT37ebvwoB0a838Q7eRqSX/IqJCB6xgbaAie', 'M', '1997-05-17', 'my_dummy_adrs29', '0900-006-006', 10 ),
('C065', '謝73', 'GMphFmSaM8', 'oA4Irxf8z4@gmail.com', '$2y$10$sia5TKeao2IyvRIkY3E5XO0oapxtROVJVoep01IilejgNKpdGli0y', 'M', '1997-06-15', 'my_dummy_adrs82', '0900-006-003', 10 ),
('C066', '周27', 'EA65Df2Ptn', 'x88Znl6YP5@gmail.com', '$2y$10$oReWSg0wmaMcA.YahoRP9u6dvDqr2LP5/ZvqifT2PzEkqw2fSjPai', 'F', '1997-01-14', 'my_dummy_adrs44', '0900-006-007', 10 ),
('C067', '高36', '8ondZlUGZN', 'eDKxRHZ8aL@gmail.com', '$2y$10$XN286E2HOZ6DxTbOodfK/eu//.cJa39tywpw9lRHG4wzDFTtuulhO', 'M', '1997-03-04', 'my_dummy_adrs22', '0900-009-009', 10 ),
('C068', '梁93', 'fszo8bH894', 'SQrraIOgU3@gmail.com', '$2y$10$LmrDGXzb6WYhpL3E/CF..uEdczi/N/utf0NG5My4RdShotMdG0A2S', 'M', '1997-01-02', 'my_dummy_adrs82', '0900-003-008', 10 ),
('C069', '羅32', 'OWP0ILuWh6', 'RMlHXOml1h@gmail.com', '$2y$10$X.jCIDT4v07ngBaBzp0wee9WO0LqzdIj4HJRhx99sHGqaS1c0A5wu', 'M', '1997-03-05', 'my_dummy_adrs10', '0900-006-007', 10 ),
('C070', '王12', 'gEHAzfmfi7', 'fmKjK9snvE@gmail.com', '$2y$10$89JOQhP5EXPic1rII7Ik/uyaCBD.uVNd0uCtw66mYvALaQrqQIV5O', 'M', '1997-09-16', 'my_dummy_adrs50', '0900-007-001', 10 ),
('C071', '陳53', 'bUNV6Lx32r', 'w9y27Lg2c7@gmail.com', '$2y$10$HOKysCzJQnZSMIQUa5U44OTwcwMKlFuwQdwH/J35wroCBcQO8Iy5q', 'F', '1997-05-12', 'my_dummy_adrs33', '0900-005-008', 10 ),
('C072', '劉48', 'SCyub4XNXi', 'GFcBTft9PV@gmail.com', '$2y$10$KEbPooq7Ur38HFVtY/suFenEybnNhX.utEbdeGZTWz9NX6p6a/Apq', 'F', '1997-05-14', 'my_dummy_adrs63', '0900-004-004', 10 ),
('C073', '周73', '2001PBsWGD', 'Gdi9q0W14L@gmail.com', '$2y$10$WgC3XdOl5kuyTfqlVRXL7OpndFYDoLUhYoxxBC48g5j0XZCOMnvJC', 'F', '1997-12-15', 'my_dummy_adrs47', '0900-007-001', 10 ),
('C074', '楊98', '4Vw8tJAtdn', 'bcvcAYAnXc@gmail.com', '$2y$10$2BkS4fvzUz9kx5XOrW.VIueaq9BSzERHstqybuUteeKFw9VWJPknK', 'M', '1997-12-04', 'my_dummy_adrs19', '0900-004-008', 10 ),
('C075', '胡85', 'brGRxvcFq7', 'DfTaluLbaH@gmail.com', '$2y$10$p42KbIBAq17uPWn4gv3Nt.imX0b9JbSg9C.9IUFQGeNb5lAwQv54a', 'M', '1997-08-23', 'my_dummy_adrs27', '0900-008-004', 10 ),
('C076', '馬21', 'HnZM42t1LU', 'qSqvyAdW02@gmail.com', '$2y$10$hGgDikLw/uOrOgRbFxDnU./rSB/wXpsdsOHUOMWFv8SzWXt7miK/i', 'F', '1997-02-21', 'my_dummy_adrs14', '0900-005-003', 10 ),
('C077', '林52', '8oClpMHFcx', 'Y5awV0VxrO@gmail.com', '$2y$10$3m/G5SB.d7XuQbWfVZ8ynuWmCVKdM0S2YD4HCpWw6jVV5kgdHwMU.', 'M', '1997-07-31', 'my_dummy_adrs62', '0900-004-005', 10 ),
('C078', '鄭92', 'BeI71IfprO', 'FoBNk8vpQZ@gmail.com', '$2y$10$Jg4pJRJ0yu8wAYKoKhDjIOHvVZzN/FcBiQbpju2Ur1z5mPh6SoYdW', 'F', '1997-07-11', 'my_dummy_adrs53', '0900-005-008', 10 ),
('C079', '馬71', 'Gt0tRvX0pi', '2DUd0wTDVj@gmail.com', '$2y$10$CVIwBBoa5CO83sFYVbJsi.WKsrL/UCK1CcVcj6u9mIAVc/sMUke3K', 'F', '1997-07-07', 'my_dummy_adrs88', '0900-004-009', 10 ),
('C080', '楊93', 'k7SmIjlYlR', 'eFOkvausAq@gmail.com', '$2y$10$9VbU25qa46VYRQNeeLn1EOBe6Vu60neyYwmOwiuTDoZwnctyXA2xK', 'M', '1997-04-02', 'my_dummy_adrs90', '0900-009-005', 10 ),
('C081', '何25', 'iPjZvKiHvL', 'zd32jC8ULZ@gmail.com', '$2y$10$lBbKbWQGkwWa1LPpmPHr5epPA27RX9Hbu/BoeR7rviGhKNQTFyrq2', 'F', '1997-07-23', 'my_dummy_adrs67', '0900-003-002', 10 ),
('C082', '何88', '4f8siO8Hk6', 'GS35Lsthfs@gmail.com', '$2y$10$2S99TmJY0ifkcEhyWutaZOSHLrfGQ2R3bnWjH10B/J8vIIn1i6IqK', 'F', '1997-05-11', 'my_dummy_adrs97', '0900-008-009', 10 ),
('C083', '胡67', '9rAYgtP0jh', 'VE9ia7elD7@gmail.com', '$2y$10$MPgbW2I/oh88sRYYoGyahOfpmWXHH2gs1NKpfR4.R5vM7KMq00ZXy', 'M', '1997-05-03', 'my_dummy_adrs11', '0900-001-009', 10 ),
('C084', '李83', 'puAIsEYaSn', 'iGS5u8RmIz@gmail.com', '$2y$10$6149fa23a9Dj9JLGjM3HN.j16..Lj2IY0AESXjN1y7P7FKlWeuBZi', 'M', '1997-01-18', 'my_dummy_adrs90', '0900-003-006', 10 ),
('C085', '羅13', 'd5to9IsZAk', 'YPeViWt5FH@gmail.com', '$2y$10$H7HWWKYhFu3VrGjUeFEYHu/./SUco.a3soV/lQRGTxVRgKWp1/Soq', 'F', '1997-06-21', 'my_dummy_adrs2', '0900-007-004', 10 ),
('C086', '陳95', 'rZv3sljIOf', 'Xf7eMXd09E@gmail.com', '$2y$10$wO86IlTsNA3aJRwJcMdUeei4tY6KL8k529LrIsT0Iby4kqH7P4zJu', 'F', '1997-06-01', 'my_dummy_adrs57', '0900-009-003', 10 ),
('C087', '馬91', 'ThpHlvDuiA', 'QWpKksA2Tl@gmail.com', '$2y$10$PRagRKtBBqZOAQS/UYLxaO6jlmSyPZ19zRKhbBC65LlYFRBHSx9uu', 'F', '1997-08-25', 'my_dummy_adrs35', '0900-009-001', 10 ),
('C088', '胡68', 'rxcEEFwatx', 'WYQU8byqDF@gmail.com', '$2y$10$4JR2gi3waG1vqx3J4x33o.SridxeYyBjuZZ8zEKfOvtXwSVCJyxPO', 'M', '1997-03-06', 'my_dummy_adrs47', '0900-002-004', 10 ),
('C089', '趙65', 'TxznBAgzru', '6eXtzBWPmH@gmail.com', '$2y$10$dpSAa.VPVhR0NZiXIyVR1eT1W2V9YzhrRlwTG4Ypq57JbiKEyE8Q2', 'F', '1997-05-08', 'my_dummy_adrs20', '0900-008-001', 10 ),
('C090', '孫16', 'ZDuVeWwDKe', 'FZk8ksi2hU@gmail.com', '$2y$10$M/9YYzKgO4GoinZZFFEBX.wF9AXxMp9Q7Lb2Y6e9Gx5V19RQ1S6PO', 'M', '1997-01-11', 'my_dummy_adrs57', '0900-007-003', 10 ),
('C091', '李74', 'kNEG3FWnPy', 'elTEzXWHoh@gmail.com', '$2y$10$ygte2DyWx5z.ycDm4UxTEOvWRFFL8KaryVWh8k1dfeMwYvED1j9Um', 'F', '1997-09-21', 'my_dummy_adrs20', '0900-002-001', 10 ),
('C092', '高82', 'tjLGIu0Ygo', 'OPoR2L3XBM@gmail.com', '$2y$10$qbNXq5/B4Yiu8piVdE14iuBTuMO.DsFEl37cKmr1JzP0.3lRY/2mi', 'F', '1997-12-25', 'my_dummy_adrs69', '0900-003-005', 10 ),
('C093', '吳94', 'WfzRatdx8E', 'nrHjotCsgT@gmail.com', '$2y$10$B2zPGuHTmQFVuaZ53wkmdugdKTJqowGNT3NinoI3MFmhTgcxJCKfC', 'F', '1997-05-26', 'my_dummy_adrs62', '0900-002-006', 10 ),
('C094', '朱35', '17EYgVqGaZ', 'dwu9E36GEa@gmail.com', '$2y$10$p3Li3IfPxeDdhWYweRM8A.5HiGNAcnZSwvPtqM81K8/y2b6Zup5sO', 'F', '1997-03-05', 'my_dummy_adrs79', '0900-004-007', 10 ),
('C095', '陳97', '3agjPvm6FB', '54GNS7wCsb@gmail.com', '$2y$10$WoMgBweAqOehGB8xIHit7Ouxl20od.R4RzH1oALvz.0oFGew9.D92', 'M', '1997-06-26', 'my_dummy_adrs45', '0900-001-006', 10 ),
('C096', '徐26', 'zya08I7CJQ', 'rypvF1mBT0@gmail.com', '$2y$10$pi.Ttj7WSCskQARJsMqKcO1FI7wnK86MOIXAdZxPy4PWOYRFkWcjm', 'F', '1997-11-02', 'my_dummy_adrs31', '0900-006-003', 10 ),
('C097', '周48', 'gIqCjDKIWP', 'TUaYdvoztY@gmail.com', '$2y$10$9mwQ9aZgWsxPn/iL2ctu7.kcehKSnnDvfiUKI3G30s4cTd5nEI3fC', 'F', '1997-03-14', 'my_dummy_adrs51', '0900-005-007', 10 ),
('C098', '羅79', 'f1jONMnUaG', 'P4fYnFfEle@gmail.com', '$2y$10$dl7O6v9LpyenPbh/.p8u6uEHEwW/3A1lyZTvqThMQ2qtcBMTzCZ8m', 'F', '1997-03-24', 'my_dummy_adrs51', '0900-005-004', 10 ),
('C099', '劉82', '636FcFsre2', 'G48BfzNvEk@gmail.com', '$2y$10$L9HgozWOAi5Sie4lrVYtbOgkVLLJo1329S3SxxIsztm2g0my8hdr6', 'F', '1997-07-01', 'my_dummy_adrs33', '0900-003-004', 10 ),
('C100', '羅39', 'aTN7Z36XKa', 'HxJbCeep0L@gmail.com', '$2y$10$z1wuRdvIz1XIPAVIR0iH1.TOY9nDlCHKznIAnVbFr/aDbXLxsGAXq', 'F', '1997-08-08', 'my_dummy_adrs88', '0900-004-002', 10 ),
('C101', '劉81', 'l4DajvXAjH', 'nLPiThR0vS@gmail.com', '$2y$10$inemnVM0.Nr8lXwHrRdnNOsQKtotY.iLjcbwuXP4Z3KkmIGgCKVGu', 'F', '1997-06-28', 'my_dummy_adrs65', '0900-004-009', 10 ),
('C102', '梁45', 'URszO3QALH', '8LUC6DxJG3@gmail.com', '$2y$10$gwcgZosY0hP7.00zsp9jVuZyOIlEjNpUmNbSWv91v9AyN4xpoz9Ba', 'M', '1997-04-28', 'my_dummy_adrs69', '0900-005-002', 10 ),
('C103', '徐98', 'IkGbFmHKFh', 'Gx7AuQMY7y@gmail.com', '$2y$10$3LFRfvK862TxHotQBdujhuzRhaudu/RhP/jDWtwWGC.V789Zw/Ofe', 'M', '1997-09-11', 'my_dummy_adrs92', '0900-004-007', 10 ),
('C104', '朱93', 'vWdu2WIMik', 'N8wTWdhcYc@gmail.com', '$2y$10$ciaVVSLVx7uWcWSHjjLFP.BJGAxHcv.uU8Z1ZNinkL9w51ApZgWru', 'M', '1997-10-20', 'my_dummy_adrs34', '0900-003-008', 10 ),
('C105', '馬26', 'mQ02auPjSB', 'zzHJLetYZQ@gmail.com', '$2y$10$yt8zupdSPsL6Ify1gC0m7.dny5HjGTDpqQZs8N.WnrZU6uHf5lMSy', 'F', '1997-04-29', 'my_dummy_adrs73', '0900-005-005', 10 ),
('C106', '李66', 'MV7kHl7gsu', 'F82ZXLxuJO@gmail.com', '$2y$10$HsTqagbgtRPJttDKiZhRSOg5a4Lt9sdYFeORL2eyxNg9I2h2s/JkO', 'M', '1997-09-08', 'my_dummy_adrs59', '0900-001-009', 10 ),
('C107', '林42', 'wfq25RRErV', '5B9f3q7JWV@gmail.com', '$2y$10$msFVIzC63PSkGHADPyjNCOmx4Y/lQTx0JztmjfTofJ0sWfzFcv1Qm', 'F', '1997-05-23', 'my_dummy_adrs67', '0900-008-004', 10 ),
('C108', '周59', 'BtYPu1U6d2', 'yl2xZVozsq@gmail.com', '$2y$10$EOAL9Wgr12wDVDoH1Gwwqu9Y3jtPIX.tx2B.0.TiUAttlvYe2238m', 'F', '1997-05-11', 'my_dummy_adrs52', '0900-005-004', 10 ),
('C109', '朱79', '96DrtdFV8u', '4lmUY5Qja1@gmail.com', '$2y$10$yaYJ1XT2N7270E/eMoMJge1NektYGXt1uglEvNYY27ZxhikrBhhny', 'M', '1997-05-22', 'my_dummy_adrs95', '0900-002-008', 10 ),
('C110', '鄭38', 'iZl7bg16qM', 'N8RZvKk8eJ@gmail.com', '$2y$10$WtZxCSAwhOKhnsMV1strGOuTj.bD80SowFZW2hCit8Q2vJ8NmK.DG', 'M', '1997-07-30', 'my_dummy_adrs58', '0900-006-009', 10 ),
('C111', '林53', '81caOuZJQu', 'U4hgcAm00n@gmail.com', '$2y$10$WrHA9Mb1mZADZRi6BYZ8b.xkFOlKZ9C8E2/MMnRLivMdm2e3rA8U2', 'F', '1997-11-20', 'my_dummy_adrs15', '0900-007-007', 10 ),
('C112', '周23', '3jxyQsyJfp', 'J0iRCXdMQ2@gmail.com', '$2y$10$RjrrxZCLzCKJSTKJoPjrkeflie28VqtW8JbU7jduIxEim.qpKHuwS', 'F', '1997-08-04', 'my_dummy_adrs36', '0900-007-001', 10 ),
('C113', '郭32', 'QqIsRTxijK', 'nMiSMSOZCt@gmail.com', '$2y$10$ayE9njczA2eoKnSnRveIL.ZBz.zhYg3gLci9SeW50uJW6Tb9/EpkS', 'M', '1997-08-21', 'my_dummy_adrs29', '0900-005-002', 10 ),
('C114', '朱78', 'J30ImByKoP', '5vssmZO5ph@gmail.com', '$2y$10$TfhArvwnXSK.pw2.6ioPt.hOw2ZR3BVjgdHsL9pCct6tkCtde9Drq', 'M', '1997-09-23', 'my_dummy_adrs94', '0900-001-005', 10 ),
('C115', '郭28', 'Urh9hRmv4N', 'arpOL7AXWe@gmail.com', '$2y$10$3dVjROb7WljKWjcnij5OmeP.RzOZxNMywAn6dsr.1VZGx02zt/822', 'F', '1997-05-04', 'my_dummy_adrs28', '0900-001-003', 10 ),
('C116', '周73', 'dwH9cPMs9t', '99CDb39GUg@gmail.com', '$2y$10$dcoW2ODLi6.Cpm1kNJRQVeHRH7Qejb4IOiVST1HifLUSL3Df1zt/W', 'M', '1997-04-17', 'my_dummy_adrs48', '0900-001-005', 10 ),
('C117', '劉93', 'p5awzT4r9H', 'c7fHQEAv2T@gmail.com', '$2y$10$NBX5fCR7ZZo9lYNrXhDppOBes8HboSUVoWVHNohSlqKUrPRvTs0Km', 'F', '1997-04-17', 'my_dummy_adrs95', '0900-008-002', 10 ),
('C118', '何44', 'hjnJ358QP8', 'RxF4fHz6ZT@gmail.com', '$2y$10$spvYkwxe9wltSx.AlZ6avu8vNjdx4nV16IxubQFujNcC/j1/zyhLa', 'M', '1997-03-24', 'my_dummy_adrs64', '0900-004-001', 10 ),
('C119', '何16', 'G6VWpZ9MXo', 'jNqNxwy475@gmail.com', '$2y$10$ukkpOI4CPq.seHbkZIfTR.u4D1IeKWB92dOQhXx1eUkzbvmF4zJVe', 'M', '1997-12-22', 'my_dummy_adrs71', '0900-008-001', 10 ),
('C120', '周31', 'DeDvI607YV', 'oSPEtPVlNT@gmail.com', '$2y$10$W6AsenXU0d47m9QYueihcuAphbOUfJky4pzWWat.tZZVQZAwBgw6.', 'F', '1997-07-08', 'my_dummy_adrs30', '0900-007-008', 10 ),
('C121', '孫77', 'J5J2wwRFMt', '4fcp2vLbGG@gmail.com', '$2y$10$YbDx8NnXDe0Cin2tVDkBiuKHFRWUOSmCHYFasxig0da.4.rzw2qD6', 'F', '1997-04-17', 'my_dummy_adrs34', '0900-008-004', 10 ),
('C122', '胡76', '9NeISxtmRZ', '7Ia8CiKYuC@gmail.com', '$2y$10$aTaT1Uwk8XlH0YcxzfrTPO/TOSIS6lobQgBJIJyAsE83zSim4otfS', 'F', '1997-10-03', 'my_dummy_adrs36', '0900-003-005', 10 ),
('C123', '周32', 'UU6hWZ9xYS', 'ftgdmhw6mD@gmail.com', '$2y$10$5PEUGzYUem1eLfyxHaXIt.AAji1FQaq/BhhBItHyBQfAwucw7ZoQa', 'F', '1997-12-09', 'my_dummy_adrs6', '0900-005-003', 10 ),
('C124', '楊86', 'aC6OXH1tou', '3Yxe9eDfRO@gmail.com', '$2y$10$2voTYLPxbcKPsALqP9DZ7.EYq1.tyIKUM5uDMrGg18neLG9A.Iljq', 'F', '1997-12-06', 'my_dummy_adrs61', '0900-006-004', 10 ),
('C125', '楊72', '0Ng5G6vbUo', 'zSrWxgUoEH@gmail.com', '$2y$10$5FZYb5Jg8U9J2s4n/yZ1ceYily81vhiwOzYT09Sx3LuPQFMTeBpvq', 'F', '1997-03-17', 'my_dummy_adrs81', '0900-009-007', 10 ),
('C126', '鄭91', 'cKT172IOTN', 'd3wxUbpxhw@gmail.com', '$2y$10$F.9LG4NOswT.VNT8K1gi8OYRE6HEinWLTBI7hxcG3k30M.udBk56W', 'M', '1997-03-08', 'my_dummy_adrs94', '0900-004-009', 10 ),
('C127', '張16', 'huwLICftqM', 'Mq09ww5IDs@gmail.com', '$2y$10$uReRy937aepuWqJ/nOo.leKG5lbJReApJYmFVlwefRF0.0Cp59vjO', 'M', '1997-09-23', 'my_dummy_adrs51', '0900-007-009', 10 ),
('C128', '羅12', 'CpgVc0DVrU', '8QBkLvfPaw@gmail.com', '$2y$10$xFeD.3xDass9bvVinQkYoOmf4uY7W2Qy6OkJknvFxS/1c9rTOJLUi', 'M', '1997-07-31', 'my_dummy_adrs70', '0900-008-005', 10 ),
('C129', '楊31', 'dCoybnAmWz', 'IcfueIRJfD@gmail.com', '$2y$10$FMn9.F95ApHt72sI7UJ9B.0I.0MDGa8E8g3LRtkyayCozCPs1qTm.', 'M', '1997-10-15', 'my_dummy_adrs95', '0900-008-003', 10 ),
('C130', '高39', 'xCc0cqUKjy', 'WCamFMc3QX@gmail.com', '$2y$10$QZXhHPiFz8E5Hmnjf.zraeTEzGLKSTAfqX.X3cFoh7V3aDM/3P3s6', 'F', '1997-01-06', 'my_dummy_adrs73', '0900-008-007', 10 ),
('C131', '朱99', 'dSFHYTT8dn', 'QFL8qjWgKJ@gmail.com', '$2y$10$6fsZvGRrn92hIxwTwrmB3u6mhFBnFydzLysKOh0Tem6MUOrIjX/8i', 'F', '1997-10-19', 'my_dummy_adrs91', '0900-005-004', 10 ),
('C132', '吳73', 'd0UzwRjuIj', 'pfgv0jb95e@gmail.com', '$2y$10$GG12lujFZlsEIyS2k69aD.uz9vpOY4H34yxbnFQyGd4YQBcKMTtYy', 'M', '1997-08-24', 'my_dummy_adrs71', '0900-008-009', 10 ),
('C133', '朱45', 'FFWhyHnuqD', 'wU18wHjDM8@gmail.com', '$2y$10$3VhScZRGp.pEHlW0gw2dxeoHTydvPZGbPY1emTDt6kFad740y5AJe', 'M', '1997-07-17', 'my_dummy_adrs20', '0900-003-006', 10 ),
('C134', '梁95', 'Ry2Q02VLQ9', 'gUfCo96I8i@gmail.com', '$2y$10$pxYopyJQNbV5MXLlzt677.qVdKmxO.ik57A0TA4QEXjG5/UgAgF1y', 'M', '1997-06-26', 'my_dummy_adrs38', '0900-006-009', 10 ),
('C135', '謝58', 'zsKjW0kHMy', 'BVuEqztntO@gmail.com', '$2y$10$7v/Xc6dQkfWpgTMMKEQAkufDzsk81xDyWmbkddtnj8Q8znV5T31s2', 'F', '1997-04-15', 'my_dummy_adrs54', '0900-004-001', 10 ),
('C136', '何92', 'YsQjuRYkIy', 'y3JIyhrG7Z@gmail.com', '$2y$10$hkhzxbXDUP1wQAw3Ph3IW.wK58d/zSXwHGsx/6a8R0FABuQ4gQH2q', 'F', '1997-08-12', 'my_dummy_adrs15', '0900-006-007', 10 ),
('C137', '張85', 'ZgLwWJP9Av', 'asdICFl1TX@gmail.com', '$2y$10$ZGyx73lDc7qR2gPs7r5dKOMb.8osy60XQ5/pcpsVsmNiIDvIt524.', 'M', '1997-10-22', 'my_dummy_adrs21', '0900-003-007', 10 ),
('C138', '吳16', 'veGbtUfobd', '6fK0ZfP8n2@gmail.com', '$2y$10$rGef5nVfLqosQ/u7ja4CUuf8mKHrwOz9/shdHwHWusXR9TpzDeiki', 'F', '1997-10-20', 'my_dummy_adrs82', '0900-009-005', 10 ),
('C139', '周57', 'N4LdumCR2u', 'nClSp8sUVH@gmail.com', '$2y$10$/0G.yXP0/YbZzHtS54ccB.WkY2nEMoLlx3loXNnCvwAiblkX0xMyW', 'M', '1997-09-10', 'my_dummy_adrs15', '0900-007-006', 10 ),
('C140', '胡82', 'NqZ8Le3X12', '9wZoMlgkCz@gmail.com', '$2y$10$qHQt3tlqYfIeWkbpLGgxiu14GC.KcNf/Xu3CEkfUzLOM6uY0fQUHO', 'M', '1997-07-09', 'my_dummy_adrs38', '0900-006-003', 10 ),
('C141', '馬26', 'aTwTtMPclI', 'wsHKQPINxj@gmail.com', '$2y$10$WlRJbZ9N6mIf.ygJC2CyK.2O7WAZ0tZBr.BaJ0GtdVOFmQ/v.sVpa', 'M', '1997-12-14', 'my_dummy_adrs64', '0900-005-001', 10 ),
('C142', '吳43', '8YKNvw3jf8', 'FGHs89k5Dk@gmail.com', '$2y$10$qO7rj30g3u9WPBRDjPCiQ.4hn/QH9Om8his49g10nsk/gkl.x3Bpi', 'M', '1997-06-20', 'my_dummy_adrs39', '0900-003-009', 10 ),
('C143', '周91', 'aXaudZY4u2', 'C7N4LAAw85@gmail.com', '$2y$10$icDlh3vp3TVT07UpMOQ7ru2iFNW6.ExvBXaat5Sk0UHgdHyhzdPjy', 'F', '1997-04-04', 'my_dummy_adrs90', '0900-005-003', 10 ),
('C144', '吳27', 'X6xaSdQHBe', 'DH4WMwKwuu@gmail.com', '$2y$10$0747vWgPOgOnhzKjEz04CehpUFxoapSqLf3aKOj9hctcH29T3dMqW', 'F', '1997-12-27', 'my_dummy_adrs96', '0900-006-004', 10 ),
('C145', '林81', 'PfnOLGAmoL', 'cm9k9EJ9Zo@gmail.com', '$2y$10$maUOBxkqRWFcGZCC9ZdvuOXYaBC5ePfgbFHagvGVLrs/IpYWFqdr.', 'F', '1997-04-15', 'my_dummy_adrs28', '0900-004-009', 10 ),
('C146', '周78', 'cjEqQATZdf', '6YHf6CQAFn@gmail.com', '$2y$10$CZvvKDn1rYIE3.CcC0wucu/ogOZc2iYQn6kJyNVAhIAWBUlhLQSFq', 'M', '1997-03-25', 'my_dummy_adrs93', '0900-007-001', 10 ),
('C147', '朱58', 'cg8PE7lR6f', 'h5BgLeVmeW@gmail.com', '$2y$10$bbIGDldRvkp2VaB4csr9uuJfvWmgZe/MEGTygcuHNFMe0PiHfnlVe', 'F', '1997-02-24', 'my_dummy_adrs22', '0900-004-008', 10 ),
('C148', '孫35', 'cH2tUMY5ib', 'zKwX7sQQOW@gmail.com', '$2y$10$VvK45G7zkHg9bMD/MkK8weTv9Ep9lUXwGfOAfwv/ZAgmWiZPZ9AAa', 'F', '1997-12-26', 'my_dummy_adrs41', '0900-008-008', 10 ),
('C149', '郭22', 'yUHGJySuKu', 'xwbkjYFnLK@gmail.com', '$2y$10$6C7ZIwRRzih0orVdDPqqduG9dPcd1ongY1I1xYkE4FL5BTFIjDxVe', 'M', '1997-10-26', 'my_dummy_adrs36', '0900-003-005', 10 ),
('C150', '郭74', 'HkPpYmE0oi', 'Vsh0NBgQm8@gmail.com', '$2y$10$aDJf4UhVRZ1KYWnWZ8Xf/OyRfuCnLxTXWXcOb0pdAoKs1Jca.C5CW', 'M', '1997-03-02', 'my_dummy_adrs22', '0900-006-009', 10 ),
('C151', '趙35', 'sd1SZqzkJ0', '4HKskWPlvC@gmail.com', '$2y$10$H.YhfkfG/4WbBg9KwL3NuukqPsgpRtWPbyLXn02M1MfzPYsNodDQy', 'F', '1997-02-20', 'my_dummy_adrs30', '0900-001-001', 10 ),
('C152', '羅81', 'eJuFagCnwn', 'hYqRefyyeC@gmail.com', '$2y$10$MPmBjMiVaIleBewyutSrlORDG4IM9cRnR/uPn2Rr3mbdqe3p9StAu', 'M', '1997-01-07', 'my_dummy_adrs69', '0900-007-001', 10 ),
('C153', '王62', '0tWFzuVuaa', 'WeV1yGXanB@gmail.com', '$2y$10$zxnZTmkgk62xbLWoe/f45O8ahm6cYoN/bt5pPGwkevHSlEXqdbz36', 'M', '1997-02-16', 'my_dummy_adrs23', '0900-005-002', 10 ),
('C154', '徐16', 'qBzMi6kw9a', 'XbfoNOuPIj@gmail.com', '$2y$10$f5fsc7BCvC6Etq39RML2geh1sLieWcv72X/5dS0MK0CeG1FBSbBIu', 'F', '1997-03-07', 'my_dummy_adrs38', '0900-001-009', 10 ),
('C155', '謝44', 'wxnh4p5r9y', 'HAUS4yRmka@gmail.com', '$2y$10$5A.RQzRpvA2QfMf8GlpMDOylKFe0oD5QirFEmwIurZiYqn6NttMRm', 'M', '1997-11-27', 'my_dummy_adrs55', '0900-008-009', 10 ),
('C156', '王96', 'x8fA4gXvkO', 'y1FO1lotHQ@gmail.com', '$2y$10$vNb2KzYPH1gcTt8vgbNLN.ZG4OxCYNk5yKO3QUAO5ywuMSJuw8mSS', 'M', '1997-03-28', 'my_dummy_adrs36', '0900-006-002', 10 ),
('C157', '馬91', 'nOi0mPnvBB', 'eb2o39r5fT@gmail.com', '$2y$10$KisZIBpLC0a41I6GUjvCGuodYLaL6fWsZyBatMNTe8dQrPVnAmkBm', 'F', '1997-01-29', 'my_dummy_adrs63', '0900-007-009', 10 ),
('C158', '馬21', 'Fx0G4z2r8j', '3SPbxNPSIT@gmail.com', '$2y$10$vN9/oi.tNpDPUnUUjI3eO.KssS2USBjbddb/7mBGHBLqJaWj3N6ei', 'F', '1997-07-04', 'my_dummy_adrs58', '0900-007-004', 10 ),
('C159', '梁36', '9XqlwnGTtV', 'GknR7jVHTa@gmail.com', '$2y$10$LqRS91YBhWJLnDHGn4DAKOzBJ9PtzrYqnFMSEnjFPkOp0MPSrM6qm', 'M', '1997-01-16', 'my_dummy_adrs13', '0900-001-002', 10 ),
('C160', '王48', 'tMFuQn35aX', 'KSJkC4CBiP@gmail.com', '$2y$10$Oe6a0KhJGuXwbi8/ML3HZueXzv75T0eZciyLoVho8t6aYEXsm2XpS', 'F', '1997-11-24', 'my_dummy_adrs99', '0900-007-006', 10 ),
('C161', '高28', 'WoeV2W6uPt', 'vuzuJmJu5y@gmail.com', '$2y$10$v7bu21QfUPtZWuTZubhQAOVBtG2KCgkGBM3yuDuabG9EE7yw6NvsC', 'F', '1997-12-19', 'my_dummy_adrs74', '0900-005-003', 10 ),
('C162', '李75', '6NcDENrdqq', 'NjTMOUFo1U@gmail.com', '$2y$10$v6zaEi99nYF0LkqpL.u2zeI407wQ2W/a0C/ZUwjPihtRQSwyYHVbi', 'M', '1997-12-24', 'my_dummy_adrs83', '0900-004-004', 10 ),
('C163', '林84', 'iCu0Gmjotp', 'XjVnH1wpQR@gmail.com', '$2y$10$0BJiYcm2UOYMdbiitMJ/MuepxCd02KcOSwQS45nax0YkuXgghtokm', 'M', '1997-05-06', 'my_dummy_adrs42', '0900-001-006', 10 ),
('C164', '陳86', 'uc1Ar9V9Cr', 'JAo2452QsL@gmail.com', '$2y$10$KJtY9qO9.S4l0SQEkzERyeIeHYOzF131Ys8bY2xH2woGRwrdGxNTa', 'M', '1997-06-23', 'my_dummy_adrs66', '0900-005-009', 10 ),
('C165', '孫29', 'bJ2u0qJPpP', 'B48PvlpQkd@gmail.com', '$2y$10$cSMB38wEFaEQgSyWgVp3O.NOCP4i2xjdjjXHnf9yyKyM2tX7X4/fO', 'M', '1997-04-07', 'my_dummy_adrs39', '0900-009-009', 10 ),
('C166', '劉61', 'fyChlJZvRz', 'J67RjDYtxa@gmail.com', '$2y$10$qGessG5kvJu6mY7wZ8w17etNtYsKhGnSeiaBembxwDyPFcmqgeDjm', 'M', '1997-11-12', 'my_dummy_adrs73', '0900-003-002', 10 ),
('C167', '謝83', 'GBF018Pbs6', 'nrFyeC0t9g@gmail.com', '$2y$10$00gk6j9Z8ym3rfXIXsRL5.TVq5I3lcA1B1SvdILYAJaoFiGYu8fGi', 'M', '1997-06-07', 'my_dummy_adrs59', '0900-005-005', 10 ),
('C168', '徐78', 'ogogevQn5U', 'B284Uinmvp@gmail.com', '$2y$10$8hYccqDTzQNAwdKYpUjYKe.IZMlVFeJEyIpgHBsNsYbFOBwz3c1Mu', 'F', '1997-11-01', 'my_dummy_adrs26', '0900-004-001', 10 ),
('C169', '周36', 'SfYlHm9Sct', 'CrTakzRxN7@gmail.com', '$2y$10$W4dvFvMk/3ic.5ZbWcEOsO6p.nzdi.0NzZyVgMveoOjGXPwN0Efg2', 'M', '1997-03-28', 'my_dummy_adrs8', '0900-003-001', 10 ),
('C170', '周59', 'XLO2lZjRr0', 'ZGFfCUY0Va@gmail.com', '$2y$10$YP9CtR47sZQenffc080GNOcYUppV.qylbu4ay3l6vBqXvyjQiOuH.', 'M', '1997-08-04', 'my_dummy_adrs45', '0900-006-006', 10 ),
('C171', '梁58', 'rqf5NxuGCh', 'HaUWoIvPDz@gmail.com', '$2y$10$ULhatBxWSx5kl0914JP4jOfY3nqeko.qaLo0xBgFP.pgyJ5.jv7ty', 'M', '1997-10-27', 'my_dummy_adrs81', '0900-009-008', 10 ),
('C172', '陳19', 'vPxdsTVJEF', 'FvRNs3y26D@gmail.com', '$2y$10$ovhOBAAjlawQtqCeVQyUme6mNExt1bPT2Uaf..4PdEIBEvljut3K.', 'F', '1997-10-13', 'my_dummy_adrs89', '0900-004-009', 10 ),
('C173', '張11', 'j8A2z2BTSe', 'PXZpKYfuXY@gmail.com', '$2y$10$uoRVRWHLT7nIu15vgh.RNOhD9wBjRw9W2/4j.ycJT1R5xybhryzSK', 'F', '1997-12-11', 'my_dummy_adrs20', '0900-008-004', 10 ),
('C174', '周98', 'wFk8aFmwxI', '1O1WTli2D9@gmail.com', '$2y$10$5FRejSv9sk8MCPDFRkkUxuIlDQ4AVSOpCd9q0qbT4xjiernJJkjdy', 'F', '1997-04-19', 'my_dummy_adrs82', '0900-007-009', 10 ),
('C175', '張25', 'Eidz4KzCoR', 'nLpim4nUky@gmail.com', '$2y$10$pKuMSL4k/dMgOru7M7GLLeGJlGajngIxohjMkmbYLd8BbnI/f3Jie', 'M', '1997-06-29', 'my_dummy_adrs80', '0900-005-002', 10 ),
('C176', '朱81', '2cmkGOoTGx', 'NWII8Kut3x@gmail.com', '$2y$10$fewS38uLsx5R31c9UKUNI.HvqDg4ScZk4RmU5xMfwj0c3FXlx3sCK', 'F', '1997-04-18', 'my_dummy_adrs37', '0900-006-003', 10 ),
('C177', '梁53', 'JS3OdHei68', 'aN986Eik35@gmail.com', '$2y$10$Vg3jkFPxGNroR/dJhIqRUeaAMbojy9kY7GkeBnrGCjir/oaou3R2G', 'M', '1997-10-22', 'my_dummy_adrs72', '0900-002-008', 10 ),
('C178', '徐38', 'nUEZGr9rKS', 'LeWevHO5eI@gmail.com', '$2y$10$7BP7v3vAA48LY4dc82/J1.y5ewLFObxU9EB2tSto1U4mpDgs2jmBS', 'F', '1997-03-24', 'my_dummy_adrs42', '0900-005-005', 10 ),
('C179', '馬81', 'ZCO4Y0kByP', 'TqIjyCmUa2@gmail.com', '$2y$10$4lq2A82z3.3AoCHiwKkiC.3JAM0MINp87GU9bs.Owyo5YG7vKJ5pC', 'M', '1997-05-19', 'my_dummy_adrs39', '0900-003-007', 10 ),
('C180', '林96', '8V6HOPv0gk', 'oqdV5Ejz9B@gmail.com', '$2y$10$9aXSlPUvVlu7QPrwl3d5P.0khUobJ9y.ARylXstpQpu/qKixzgn72', 'M', '1997-05-22', 'my_dummy_adrs89', '0900-004-003', 10 ),
('C181', '羅72', 'JjhstdpE34', 'jbNplJSNFw@gmail.com', '$2y$10$i8QpzUoMjoRVTQZqYlEgP.23Np7qXCaQMYfPh/.QOhyZKhBFCr/zq', 'M', '1997-03-13', 'my_dummy_adrs4', '0900-002-009', 10 ),
('C182', '高59', 'FOCUYGZum3', 'lLwhXELH6J@gmail.com', '$2y$10$fNeOPO2p8BDSW52tP5Xgf.7wbwK735eA3J0ZLA2VBHt4zsgFfjURa', 'M', '1997-09-17', 'my_dummy_adrs92', '0900-006-001', 10 ),
('C183', '何63', '5JYLIQsh14', 'vBBJeerQJE@gmail.com', '$2y$10$lbSkHrFcYHQDSsVkax3OkeoT6qWD4HiydgqnJDQcpxwBJIHsXgmM.', 'M', '1997-12-25', 'my_dummy_adrs85', '0900-009-001', 10 ),
('C184', '高66', 'q7cB2kdB0z', 'C3Zgy4MHeq@gmail.com', '$2y$10$c9aBmGoo7qgt.z7MM7zkHeZjJogrsimMFv46XSjbnPcry40PTDygu', 'M', '1997-06-23', 'my_dummy_adrs20', '0900-005-008', 10 ),
('C185', '徐38', '67s8r2puBy', '8LrIl97cZ6@gmail.com', '$2y$10$0X1tif6vhGIw/pzWT9TMf.0y5/Nuh.g1DOBGoVVmarDgOmTDkKQx2', 'M', '1997-09-11', 'my_dummy_adrs77', '0900-002-007', 10 ),
('C186', '劉37', 'vCaQXcduKL', 'a0JqWKyCxZ@gmail.com', '$2y$10$u8VprKN.Z.GruBdgvdq9UOhMifV17ZFX/rSP2HIF069YzMwqVG0D6', 'M', '1997-09-09', 'my_dummy_adrs25', '0900-009-005', 10 ),
('C187', '馬37', '1R4oFwrdkD', '8UL1UWTHQo@gmail.com', '$2y$10$IYYDyJI0IGBdDtWRAoYHhuyMpvepRx/JNhWw77UVGU2Rc4sN9ri8O', 'M', '1997-07-09', 'my_dummy_adrs79', '0900-007-009', 10 ),
('C188', '鄭91', 'sdjkgKr8zg', 'S5XgGtLzff@gmail.com', '$2y$10$6TZTY3JoK3WEucAr7kzW7ujLn.gFUaGNqCwmwpQeS1sS9JGt/.vKK', 'M', '1997-04-10', 'my_dummy_adrs33', '0900-001-005', 10 ),
('C189', '胡83', '62hLn2z4Tr', 'cNOWYGyR4P@gmail.com', '$2y$10$2Np6.tZoXsJcb.esic5mPOsKPc5UkNkzEH84bivCe1aUxQqUyGDx2', 'F', '1997-10-14', 'my_dummy_adrs84', '0900-002-004', 10 ),
('C190', '馬87', '3yrm2i6gsD', 'YhIDK8ob08@gmail.com', '$2y$10$H72SwLnCWVsMZdFc4h6n2O4Kb7B9Lpjl1CIhfH/yO41B1f4NvtJXu', 'M', '1997-02-04', 'my_dummy_adrs84', '0900-003-002', 10 ),
('C191', '吳32', 'MBVyxnWNXd', '16oJy2I4C0@gmail.com', '$2y$10$tVVi7Z1DbQJ6oYYgTdzg6.ENX.H.Yn3OUHAP.8UVk/IdbBBY8ydSq', 'M', '1997-03-25', 'my_dummy_adrs21', '0900-007-006', 10 ),
('C192', '羅15', '311Gci7zPP', 'xP4h9DfFwM@gmail.com', '$2y$10$KJfoh3Sq14PB8eBpmPEf3uruj02Y98gB3.QwFrkBp71vtSyMjwG26', 'M', '1997-05-30', 'my_dummy_adrs84', '0900-006-005', 10 ),
('C193', '吳32', 'dz3q2mbqGP', 'FhU1PHbTDz@gmail.com', '$2y$10$du//kef.ldLg8tf5ofYNgeKghJ/icPHz9jr8DTcpr5WryKUMGirVq', 'F', '1997-12-16', 'my_dummy_adrs36', '0900-008-007', 10 ),
('C194', '高82', 'Wa1tspeEDq', 'sNKAsjFoI8@gmail.com', '$2y$10$8P5QkotP3uY3HXN/FiMo4OW4k2ny8Yv81HGoM9AYjvGBsSdFfXcMO', 'F', '1997-01-04', 'my_dummy_adrs15', '0900-007-007', 10 ),
('C195', '謝84', '7dCGX2C1f8', 'ujVYe2CFAt@gmail.com', '$2y$10$4dEnPfYtHCw0WdiwEiiCqOgfiZk0JT9p0ZgMPtFfaDWG.qsDkI922', 'M', '1997-01-27', 'my_dummy_adrs11', '0900-003-008', 10 ),
('C196', '楊25', 'zn4OpbNc5B', '3sVZs1qKWc@gmail.com', '$2y$10$z30C0kux4gRKbNMd8DX7OO3dvtrFQEP0nkdUPvbw2iJ/Bz1YlQTRO', 'F', '1997-03-30', 'my_dummy_adrs43', '0900-001-009', 10 ),
('C197', '胡45', 'xnFr3vLTyf', 'xP49PsgwV6@gmail.com', '$2y$10$oEZR0jyQD503sbTjrD3.CeMXWxvFDT2tYuhuR3ycDCLwF.Oyv7k0m', 'F', '1997-04-05', 'my_dummy_adrs33', '0900-008-006', 10 ),
('C198', '馬97', 'epxEXIbWqW', 'aYAyS2lQJi@gmail.com', '$2y$10$8UH46nkEfDMgGrSNDyEsl.NzmOtNkywDZG3R9Xo4H0Aaic/9kgWFm', 'M', '1997-04-08', 'my_dummy_adrs40', '0900-006-008', 10 ),
('C199', '鄭56', 'xImLJyWOdI', 'asC8ncpvuE@gmail.com', '$2y$10$.LaeHsKZlcVhSuODG8XLJesVfcjZs8pYNtxPsEM5ws.BovsU1xJne', 'F', '1997-11-14', 'my_dummy_adrs21', '0900-009-007', 10 ),
('C200', '郭14', 'a70aIsWEgw', '747QWUiEpa@gmail.com', '$2y$10$568NImG1hfTn1cTMEP34CO713PG2GnTowtulplDaTstD1COJKIUmO', 'M', '1997-09-27', 'my_dummy_adrs70', '0900-006-005', 10 );