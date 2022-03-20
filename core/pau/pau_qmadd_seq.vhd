--------------------------------------------------------------------------------
--                         Compressor_23_3_F50_uid25
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_23_3_F50_uid25 is
    port (X1 : in  std_logic_vector(1 downto 0);
          X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_23_3_F50_uid25 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100",
      "010" when "00011" | "00101" | "00110" | "01000" | "10000",
      "011" when "00111" | "01001" | "01010" | "01100" | "10001" | "10010" | "10100",
      "100" when "01011" | "01101" | "01110" | "10011" | "10101" | "10110" | "11000",
      "101" when "01111" | "10111" | "11001" | "11010" | "11100",
      "110" when "11011" | "11101" | "11110",
      "111" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                          Compressor_3_2_F50_uid33
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_3_2_F50_uid33 is
    port (X0 : in  std_logic_vector(2 downto 0);
          R : out  std_logic_vector(1 downto 0)   );
end entity;

architecture arch of Compressor_3_2_F50_uid33 is
signal X :  std_logic_vector(2 downto 0);
signal R0 :  std_logic_vector(1 downto 0);
begin
   X <= X0 ;

   with X  select  R0 <= 
      "00" when "000",
      "01" when "001" | "010" | "100",
      "10" when "011" | "101" | "110",
      "11" when "111",
      "--" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                         Compressor_14_3_F50_uid59
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- combinatorial
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X1 X0
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Compressor_14_3_F50_uid59 is
    port (X1 : in  std_logic_vector(0 downto 0);
          X0 : in  std_logic_vector(3 downto 0);
          R : out  std_logic_vector(2 downto 0)   );
end entity;

architecture arch of Compressor_14_3_F50_uid59 is
signal X :  std_logic_vector(4 downto 0);
signal R0 :  std_logic_vector(2 downto 0);
begin
   X <= X1 & X0 ;

   with X  select  R0 <= 
      "000" when "00000",
      "001" when "00001" | "00010" | "00100" | "01000",
      "010" when "00011" | "00101" | "00110" | "01001" | "01010" | "01100" | "10000",
      "011" when "00111" | "01011" | "01101" | "01110" | "10001" | "10010" | "10100" | "11000",
      "100" when "01111" | "10011" | "10101" | "10110" | "11001" | "11010" | "11100",
      "101" when "10111" | "11011" | "11101" | "11110",
      "110" when "11111",
      "---" when others;
   R <= R0;
end architecture;

--------------------------------------------------------------------------------
--                      Normalizer_ZO_30_30_30_F50_uid6
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X OZb
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_ZO_30_30_30_F50_uid6 is
    port (clk : in std_logic;
          X : in  std_logic_vector(29 downto 0);
          OZb : in  std_logic;
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(29 downto 0)   );
end entity;

architecture arch of Normalizer_ZO_30_30_30_F50_uid6 is
signal level5 :  std_logic_vector(29 downto 0);
signal sozb :  std_logic;
signal count4 :  std_logic;
signal level4 :  std_logic_vector(29 downto 0);
signal count3 :  std_logic;
signal level3 :  std_logic_vector(29 downto 0);
signal count2 :  std_logic;
signal level2 :  std_logic_vector(29 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(29 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(29 downto 0);
signal sCount :  std_logic_vector(4 downto 0);
begin
   level5 <= X ;
   sozb<= OZb;
   count4<= '1' when level5(29 downto 14) = (29 downto 14=>sozb) else '0';
   level4<= level5(29 downto 0) when count4='0' else level5(13 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(29 downto 22) = (29 downto 22=>sozb) else '0';
   level3<= level4(29 downto 0) when count3='0' else level4(21 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(29 downto 26) = (29 downto 26=>sozb) else '0';
   level2<= level3(29 downto 0) when count2='0' else level3(25 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(29 downto 28) = (29 downto 28=>sozb) else '0';
   level1<= level2(29 downto 0) when count1='0' else level2(27 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(29 downto 29) = (29 downto 29=>sozb) else '0';
   level0<= level1(29 downto 0) when count0='0' else level1(28 downto 0) & (0 downto 0 => '0');

   R <= level0;
   sCount <= count4 & count3 & count2 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                         PositDecoder_32_2_F50_uid4
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Raul Murillo (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X
-- Output signals: Sign SF Frac NZN

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity PositDecoder_32_2_F50_uid4 is
    port (clk : in std_logic;
          X : in  std_logic_vector(31 downto 0);
          Sign : out  std_logic;
          SF : out  std_logic_vector(7 downto 0);
          Frac : out  std_logic_vector(26 downto 0);
          NZN : out  std_logic   );
end entity;

architecture arch of PositDecoder_32_2_F50_uid4 is
   component Normalizer_ZO_30_30_30_F50_uid6 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(29 downto 0);
             OZb : in  std_logic;
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(29 downto 0)   );
   end component;

signal sgn :  std_logic;
signal pNZN :  std_logic;
signal rc :  std_logic;
signal regPosit :  std_logic_vector(29 downto 0);
signal regLength :  std_logic_vector(4 downto 0);
signal shiftedPosit :  std_logic_vector(29 downto 0);
signal k :  std_logic_vector(5 downto 0);
signal sgnVect :  std_logic_vector(1 downto 0);
signal exp :  std_logic_vector(1 downto 0);
signal pSF :  std_logic_vector(7 downto 0);
signal pFrac :  std_logic_vector(26 downto 0);
begin
--------------------------- Start of vhdl generation ---------------------------
--------------------------- Sign bit & special cases ---------------------------
   sgn <= X(31);
   pNZN <= '0' when (X(30 downto 0) = "0000000000000000000000000000000") else '1';
-------------- Count leading zeros/ones of regime & shift it out --------------
   rc <= X(30);
   regPosit <= X(29 downto 0);
   RegimeCounter: Normalizer_ZO_30_30_30_F50_uid6
      port map ( clk  => clk,
                 OZb => rc,
                 X => regPosit,
                 Count => regLength,
                 R => shiftedPosit);
----------------- Determine the scaling factor - regime & exp -----------------
   k <= "0" & regLength when rc /= sgn else "1" & NOT(regLength);
   sgnVect <= (others => sgn);
   exp <= shiftedPosit(28 downto 27) XOR sgnVect;
   pSF <= k & exp;
------------------------------- Extract fraction -------------------------------
   pFrac <= shiftedPosit(26 downto 0);
   Sign <= sgn;
   SF <= pSF;
   Frac <= pFrac;
   NZN <= pNZN;
---------------------------- End of vhdl generation ----------------------------
end architecture;

--------------------------------------------------------------------------------
--                      Normalizer_ZO_30_30_30_F50_uid10
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Florent de Dinechin, (2007-2020)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X OZb
-- Output signals: Count R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity Normalizer_ZO_30_30_30_F50_uid10 is
    port (clk : in std_logic;
          X : in  std_logic_vector(29 downto 0);
          OZb : in  std_logic;
          Count : out  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(29 downto 0)   );
end entity;

architecture arch of Normalizer_ZO_30_30_30_F50_uid10 is
signal level5 :  std_logic_vector(29 downto 0);
signal sozb :  std_logic;
signal count4 :  std_logic;
signal level4 :  std_logic_vector(29 downto 0);
signal count3 :  std_logic;
signal level3 :  std_logic_vector(29 downto 0);
signal count2 :  std_logic;
signal level2 :  std_logic_vector(29 downto 0);
signal count1 :  std_logic;
signal level1 :  std_logic_vector(29 downto 0);
signal count0 :  std_logic;
signal level0 :  std_logic_vector(29 downto 0);
signal sCount :  std_logic_vector(4 downto 0);
begin
   level5 <= X ;
   sozb<= OZb;
   count4<= '1' when level5(29 downto 14) = (29 downto 14=>sozb) else '0';
   level4<= level5(29 downto 0) when count4='0' else level5(13 downto 0) & (15 downto 0 => '0');

   count3<= '1' when level4(29 downto 22) = (29 downto 22=>sozb) else '0';
   level3<= level4(29 downto 0) when count3='0' else level4(21 downto 0) & (7 downto 0 => '0');

   count2<= '1' when level3(29 downto 26) = (29 downto 26=>sozb) else '0';
   level2<= level3(29 downto 0) when count2='0' else level3(25 downto 0) & (3 downto 0 => '0');

   count1<= '1' when level2(29 downto 28) = (29 downto 28=>sozb) else '0';
   level1<= level2(29 downto 0) when count1='0' else level2(27 downto 0) & (1 downto 0 => '0');

   count0<= '1' when level1(29 downto 29) = (29 downto 29=>sozb) else '0';
   level0<= level1(29 downto 0) when count0='0' else level1(28 downto 0) & (0 downto 0 => '0');

   R <= level0;
   sCount <= count4 & count3 & count2 & count1 & count0;
   Count <= sCount;
end architecture;

--------------------------------------------------------------------------------
--                         PositDecoder_32_2_F50_uid8
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Raul Murillo (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X
-- Output signals: Sign SF Frac NZN

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity PositDecoder_32_2_F50_uid8 is
    port (clk : in std_logic;
          X : in  std_logic_vector(31 downto 0);
          Sign : out  std_logic;
          SF : out  std_logic_vector(7 downto 0);
          Frac : out  std_logic_vector(26 downto 0);
          NZN : out  std_logic   );
end entity;

architecture arch of PositDecoder_32_2_F50_uid8 is
   component Normalizer_ZO_30_30_30_F50_uid10 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(29 downto 0);
             OZb : in  std_logic;
             Count : out  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(29 downto 0)   );
   end component;

signal sgn :  std_logic;
signal pNZN :  std_logic;
signal rc :  std_logic;
signal regPosit :  std_logic_vector(29 downto 0);
signal regLength :  std_logic_vector(4 downto 0);
signal shiftedPosit :  std_logic_vector(29 downto 0);
signal k :  std_logic_vector(5 downto 0);
signal sgnVect :  std_logic_vector(1 downto 0);
signal exp :  std_logic_vector(1 downto 0);
signal pSF :  std_logic_vector(7 downto 0);
signal pFrac :  std_logic_vector(26 downto 0);
begin
--------------------------- Start of vhdl generation ---------------------------
--------------------------- Sign bit & special cases ---------------------------
   sgn <= X(31);
   pNZN <= '0' when (X(30 downto 0) = "0000000000000000000000000000000") else '1';
-------------- Count leading zeros/ones of regime & shift it out --------------
   rc <= X(30);
   regPosit <= X(29 downto 0);
   RegimeCounter: Normalizer_ZO_30_30_30_F50_uid10
      port map ( clk  => clk,
                 OZb => rc,
                 X => regPosit,
                 Count => regLength,
                 R => shiftedPosit);
----------------- Determine the scaling factor - regime & exp -----------------
   k <= "0" & regLength when rc /= sgn else "1" & NOT(regLength);
   sgnVect <= (others => sgn);
   exp <= shiftedPosit(28 downto 27) XOR sgnVect;
   pSF <= k & exp;
------------------------------- Extract fraction -------------------------------
   pFrac <= shiftedPosit(26 downto 0);
   Sign <= sgn;
   SF <= pSF;
   Frac <= pFrac;
   NZN <= pNZN;
---------------------------- End of vhdl generation ----------------------------
end architecture;

--------------------------------------------------------------------------------
--                          DSPBlock_17x24_F50_uid16
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_17x24_F50_uid16 is
    port (clk : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(40 downto 0)   );
end entity;

architecture arch of DSPBlock_17x24_F50_uid16 is
signal Mint :  std_logic_vector(40 downto 0);
signal M :  std_logic_vector(40 downto 0);
signal Rtmp :  std_logic_vector(40 downto 0);
begin
   Mint <= std_logic_vector(unsigned(X) * unsigned(Y)); -- multiplier
   M <= Mint(40 downto 0);
   Rtmp <= M;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                          DSPBlock_12x24_F50_uid18
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_12x24_F50_uid18 is
    port (clk : in std_logic;
          X : in  std_logic_vector(11 downto 0);
          Y : in  std_logic_vector(23 downto 0);
          R : out  std_logic_vector(35 downto 0)   );
end entity;

architecture arch of DSPBlock_12x24_F50_uid18 is
signal Mint :  std_logic_vector(36 downto 0);
signal M :  std_logic_vector(35 downto 0);
signal Rtmp :  std_logic_vector(35 downto 0);
begin
   Mint <= std_logic_vector(signed(X) * signed('0' & Y)); -- multiplier
   M <= Mint(35 downto 0);
   Rtmp <= M;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                          DSPBlock_17x5_F50_uid20
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_17x5_F50_uid20 is
    port (clk : in std_logic;
          X : in  std_logic_vector(16 downto 0);
          Y : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(21 downto 0)   );
end entity;

architecture arch of DSPBlock_17x5_F50_uid20 is
signal Mint :  std_logic_vector(22 downto 0);
signal M :  std_logic_vector(21 downto 0);
signal Rtmp :  std_logic_vector(21 downto 0);
begin
   Mint <= std_logic_vector(signed('0' & X) * signed(Y)); -- multiplier
   M <= Mint(21 downto 0);
   Rtmp <= M;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                          DSPBlock_12x5_F50_uid22
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: 
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity DSPBlock_12x5_F50_uid22 is
    port (clk : in std_logic;
          X : in  std_logic_vector(11 downto 0);
          Y : in  std_logic_vector(4 downto 0);
          R : out  std_logic_vector(16 downto 0)   );
end entity;

architecture arch of DSPBlock_12x5_F50_uid22 is
signal Mint :  std_logic_vector(16 downto 0);
signal M :  std_logic_vector(16 downto 0);
signal Rtmp :  std_logic_vector(16 downto 0);
begin
   Mint <= std_logic_vector(signed(X) * signed(Y)); -- multiplier
   M <= Mint(16 downto 0);
   Rtmp <= M;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_38_F50_uid115
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_38_F50_uid115 is
    port (clk : in std_logic;
          X : in  std_logic_vector(37 downto 0);
          Y : in  std_logic_vector(37 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(37 downto 0)   );
end entity;

architecture arch of IntAdder_38_F50_uid115 is
signal Rtmp :  std_logic_vector(37 downto 0);
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                          IntMultiplier_F50_uid12
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Martin Kumm, Florent de Dinechin, Kinga Illyes, Bogdan Popa, Bogdan Pasca, 2012
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity IntMultiplier_F50_uid12 is
    port (clk : in std_logic;
          X : in  std_logic_vector(28 downto 0);
          Y : in  std_logic_vector(28 downto 0);
          R : out  std_logic_vector(57 downto 0)   );
end entity;

architecture arch of IntMultiplier_F50_uid12 is
   component DSPBlock_17x24_F50_uid16 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(40 downto 0)   );
   end component;

   component DSPBlock_12x24_F50_uid18 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(11 downto 0);
             Y : in  std_logic_vector(23 downto 0);
             R : out  std_logic_vector(35 downto 0)   );
   end component;

   component DSPBlock_17x5_F50_uid20 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(16 downto 0);
             Y : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(21 downto 0)   );
   end component;

   component DSPBlock_12x5_F50_uid22 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(11 downto 0);
             Y : in  std_logic_vector(4 downto 0);
             R : out  std_logic_vector(16 downto 0)   );
   end component;

   component Compressor_23_3_F50_uid25 is
      port ( X1 : in  std_logic_vector(1 downto 0);
             X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component Compressor_3_2_F50_uid33 is
      port ( X0 : in  std_logic_vector(2 downto 0);
             R : out  std_logic_vector(1 downto 0)   );
   end component;

   component Compressor_14_3_F50_uid59 is
      port ( X1 : in  std_logic_vector(0 downto 0);
             X0 : in  std_logic_vector(3 downto 0);
             R : out  std_logic_vector(2 downto 0)   );
   end component;

   component IntAdder_38_F50_uid115 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(37 downto 0);
             Y : in  std_logic_vector(37 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(37 downto 0)   );
   end component;

signal XX_m13 :  std_logic_vector(28 downto 0);
signal YY_m13 :  std_logic_vector(28 downto 0);
signal tile_0_X :  std_logic_vector(16 downto 0);
signal tile_0_Y :  std_logic_vector(23 downto 0);
signal tile_0_output :  std_logic_vector(40 downto 0);
signal tile_0_filtered_output :  unsigned(40-0 downto 0);
signal bh14_w0_0 :  std_logic;
signal bh14_w1_0 :  std_logic;
signal bh14_w2_0 :  std_logic;
signal bh14_w3_0 :  std_logic;
signal bh14_w4_0 :  std_logic;
signal bh14_w5_0 :  std_logic;
signal bh14_w6_0 :  std_logic;
signal bh14_w7_0 :  std_logic;
signal bh14_w8_0 :  std_logic;
signal bh14_w9_0 :  std_logic;
signal bh14_w10_0 :  std_logic;
signal bh14_w11_0 :  std_logic;
signal bh14_w12_0 :  std_logic;
signal bh14_w13_0 :  std_logic;
signal bh14_w14_0 :  std_logic;
signal bh14_w15_0 :  std_logic;
signal bh14_w16_0 :  std_logic;
signal bh14_w17_0 :  std_logic;
signal bh14_w18_0 :  std_logic;
signal bh14_w19_0 :  std_logic;
signal bh14_w20_0 :  std_logic;
signal bh14_w21_0 :  std_logic;
signal bh14_w22_0 :  std_logic;
signal bh14_w23_0 :  std_logic;
signal bh14_w24_0 :  std_logic;
signal bh14_w25_0 :  std_logic;
signal bh14_w26_0 :  std_logic;
signal bh14_w27_0 :  std_logic;
signal bh14_w28_0 :  std_logic;
signal bh14_w29_0 :  std_logic;
signal bh14_w30_0 :  std_logic;
signal bh14_w31_0 :  std_logic;
signal bh14_w32_0 :  std_logic;
signal bh14_w33_0 :  std_logic;
signal bh14_w34_0 :  std_logic;
signal bh14_w35_0 :  std_logic;
signal bh14_w36_0 :  std_logic;
signal bh14_w37_0 :  std_logic;
signal bh14_w38_0 :  std_logic;
signal bh14_w39_0 :  std_logic;
signal bh14_w40_0 :  std_logic;
signal tile_1_X :  std_logic_vector(11 downto 0);
signal tile_1_Y :  std_logic_vector(23 downto 0);
signal tile_1_output :  std_logic_vector(35 downto 0);
signal tile_1_filtered_output :  signed(35-0 downto 0);
signal bh14_w17_1 :  std_logic;
signal bh14_w18_1 :  std_logic;
signal bh14_w19_1 :  std_logic;
signal bh14_w20_1 :  std_logic;
signal bh14_w21_1 :  std_logic;
signal bh14_w22_1 :  std_logic;
signal bh14_w23_1 :  std_logic;
signal bh14_w24_1 :  std_logic;
signal bh14_w25_1 :  std_logic;
signal bh14_w26_1 :  std_logic;
signal bh14_w27_1 :  std_logic;
signal bh14_w28_1 :  std_logic;
signal bh14_w29_1 :  std_logic;
signal bh14_w30_1 :  std_logic;
signal bh14_w31_1 :  std_logic;
signal bh14_w32_1 :  std_logic;
signal bh14_w33_1 :  std_logic;
signal bh14_w34_1 :  std_logic;
signal bh14_w35_1 :  std_logic;
signal bh14_w36_1 :  std_logic;
signal bh14_w37_1 :  std_logic;
signal bh14_w38_1 :  std_logic;
signal bh14_w39_1 :  std_logic;
signal bh14_w40_1 :  std_logic;
signal bh14_w41_0 :  std_logic;
signal bh14_w42_0 :  std_logic;
signal bh14_w43_0 :  std_logic;
signal bh14_w44_0 :  std_logic;
signal bh14_w45_0 :  std_logic;
signal bh14_w46_0 :  std_logic;
signal bh14_w47_0 :  std_logic;
signal bh14_w48_0 :  std_logic;
signal bh14_w49_0 :  std_logic;
signal bh14_w50_0 :  std_logic;
signal bh14_w51_0 :  std_logic;
signal bh14_w52_0 :  std_logic;
signal tile_2_X :  std_logic_vector(16 downto 0);
signal tile_2_Y :  std_logic_vector(4 downto 0);
signal tile_2_output :  std_logic_vector(21 downto 0);
signal tile_2_filtered_output :  signed(21-0 downto 0);
signal bh14_w24_2 :  std_logic;
signal bh14_w25_2 :  std_logic;
signal bh14_w26_2 :  std_logic;
signal bh14_w27_2 :  std_logic;
signal bh14_w28_2 :  std_logic;
signal bh14_w29_2 :  std_logic;
signal bh14_w30_2 :  std_logic;
signal bh14_w31_2 :  std_logic;
signal bh14_w32_2 :  std_logic;
signal bh14_w33_2 :  std_logic;
signal bh14_w34_2 :  std_logic;
signal bh14_w35_2 :  std_logic;
signal bh14_w36_2 :  std_logic;
signal bh14_w37_2 :  std_logic;
signal bh14_w38_2 :  std_logic;
signal bh14_w39_2 :  std_logic;
signal bh14_w40_2 :  std_logic;
signal bh14_w41_1 :  std_logic;
signal bh14_w42_1 :  std_logic;
signal bh14_w43_1 :  std_logic;
signal bh14_w44_1 :  std_logic;
signal bh14_w45_1 :  std_logic;
signal tile_3_X :  std_logic_vector(11 downto 0);
signal tile_3_Y :  std_logic_vector(4 downto 0);
signal tile_3_output :  std_logic_vector(16 downto 0);
signal tile_3_filtered_output :  signed(16-0 downto 0);
signal bh14_w41_2 :  std_logic;
signal bh14_w42_2 :  std_logic;
signal bh14_w43_2 :  std_logic;
signal bh14_w44_2 :  std_logic;
signal bh14_w45_2 :  std_logic;
signal bh14_w46_1 :  std_logic;
signal bh14_w47_1 :  std_logic;
signal bh14_w48_1 :  std_logic;
signal bh14_w49_1 :  std_logic;
signal bh14_w50_1 :  std_logic;
signal bh14_w51_1 :  std_logic;
signal bh14_w52_1 :  std_logic;
signal bh14_w53_0 :  std_logic;
signal bh14_w54_0 :  std_logic;
signal bh14_w55_0 :  std_logic;
signal bh14_w56_0 :  std_logic;
signal bh14_w57_0 :  std_logic;
signal bh14_w45_3 :  std_logic;
signal bh14_w46_2 :  std_logic;
signal bh14_w47_2 :  std_logic;
signal bh14_w48_2 :  std_logic;
signal bh14_w49_2 :  std_logic;
signal bh14_w50_2 :  std_logic;
signal bh14_w51_2 :  std_logic;
signal bh14_w53_1 :  std_logic;
signal bh14_w54_1 :  std_logic;
signal bh14_w55_1 :  std_logic;
signal bh14_w56_1 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid26_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid26_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid26_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid26_Out0_copy27 :  std_logic_vector(2 downto 0);
signal bh14_w17_2 :  std_logic;
signal bh14_w18_2 :  std_logic;
signal bh14_w19_2 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid28_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid28_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid28_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid28_Out0_copy29 :  std_logic_vector(2 downto 0);
signal bh14_w19_3 :  std_logic;
signal bh14_w20_2 :  std_logic;
signal bh14_w21_2 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid30_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid30_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid30_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid30_Out0_copy31 :  std_logic_vector(2 downto 0);
signal bh14_w21_3 :  std_logic;
signal bh14_w22_2 :  std_logic;
signal bh14_w23_2 :  std_logic;
signal Compressor_3_2_F50_uid33_bh14_uid34_In0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid34_Out0 :  std_logic_vector(1 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid34_Out0_copy35 :  std_logic_vector(1 downto 0);
signal bh14_w23_3 :  std_logic;
signal bh14_w24_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid36_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid36_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid36_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid36_Out0_copy37 :  std_logic_vector(2 downto 0);
signal bh14_w24_4 :  std_logic;
signal bh14_w25_3 :  std_logic;
signal bh14_w26_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid38_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid38_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid38_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid38_Out0_copy39 :  std_logic_vector(2 downto 0);
signal bh14_w26_4 :  std_logic;
signal bh14_w27_3 :  std_logic;
signal bh14_w28_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid40_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid40_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid40_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid40_Out0_copy41 :  std_logic_vector(2 downto 0);
signal bh14_w28_4 :  std_logic;
signal bh14_w29_3 :  std_logic;
signal bh14_w30_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid42_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid42_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid42_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid42_Out0_copy43 :  std_logic_vector(2 downto 0);
signal bh14_w30_4 :  std_logic;
signal bh14_w31_3 :  std_logic;
signal bh14_w32_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid44_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid44_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid44_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid44_Out0_copy45 :  std_logic_vector(2 downto 0);
signal bh14_w32_4 :  std_logic;
signal bh14_w33_3 :  std_logic;
signal bh14_w34_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid46_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid46_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid46_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid46_Out0_copy47 :  std_logic_vector(2 downto 0);
signal bh14_w34_4 :  std_logic;
signal bh14_w35_3 :  std_logic;
signal bh14_w36_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid48_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid48_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid48_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid48_Out0_copy49 :  std_logic_vector(2 downto 0);
signal bh14_w36_4 :  std_logic;
signal bh14_w37_3 :  std_logic;
signal bh14_w38_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid50_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid50_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid50_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid50_Out0_copy51 :  std_logic_vector(2 downto 0);
signal bh14_w38_4 :  std_logic;
signal bh14_w39_3 :  std_logic;
signal bh14_w40_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid52_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid52_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid52_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid52_Out0_copy53 :  std_logic_vector(2 downto 0);
signal bh14_w40_4 :  std_logic;
signal bh14_w41_3 :  std_logic;
signal bh14_w42_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid54_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid54_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid54_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid54_Out0_copy55 :  std_logic_vector(2 downto 0);
signal bh14_w42_4 :  std_logic;
signal bh14_w43_3 :  std_logic;
signal bh14_w44_3 :  std_logic;
signal Compressor_3_2_F50_uid33_bh14_uid56_In0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid56_Out0 :  std_logic_vector(1 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid56_Out0_copy57 :  std_logic_vector(1 downto 0);
signal bh14_w44_4 :  std_logic;
signal bh14_w45_4 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid60_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid60_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid60_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid60_Out0_copy61 :  std_logic_vector(2 downto 0);
signal bh14_w45_5 :  std_logic;
signal bh14_w46_3 :  std_logic;
signal bh14_w47_3 :  std_logic;
signal Compressor_3_2_F50_uid33_bh14_uid62_In0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid62_Out0 :  std_logic_vector(1 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid62_Out0_copy63 :  std_logic_vector(1 downto 0);
signal bh14_w46_4 :  std_logic;
signal bh14_w47_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid64_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid64_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid64_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid64_Out0_copy65 :  std_logic_vector(2 downto 0);
signal bh14_w47_5 :  std_logic;
signal bh14_w48_3 :  std_logic;
signal bh14_w49_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid66_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid66_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid66_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid66_Out0_copy67 :  std_logic_vector(2 downto 0);
signal bh14_w49_4 :  std_logic;
signal bh14_w50_3 :  std_logic;
signal bh14_w51_3 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid68_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid68_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid68_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid68_Out0_copy69 :  std_logic_vector(2 downto 0);
signal bh14_w51_4 :  std_logic;
signal bh14_w52_2 :  std_logic;
signal bh14_w53_2 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid70_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid70_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid70_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid70_Out0_copy71 :  std_logic_vector(2 downto 0);
signal bh14_w53_3 :  std_logic;
signal bh14_w54_2 :  std_logic;
signal bh14_w55_2 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid72_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid72_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid72_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid72_Out0_copy73 :  std_logic_vector(2 downto 0);
signal bh14_w55_3 :  std_logic;
signal bh14_w56_2 :  std_logic;
signal bh14_w57_1 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid74_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid74_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid74_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid74_Out0_copy75 :  std_logic_vector(2 downto 0);
signal bh14_w19_4 :  std_logic;
signal bh14_w20_3 :  std_logic;
signal bh14_w21_4 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid76_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid76_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid76_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid76_Out0_copy77 :  std_logic_vector(2 downto 0);
signal bh14_w21_5 :  std_logic;
signal bh14_w22_3 :  std_logic;
signal bh14_w23_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid78_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid78_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid78_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid78_Out0_copy79 :  std_logic_vector(2 downto 0);
signal bh14_w23_5 :  std_logic;
signal bh14_w24_5 :  std_logic;
signal bh14_w25_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid80_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid80_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid80_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid80_Out0_copy81 :  std_logic_vector(2 downto 0);
signal bh14_w25_5 :  std_logic;
signal bh14_w26_5 :  std_logic;
signal bh14_w27_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid82_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid82_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid82_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid82_Out0_copy83 :  std_logic_vector(2 downto 0);
signal bh14_w27_5 :  std_logic;
signal bh14_w28_5 :  std_logic;
signal bh14_w29_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid84_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid84_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid84_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid84_Out0_copy85 :  std_logic_vector(2 downto 0);
signal bh14_w29_5 :  std_logic;
signal bh14_w30_5 :  std_logic;
signal bh14_w31_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid86_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid86_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid86_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid86_Out0_copy87 :  std_logic_vector(2 downto 0);
signal bh14_w31_5 :  std_logic;
signal bh14_w32_5 :  std_logic;
signal bh14_w33_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid88_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid88_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid88_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid88_Out0_copy89 :  std_logic_vector(2 downto 0);
signal bh14_w33_5 :  std_logic;
signal bh14_w34_5 :  std_logic;
signal bh14_w35_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid90_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid90_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid90_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid90_Out0_copy91 :  std_logic_vector(2 downto 0);
signal bh14_w35_5 :  std_logic;
signal bh14_w36_5 :  std_logic;
signal bh14_w37_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid92_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid92_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid92_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid92_Out0_copy93 :  std_logic_vector(2 downto 0);
signal bh14_w37_5 :  std_logic;
signal bh14_w38_5 :  std_logic;
signal bh14_w39_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid94_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid94_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid94_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid94_Out0_copy95 :  std_logic_vector(2 downto 0);
signal bh14_w39_5 :  std_logic;
signal bh14_w40_5 :  std_logic;
signal bh14_w41_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid96_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid96_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid96_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid96_Out0_copy97 :  std_logic_vector(2 downto 0);
signal bh14_w41_5 :  std_logic;
signal bh14_w42_5 :  std_logic;
signal bh14_w43_4 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid98_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid98_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid98_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid98_Out0_copy99 :  std_logic_vector(2 downto 0);
signal bh14_w43_5 :  std_logic;
signal bh14_w44_5 :  std_logic;
signal bh14_w45_6 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid100_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid100_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid100_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid100_Out0_copy101 :  std_logic_vector(2 downto 0);
signal bh14_w45_7 :  std_logic;
signal bh14_w46_5 :  std_logic;
signal bh14_w47_6 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid102_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid102_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid102_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid102_Out0_copy103 :  std_logic_vector(2 downto 0);
signal bh14_w47_7 :  std_logic;
signal bh14_w48_4 :  std_logic;
signal bh14_w49_5 :  std_logic;
signal Compressor_23_3_F50_uid25_bh14_uid104_In0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid104_In1 :  std_logic_vector(1 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid104_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_23_3_F50_uid25_bh14_uid104_Out0_copy105 :  std_logic_vector(2 downto 0);
signal bh14_w49_6 :  std_logic;
signal bh14_w50_4 :  std_logic;
signal bh14_w51_5 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid106_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid106_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid106_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid106_Out0_copy107 :  std_logic_vector(2 downto 0);
signal bh14_w51_6 :  std_logic;
signal bh14_w52_3 :  std_logic;
signal bh14_w53_4 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid108_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid108_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid108_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid108_Out0_copy109 :  std_logic_vector(2 downto 0);
signal bh14_w53_5 :  std_logic;
signal bh14_w54_3 :  std_logic;
signal bh14_w55_4 :  std_logic;
signal Compressor_14_3_F50_uid59_bh14_uid110_In0 :  std_logic_vector(3 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid110_In1 :  std_logic_vector(0 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid110_Out0 :  std_logic_vector(2 downto 0);
signal Compressor_14_3_F50_uid59_bh14_uid110_Out0_copy111 :  std_logic_vector(2 downto 0);
signal bh14_w55_5 :  std_logic;
signal bh14_w56_3 :  std_logic;
signal bh14_w57_2 :  std_logic;
signal Compressor_3_2_F50_uid33_bh14_uid112_In0 :  std_logic_vector(2 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid112_Out0 :  std_logic_vector(1 downto 0);
signal Compressor_3_2_F50_uid33_bh14_uid112_Out0_copy113 :  std_logic_vector(1 downto 0);
signal bh14_w57_3 :  std_logic;
signal tmp_bitheapResult_bh14_20 :  std_logic_vector(20 downto 0);
signal bitheapFinalAdd_bh14_In0 :  std_logic_vector(37 downto 0);
signal bitheapFinalAdd_bh14_In1 :  std_logic_vector(37 downto 0);
signal bitheapFinalAdd_bh14_Cin :  std_logic;
signal bitheapFinalAdd_bh14_Out :  std_logic_vector(37 downto 0);
signal bitheapResult_bh14 :  std_logic_vector(57 downto 0);
begin
   XX_m13 <= X ;
   YY_m13 <= Y ;
   tile_0_X <= X(16 downto 0);
   tile_0_Y <= Y(23 downto 0);
   tile_0_mult: DSPBlock_17x24_F50_uid16
      port map ( clk  => clk,
                 X => tile_0_X,
                 Y => tile_0_Y,
                 R => tile_0_output);

   tile_0_filtered_output <= unsigned(tile_0_output(40 downto 0));
   bh14_w0_0 <= tile_0_filtered_output(0);
   bh14_w1_0 <= tile_0_filtered_output(1);
   bh14_w2_0 <= tile_0_filtered_output(2);
   bh14_w3_0 <= tile_0_filtered_output(3);
   bh14_w4_0 <= tile_0_filtered_output(4);
   bh14_w5_0 <= tile_0_filtered_output(5);
   bh14_w6_0 <= tile_0_filtered_output(6);
   bh14_w7_0 <= tile_0_filtered_output(7);
   bh14_w8_0 <= tile_0_filtered_output(8);
   bh14_w9_0 <= tile_0_filtered_output(9);
   bh14_w10_0 <= tile_0_filtered_output(10);
   bh14_w11_0 <= tile_0_filtered_output(11);
   bh14_w12_0 <= tile_0_filtered_output(12);
   bh14_w13_0 <= tile_0_filtered_output(13);
   bh14_w14_0 <= tile_0_filtered_output(14);
   bh14_w15_0 <= tile_0_filtered_output(15);
   bh14_w16_0 <= tile_0_filtered_output(16);
   bh14_w17_0 <= tile_0_filtered_output(17);
   bh14_w18_0 <= tile_0_filtered_output(18);
   bh14_w19_0 <= tile_0_filtered_output(19);
   bh14_w20_0 <= tile_0_filtered_output(20);
   bh14_w21_0 <= tile_0_filtered_output(21);
   bh14_w22_0 <= tile_0_filtered_output(22);
   bh14_w23_0 <= tile_0_filtered_output(23);
   bh14_w24_0 <= tile_0_filtered_output(24);
   bh14_w25_0 <= tile_0_filtered_output(25);
   bh14_w26_0 <= tile_0_filtered_output(26);
   bh14_w27_0 <= tile_0_filtered_output(27);
   bh14_w28_0 <= tile_0_filtered_output(28);
   bh14_w29_0 <= tile_0_filtered_output(29);
   bh14_w30_0 <= tile_0_filtered_output(30);
   bh14_w31_0 <= tile_0_filtered_output(31);
   bh14_w32_0 <= tile_0_filtered_output(32);
   bh14_w33_0 <= tile_0_filtered_output(33);
   bh14_w34_0 <= tile_0_filtered_output(34);
   bh14_w35_0 <= tile_0_filtered_output(35);
   bh14_w36_0 <= tile_0_filtered_output(36);
   bh14_w37_0 <= tile_0_filtered_output(37);
   bh14_w38_0 <= tile_0_filtered_output(38);
   bh14_w39_0 <= tile_0_filtered_output(39);
   bh14_w40_0 <= tile_0_filtered_output(40);
   tile_1_X <= X(28 downto 17);
   tile_1_Y <= Y(23 downto 0);
   tile_1_mult: DSPBlock_12x24_F50_uid18
      port map ( clk  => clk,
                 X => tile_1_X,
                 Y => tile_1_Y,
                 R => tile_1_output);

   tile_1_filtered_output <= signed(tile_1_output(35 downto 0));
   bh14_w17_1 <= tile_1_filtered_output(0);
   bh14_w18_1 <= tile_1_filtered_output(1);
   bh14_w19_1 <= tile_1_filtered_output(2);
   bh14_w20_1 <= tile_1_filtered_output(3);
   bh14_w21_1 <= tile_1_filtered_output(4);
   bh14_w22_1 <= tile_1_filtered_output(5);
   bh14_w23_1 <= tile_1_filtered_output(6);
   bh14_w24_1 <= tile_1_filtered_output(7);
   bh14_w25_1 <= tile_1_filtered_output(8);
   bh14_w26_1 <= tile_1_filtered_output(9);
   bh14_w27_1 <= tile_1_filtered_output(10);
   bh14_w28_1 <= tile_1_filtered_output(11);
   bh14_w29_1 <= tile_1_filtered_output(12);
   bh14_w30_1 <= tile_1_filtered_output(13);
   bh14_w31_1 <= tile_1_filtered_output(14);
   bh14_w32_1 <= tile_1_filtered_output(15);
   bh14_w33_1 <= tile_1_filtered_output(16);
   bh14_w34_1 <= tile_1_filtered_output(17);
   bh14_w35_1 <= tile_1_filtered_output(18);
   bh14_w36_1 <= tile_1_filtered_output(19);
   bh14_w37_1 <= tile_1_filtered_output(20);
   bh14_w38_1 <= tile_1_filtered_output(21);
   bh14_w39_1 <= tile_1_filtered_output(22);
   bh14_w40_1 <= tile_1_filtered_output(23);
   bh14_w41_0 <= tile_1_filtered_output(24);
   bh14_w42_0 <= tile_1_filtered_output(25);
   bh14_w43_0 <= tile_1_filtered_output(26);
   bh14_w44_0 <= tile_1_filtered_output(27);
   bh14_w45_0 <= tile_1_filtered_output(28);
   bh14_w46_0 <= tile_1_filtered_output(29);
   bh14_w47_0 <= tile_1_filtered_output(30);
   bh14_w48_0 <= tile_1_filtered_output(31);
   bh14_w49_0 <= tile_1_filtered_output(32);
   bh14_w50_0 <= tile_1_filtered_output(33);
   bh14_w51_0 <= tile_1_filtered_output(34);
   bh14_w52_0 <= not tile_1_filtered_output(35);
   tile_2_X <= X(16 downto 0);
   tile_2_Y <= Y(28 downto 24);
   tile_2_mult: DSPBlock_17x5_F50_uid20
      port map ( clk  => clk,
                 X => tile_2_X,
                 Y => tile_2_Y,
                 R => tile_2_output);

   tile_2_filtered_output <= signed(tile_2_output(21 downto 0));
   bh14_w24_2 <= tile_2_filtered_output(0);
   bh14_w25_2 <= tile_2_filtered_output(1);
   bh14_w26_2 <= tile_2_filtered_output(2);
   bh14_w27_2 <= tile_2_filtered_output(3);
   bh14_w28_2 <= tile_2_filtered_output(4);
   bh14_w29_2 <= tile_2_filtered_output(5);
   bh14_w30_2 <= tile_2_filtered_output(6);
   bh14_w31_2 <= tile_2_filtered_output(7);
   bh14_w32_2 <= tile_2_filtered_output(8);
   bh14_w33_2 <= tile_2_filtered_output(9);
   bh14_w34_2 <= tile_2_filtered_output(10);
   bh14_w35_2 <= tile_2_filtered_output(11);
   bh14_w36_2 <= tile_2_filtered_output(12);
   bh14_w37_2 <= tile_2_filtered_output(13);
   bh14_w38_2 <= tile_2_filtered_output(14);
   bh14_w39_2 <= tile_2_filtered_output(15);
   bh14_w40_2 <= tile_2_filtered_output(16);
   bh14_w41_1 <= tile_2_filtered_output(17);
   bh14_w42_1 <= tile_2_filtered_output(18);
   bh14_w43_1 <= tile_2_filtered_output(19);
   bh14_w44_1 <= tile_2_filtered_output(20);
   bh14_w45_1 <= not tile_2_filtered_output(21);
   tile_3_X <= X(28 downto 17);
   tile_3_Y <= Y(28 downto 24);
   tile_3_mult: DSPBlock_12x5_F50_uid22
      port map ( clk  => clk,
                 X => tile_3_X,
                 Y => tile_3_Y,
                 R => tile_3_output);

   tile_3_filtered_output <= signed(tile_3_output(16 downto 0));
   bh14_w41_2 <= tile_3_filtered_output(0);
   bh14_w42_2 <= tile_3_filtered_output(1);
   bh14_w43_2 <= tile_3_filtered_output(2);
   bh14_w44_2 <= tile_3_filtered_output(3);
   bh14_w45_2 <= tile_3_filtered_output(4);
   bh14_w46_1 <= tile_3_filtered_output(5);
   bh14_w47_1 <= tile_3_filtered_output(6);
   bh14_w48_1 <= tile_3_filtered_output(7);
   bh14_w49_1 <= tile_3_filtered_output(8);
   bh14_w50_1 <= tile_3_filtered_output(9);
   bh14_w51_1 <= tile_3_filtered_output(10);
   bh14_w52_1 <= tile_3_filtered_output(11);
   bh14_w53_0 <= tile_3_filtered_output(12);
   bh14_w54_0 <= tile_3_filtered_output(13);
   bh14_w55_0 <= tile_3_filtered_output(14);
   bh14_w56_0 <= tile_3_filtered_output(15);
   bh14_w57_0 <= not tile_3_filtered_output(16);

   -- Adding the constant bits 
   bh14_w45_3 <= '1';
   bh14_w46_2 <= '1';
   bh14_w47_2 <= '1';
   bh14_w48_2 <= '1';
   bh14_w49_2 <= '1';
   bh14_w50_2 <= '1';
   bh14_w51_2 <= '1';
   bh14_w53_1 <= '1';
   bh14_w54_1 <= '1';
   bh14_w55_1 <= '1';
   bh14_w56_1 <= '1';


   Compressor_23_3_F50_uid25_bh14_uid26_In0 <= "" & bh14_w17_0 & bh14_w17_1 & "0";
   Compressor_23_3_F50_uid25_bh14_uid26_In1 <= "" & bh14_w18_0 & bh14_w18_1;
   Compressor_23_3_F50_uid25_uid26: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid26_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid26_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid26_Out0_copy27);
   Compressor_23_3_F50_uid25_bh14_uid26_Out0 <= Compressor_23_3_F50_uid25_bh14_uid26_Out0_copy27; -- output copy to hold a pipeline register if needed

   bh14_w17_2 <= Compressor_23_3_F50_uid25_bh14_uid26_Out0(0);
   bh14_w18_2 <= Compressor_23_3_F50_uid25_bh14_uid26_Out0(1);
   bh14_w19_2 <= Compressor_23_3_F50_uid25_bh14_uid26_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid28_In0 <= "" & bh14_w19_0 & bh14_w19_1 & "0";
   Compressor_23_3_F50_uid25_bh14_uid28_In1 <= "" & bh14_w20_0 & bh14_w20_1;
   Compressor_23_3_F50_uid25_uid28: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid28_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid28_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid28_Out0_copy29);
   Compressor_23_3_F50_uid25_bh14_uid28_Out0 <= Compressor_23_3_F50_uid25_bh14_uid28_Out0_copy29; -- output copy to hold a pipeline register if needed

   bh14_w19_3 <= Compressor_23_3_F50_uid25_bh14_uid28_Out0(0);
   bh14_w20_2 <= Compressor_23_3_F50_uid25_bh14_uid28_Out0(1);
   bh14_w21_2 <= Compressor_23_3_F50_uid25_bh14_uid28_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid30_In0 <= "" & bh14_w21_0 & bh14_w21_1 & "0";
   Compressor_23_3_F50_uid25_bh14_uid30_In1 <= "" & bh14_w22_0 & bh14_w22_1;
   Compressor_23_3_F50_uid25_uid30: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid30_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid30_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid30_Out0_copy31);
   Compressor_23_3_F50_uid25_bh14_uid30_Out0 <= Compressor_23_3_F50_uid25_bh14_uid30_Out0_copy31; -- output copy to hold a pipeline register if needed

   bh14_w21_3 <= Compressor_23_3_F50_uid25_bh14_uid30_Out0(0);
   bh14_w22_2 <= Compressor_23_3_F50_uid25_bh14_uid30_Out0(1);
   bh14_w23_2 <= Compressor_23_3_F50_uid25_bh14_uid30_Out0(2);

   Compressor_3_2_F50_uid33_bh14_uid34_In0 <= "" & bh14_w23_0 & bh14_w23_1 & "0";
   Compressor_3_2_F50_uid33_uid34: Compressor_3_2_F50_uid33
      port map ( X0 => Compressor_3_2_F50_uid33_bh14_uid34_In0,
                 R => Compressor_3_2_F50_uid33_bh14_uid34_Out0_copy35);
   Compressor_3_2_F50_uid33_bh14_uid34_Out0 <= Compressor_3_2_F50_uid33_bh14_uid34_Out0_copy35; -- output copy to hold a pipeline register if needed

   bh14_w23_3 <= Compressor_3_2_F50_uid33_bh14_uid34_Out0(0);
   bh14_w24_3 <= Compressor_3_2_F50_uid33_bh14_uid34_Out0(1);

   Compressor_23_3_F50_uid25_bh14_uid36_In0 <= "" & bh14_w24_0 & bh14_w24_1 & bh14_w24_2;
   Compressor_23_3_F50_uid25_bh14_uid36_In1 <= "" & bh14_w25_0 & bh14_w25_1;
   Compressor_23_3_F50_uid25_uid36: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid36_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid36_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid36_Out0_copy37);
   Compressor_23_3_F50_uid25_bh14_uid36_Out0 <= Compressor_23_3_F50_uid25_bh14_uid36_Out0_copy37; -- output copy to hold a pipeline register if needed

   bh14_w24_4 <= Compressor_23_3_F50_uid25_bh14_uid36_Out0(0);
   bh14_w25_3 <= Compressor_23_3_F50_uid25_bh14_uid36_Out0(1);
   bh14_w26_3 <= Compressor_23_3_F50_uid25_bh14_uid36_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid38_In0 <= "" & bh14_w26_0 & bh14_w26_1 & bh14_w26_2;
   Compressor_23_3_F50_uid25_bh14_uid38_In1 <= "" & bh14_w27_0 & bh14_w27_1;
   Compressor_23_3_F50_uid25_uid38: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid38_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid38_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid38_Out0_copy39);
   Compressor_23_3_F50_uid25_bh14_uid38_Out0 <= Compressor_23_3_F50_uid25_bh14_uid38_Out0_copy39; -- output copy to hold a pipeline register if needed

   bh14_w26_4 <= Compressor_23_3_F50_uid25_bh14_uid38_Out0(0);
   bh14_w27_3 <= Compressor_23_3_F50_uid25_bh14_uid38_Out0(1);
   bh14_w28_3 <= Compressor_23_3_F50_uid25_bh14_uid38_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid40_In0 <= "" & bh14_w28_0 & bh14_w28_1 & bh14_w28_2;
   Compressor_23_3_F50_uid25_bh14_uid40_In1 <= "" & bh14_w29_0 & bh14_w29_1;
   Compressor_23_3_F50_uid25_uid40: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid40_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid40_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid40_Out0_copy41);
   Compressor_23_3_F50_uid25_bh14_uid40_Out0 <= Compressor_23_3_F50_uid25_bh14_uid40_Out0_copy41; -- output copy to hold a pipeline register if needed

   bh14_w28_4 <= Compressor_23_3_F50_uid25_bh14_uid40_Out0(0);
   bh14_w29_3 <= Compressor_23_3_F50_uid25_bh14_uid40_Out0(1);
   bh14_w30_3 <= Compressor_23_3_F50_uid25_bh14_uid40_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid42_In0 <= "" & bh14_w30_0 & bh14_w30_1 & bh14_w30_2;
   Compressor_23_3_F50_uid25_bh14_uid42_In1 <= "" & bh14_w31_0 & bh14_w31_1;
   Compressor_23_3_F50_uid25_uid42: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid42_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid42_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid42_Out0_copy43);
   Compressor_23_3_F50_uid25_bh14_uid42_Out0 <= Compressor_23_3_F50_uid25_bh14_uid42_Out0_copy43; -- output copy to hold a pipeline register if needed

   bh14_w30_4 <= Compressor_23_3_F50_uid25_bh14_uid42_Out0(0);
   bh14_w31_3 <= Compressor_23_3_F50_uid25_bh14_uid42_Out0(1);
   bh14_w32_3 <= Compressor_23_3_F50_uid25_bh14_uid42_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid44_In0 <= "" & bh14_w32_0 & bh14_w32_1 & bh14_w32_2;
   Compressor_23_3_F50_uid25_bh14_uid44_In1 <= "" & bh14_w33_0 & bh14_w33_1;
   Compressor_23_3_F50_uid25_uid44: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid44_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid44_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid44_Out0_copy45);
   Compressor_23_3_F50_uid25_bh14_uid44_Out0 <= Compressor_23_3_F50_uid25_bh14_uid44_Out0_copy45; -- output copy to hold a pipeline register if needed

   bh14_w32_4 <= Compressor_23_3_F50_uid25_bh14_uid44_Out0(0);
   bh14_w33_3 <= Compressor_23_3_F50_uid25_bh14_uid44_Out0(1);
   bh14_w34_3 <= Compressor_23_3_F50_uid25_bh14_uid44_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid46_In0 <= "" & bh14_w34_0 & bh14_w34_1 & bh14_w34_2;
   Compressor_23_3_F50_uid25_bh14_uid46_In1 <= "" & bh14_w35_0 & bh14_w35_1;
   Compressor_23_3_F50_uid25_uid46: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid46_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid46_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid46_Out0_copy47);
   Compressor_23_3_F50_uid25_bh14_uid46_Out0 <= Compressor_23_3_F50_uid25_bh14_uid46_Out0_copy47; -- output copy to hold a pipeline register if needed

   bh14_w34_4 <= Compressor_23_3_F50_uid25_bh14_uid46_Out0(0);
   bh14_w35_3 <= Compressor_23_3_F50_uid25_bh14_uid46_Out0(1);
   bh14_w36_3 <= Compressor_23_3_F50_uid25_bh14_uid46_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid48_In0 <= "" & bh14_w36_0 & bh14_w36_1 & bh14_w36_2;
   Compressor_23_3_F50_uid25_bh14_uid48_In1 <= "" & bh14_w37_0 & bh14_w37_1;
   Compressor_23_3_F50_uid25_uid48: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid48_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid48_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid48_Out0_copy49);
   Compressor_23_3_F50_uid25_bh14_uid48_Out0 <= Compressor_23_3_F50_uid25_bh14_uid48_Out0_copy49; -- output copy to hold a pipeline register if needed

   bh14_w36_4 <= Compressor_23_3_F50_uid25_bh14_uid48_Out0(0);
   bh14_w37_3 <= Compressor_23_3_F50_uid25_bh14_uid48_Out0(1);
   bh14_w38_3 <= Compressor_23_3_F50_uid25_bh14_uid48_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid50_In0 <= "" & bh14_w38_0 & bh14_w38_1 & bh14_w38_2;
   Compressor_23_3_F50_uid25_bh14_uid50_In1 <= "" & bh14_w39_0 & bh14_w39_1;
   Compressor_23_3_F50_uid25_uid50: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid50_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid50_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid50_Out0_copy51);
   Compressor_23_3_F50_uid25_bh14_uid50_Out0 <= Compressor_23_3_F50_uid25_bh14_uid50_Out0_copy51; -- output copy to hold a pipeline register if needed

   bh14_w38_4 <= Compressor_23_3_F50_uid25_bh14_uid50_Out0(0);
   bh14_w39_3 <= Compressor_23_3_F50_uid25_bh14_uid50_Out0(1);
   bh14_w40_3 <= Compressor_23_3_F50_uid25_bh14_uid50_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid52_In0 <= "" & bh14_w40_0 & bh14_w40_1 & bh14_w40_2;
   Compressor_23_3_F50_uid25_bh14_uid52_In1 <= "" & bh14_w41_0 & bh14_w41_1;
   Compressor_23_3_F50_uid25_uid52: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid52_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid52_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid52_Out0_copy53);
   Compressor_23_3_F50_uid25_bh14_uid52_Out0 <= Compressor_23_3_F50_uid25_bh14_uid52_Out0_copy53; -- output copy to hold a pipeline register if needed

   bh14_w40_4 <= Compressor_23_3_F50_uid25_bh14_uid52_Out0(0);
   bh14_w41_3 <= Compressor_23_3_F50_uid25_bh14_uid52_Out0(1);
   bh14_w42_3 <= Compressor_23_3_F50_uid25_bh14_uid52_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid54_In0 <= "" & bh14_w42_0 & bh14_w42_1 & bh14_w42_2;
   Compressor_23_3_F50_uid25_bh14_uid54_In1 <= "" & bh14_w43_0 & bh14_w43_1;
   Compressor_23_3_F50_uid25_uid54: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid54_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid54_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid54_Out0_copy55);
   Compressor_23_3_F50_uid25_bh14_uid54_Out0 <= Compressor_23_3_F50_uid25_bh14_uid54_Out0_copy55; -- output copy to hold a pipeline register if needed

   bh14_w42_4 <= Compressor_23_3_F50_uid25_bh14_uid54_Out0(0);
   bh14_w43_3 <= Compressor_23_3_F50_uid25_bh14_uid54_Out0(1);
   bh14_w44_3 <= Compressor_23_3_F50_uid25_bh14_uid54_Out0(2);

   Compressor_3_2_F50_uid33_bh14_uid56_In0 <= "" & bh14_w44_0 & bh14_w44_1 & bh14_w44_2;
   Compressor_3_2_F50_uid33_uid56: Compressor_3_2_F50_uid33
      port map ( X0 => Compressor_3_2_F50_uid33_bh14_uid56_In0,
                 R => Compressor_3_2_F50_uid33_bh14_uid56_Out0_copy57);
   Compressor_3_2_F50_uid33_bh14_uid56_Out0 <= Compressor_3_2_F50_uid33_bh14_uid56_Out0_copy57; -- output copy to hold a pipeline register if needed

   bh14_w44_4 <= Compressor_3_2_F50_uid33_bh14_uid56_Out0(0);
   bh14_w45_4 <= Compressor_3_2_F50_uid33_bh14_uid56_Out0(1);

   Compressor_14_3_F50_uid59_bh14_uid60_In0 <= "" & bh14_w45_0 & bh14_w45_1 & bh14_w45_2 & bh14_w45_3;
   Compressor_14_3_F50_uid59_bh14_uid60_In1 <= "" & "0";
   Compressor_14_3_F50_uid59_uid60: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid60_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid60_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid60_Out0_copy61);
   Compressor_14_3_F50_uid59_bh14_uid60_Out0 <= Compressor_14_3_F50_uid59_bh14_uid60_Out0_copy61; -- output copy to hold a pipeline register if needed

   bh14_w45_5 <= Compressor_14_3_F50_uid59_bh14_uid60_Out0(0);
   bh14_w46_3 <= Compressor_14_3_F50_uid59_bh14_uid60_Out0(1);
   bh14_w47_3 <= Compressor_14_3_F50_uid59_bh14_uid60_Out0(2);

   Compressor_3_2_F50_uid33_bh14_uid62_In0 <= "" & bh14_w46_0 & bh14_w46_1 & bh14_w46_2;
   Compressor_3_2_F50_uid33_uid62: Compressor_3_2_F50_uid33
      port map ( X0 => Compressor_3_2_F50_uid33_bh14_uid62_In0,
                 R => Compressor_3_2_F50_uid33_bh14_uid62_Out0_copy63);
   Compressor_3_2_F50_uid33_bh14_uid62_Out0 <= Compressor_3_2_F50_uid33_bh14_uid62_Out0_copy63; -- output copy to hold a pipeline register if needed

   bh14_w46_4 <= Compressor_3_2_F50_uid33_bh14_uid62_Out0(0);
   bh14_w47_4 <= Compressor_3_2_F50_uid33_bh14_uid62_Out0(1);

   Compressor_23_3_F50_uid25_bh14_uid64_In0 <= "" & bh14_w47_0 & bh14_w47_1 & bh14_w47_2;
   Compressor_23_3_F50_uid25_bh14_uid64_In1 <= "" & bh14_w48_0 & bh14_w48_1;
   Compressor_23_3_F50_uid25_uid64: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid64_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid64_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid64_Out0_copy65);
   Compressor_23_3_F50_uid25_bh14_uid64_Out0 <= Compressor_23_3_F50_uid25_bh14_uid64_Out0_copy65; -- output copy to hold a pipeline register if needed

   bh14_w47_5 <= Compressor_23_3_F50_uid25_bh14_uid64_Out0(0);
   bh14_w48_3 <= Compressor_23_3_F50_uid25_bh14_uid64_Out0(1);
   bh14_w49_3 <= Compressor_23_3_F50_uid25_bh14_uid64_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid66_In0 <= "" & bh14_w49_0 & bh14_w49_1 & bh14_w49_2;
   Compressor_23_3_F50_uid25_bh14_uid66_In1 <= "" & bh14_w50_0 & bh14_w50_1;
   Compressor_23_3_F50_uid25_uid66: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid66_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid66_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid66_Out0_copy67);
   Compressor_23_3_F50_uid25_bh14_uid66_Out0 <= Compressor_23_3_F50_uid25_bh14_uid66_Out0_copy67; -- output copy to hold a pipeline register if needed

   bh14_w49_4 <= Compressor_23_3_F50_uid25_bh14_uid66_Out0(0);
   bh14_w50_3 <= Compressor_23_3_F50_uid25_bh14_uid66_Out0(1);
   bh14_w51_3 <= Compressor_23_3_F50_uid25_bh14_uid66_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid68_In0 <= "" & bh14_w51_0 & bh14_w51_1 & bh14_w51_2;
   Compressor_23_3_F50_uid25_bh14_uid68_In1 <= "" & bh14_w52_0 & bh14_w52_1;
   Compressor_23_3_F50_uid25_uid68: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid68_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid68_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid68_Out0_copy69);
   Compressor_23_3_F50_uid25_bh14_uid68_Out0 <= Compressor_23_3_F50_uid25_bh14_uid68_Out0_copy69; -- output copy to hold a pipeline register if needed

   bh14_w51_4 <= Compressor_23_3_F50_uid25_bh14_uid68_Out0(0);
   bh14_w52_2 <= Compressor_23_3_F50_uid25_bh14_uid68_Out0(1);
   bh14_w53_2 <= Compressor_23_3_F50_uid25_bh14_uid68_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid70_In0 <= "" & bh14_w53_0 & bh14_w53_1 & "0";
   Compressor_23_3_F50_uid25_bh14_uid70_In1 <= "" & bh14_w54_0 & bh14_w54_1;
   Compressor_23_3_F50_uid25_uid70: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid70_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid70_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid70_Out0_copy71);
   Compressor_23_3_F50_uid25_bh14_uid70_Out0 <= Compressor_23_3_F50_uid25_bh14_uid70_Out0_copy71; -- output copy to hold a pipeline register if needed

   bh14_w53_3 <= Compressor_23_3_F50_uid25_bh14_uid70_Out0(0);
   bh14_w54_2 <= Compressor_23_3_F50_uid25_bh14_uid70_Out0(1);
   bh14_w55_2 <= Compressor_23_3_F50_uid25_bh14_uid70_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid72_In0 <= "" & bh14_w55_0 & bh14_w55_1 & "0";
   Compressor_23_3_F50_uid25_bh14_uid72_In1 <= "" & bh14_w56_0 & bh14_w56_1;
   Compressor_23_3_F50_uid25_uid72: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid72_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid72_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid72_Out0_copy73);
   Compressor_23_3_F50_uid25_bh14_uid72_Out0 <= Compressor_23_3_F50_uid25_bh14_uid72_Out0_copy73; -- output copy to hold a pipeline register if needed

   bh14_w55_3 <= Compressor_23_3_F50_uid25_bh14_uid72_Out0(0);
   bh14_w56_2 <= Compressor_23_3_F50_uid25_bh14_uid72_Out0(1);
   bh14_w57_1 <= Compressor_23_3_F50_uid25_bh14_uid72_Out0(2);

   Compressor_14_3_F50_uid59_bh14_uid74_In0 <= "" & bh14_w19_3 & bh14_w19_2 & "0" & "0";
   Compressor_14_3_F50_uid59_bh14_uid74_In1 <= "" & bh14_w20_2;
   Compressor_14_3_F50_uid59_uid74: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid74_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid74_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid74_Out0_copy75);
   Compressor_14_3_F50_uid59_bh14_uid74_Out0 <= Compressor_14_3_F50_uid59_bh14_uid74_Out0_copy75; -- output copy to hold a pipeline register if needed

   bh14_w19_4 <= Compressor_14_3_F50_uid59_bh14_uid74_Out0(0);
   bh14_w20_3 <= Compressor_14_3_F50_uid59_bh14_uid74_Out0(1);
   bh14_w21_4 <= Compressor_14_3_F50_uid59_bh14_uid74_Out0(2);

   Compressor_14_3_F50_uid59_bh14_uid76_In0 <= "" & bh14_w21_3 & bh14_w21_2 & "0" & "0";
   Compressor_14_3_F50_uid59_bh14_uid76_In1 <= "" & bh14_w22_2;
   Compressor_14_3_F50_uid59_uid76: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid76_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid76_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid76_Out0_copy77);
   Compressor_14_3_F50_uid59_bh14_uid76_Out0 <= Compressor_14_3_F50_uid59_bh14_uid76_Out0_copy77; -- output copy to hold a pipeline register if needed

   bh14_w21_5 <= Compressor_14_3_F50_uid59_bh14_uid76_Out0(0);
   bh14_w22_3 <= Compressor_14_3_F50_uid59_bh14_uid76_Out0(1);
   bh14_w23_4 <= Compressor_14_3_F50_uid59_bh14_uid76_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid78_In0 <= "" & bh14_w23_3 & bh14_w23_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid78_In1 <= "" & bh14_w24_4 & bh14_w24_3;
   Compressor_23_3_F50_uid25_uid78: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid78_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid78_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid78_Out0_copy79);
   Compressor_23_3_F50_uid25_bh14_uid78_Out0 <= Compressor_23_3_F50_uid25_bh14_uid78_Out0_copy79; -- output copy to hold a pipeline register if needed

   bh14_w23_5 <= Compressor_23_3_F50_uid25_bh14_uid78_Out0(0);
   bh14_w24_5 <= Compressor_23_3_F50_uid25_bh14_uid78_Out0(1);
   bh14_w25_4 <= Compressor_23_3_F50_uid25_bh14_uid78_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid80_In0 <= "" & bh14_w25_3 & bh14_w25_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid80_In1 <= "" & bh14_w26_4 & bh14_w26_3;
   Compressor_23_3_F50_uid25_uid80: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid80_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid80_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid80_Out0_copy81);
   Compressor_23_3_F50_uid25_bh14_uid80_Out0 <= Compressor_23_3_F50_uid25_bh14_uid80_Out0_copy81; -- output copy to hold a pipeline register if needed

   bh14_w25_5 <= Compressor_23_3_F50_uid25_bh14_uid80_Out0(0);
   bh14_w26_5 <= Compressor_23_3_F50_uid25_bh14_uid80_Out0(1);
   bh14_w27_4 <= Compressor_23_3_F50_uid25_bh14_uid80_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid82_In0 <= "" & bh14_w27_3 & bh14_w27_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid82_In1 <= "" & bh14_w28_4 & bh14_w28_3;
   Compressor_23_3_F50_uid25_uid82: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid82_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid82_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid82_Out0_copy83);
   Compressor_23_3_F50_uid25_bh14_uid82_Out0 <= Compressor_23_3_F50_uid25_bh14_uid82_Out0_copy83; -- output copy to hold a pipeline register if needed

   bh14_w27_5 <= Compressor_23_3_F50_uid25_bh14_uid82_Out0(0);
   bh14_w28_5 <= Compressor_23_3_F50_uid25_bh14_uid82_Out0(1);
   bh14_w29_4 <= Compressor_23_3_F50_uid25_bh14_uid82_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid84_In0 <= "" & bh14_w29_3 & bh14_w29_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid84_In1 <= "" & bh14_w30_4 & bh14_w30_3;
   Compressor_23_3_F50_uid25_uid84: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid84_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid84_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid84_Out0_copy85);
   Compressor_23_3_F50_uid25_bh14_uid84_Out0 <= Compressor_23_3_F50_uid25_bh14_uid84_Out0_copy85; -- output copy to hold a pipeline register if needed

   bh14_w29_5 <= Compressor_23_3_F50_uid25_bh14_uid84_Out0(0);
   bh14_w30_5 <= Compressor_23_3_F50_uid25_bh14_uid84_Out0(1);
   bh14_w31_4 <= Compressor_23_3_F50_uid25_bh14_uid84_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid86_In0 <= "" & bh14_w31_3 & bh14_w31_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid86_In1 <= "" & bh14_w32_4 & bh14_w32_3;
   Compressor_23_3_F50_uid25_uid86: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid86_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid86_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid86_Out0_copy87);
   Compressor_23_3_F50_uid25_bh14_uid86_Out0 <= Compressor_23_3_F50_uid25_bh14_uid86_Out0_copy87; -- output copy to hold a pipeline register if needed

   bh14_w31_5 <= Compressor_23_3_F50_uid25_bh14_uid86_Out0(0);
   bh14_w32_5 <= Compressor_23_3_F50_uid25_bh14_uid86_Out0(1);
   bh14_w33_4 <= Compressor_23_3_F50_uid25_bh14_uid86_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid88_In0 <= "" & bh14_w33_3 & bh14_w33_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid88_In1 <= "" & bh14_w34_4 & bh14_w34_3;
   Compressor_23_3_F50_uid25_uid88: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid88_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid88_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid88_Out0_copy89);
   Compressor_23_3_F50_uid25_bh14_uid88_Out0 <= Compressor_23_3_F50_uid25_bh14_uid88_Out0_copy89; -- output copy to hold a pipeline register if needed

   bh14_w33_5 <= Compressor_23_3_F50_uid25_bh14_uid88_Out0(0);
   bh14_w34_5 <= Compressor_23_3_F50_uid25_bh14_uid88_Out0(1);
   bh14_w35_4 <= Compressor_23_3_F50_uid25_bh14_uid88_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid90_In0 <= "" & bh14_w35_3 & bh14_w35_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid90_In1 <= "" & bh14_w36_4 & bh14_w36_3;
   Compressor_23_3_F50_uid25_uid90: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid90_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid90_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid90_Out0_copy91);
   Compressor_23_3_F50_uid25_bh14_uid90_Out0 <= Compressor_23_3_F50_uid25_bh14_uid90_Out0_copy91; -- output copy to hold a pipeline register if needed

   bh14_w35_5 <= Compressor_23_3_F50_uid25_bh14_uid90_Out0(0);
   bh14_w36_5 <= Compressor_23_3_F50_uid25_bh14_uid90_Out0(1);
   bh14_w37_4 <= Compressor_23_3_F50_uid25_bh14_uid90_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid92_In0 <= "" & bh14_w37_3 & bh14_w37_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid92_In1 <= "" & bh14_w38_4 & bh14_w38_3;
   Compressor_23_3_F50_uid25_uid92: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid92_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid92_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid92_Out0_copy93);
   Compressor_23_3_F50_uid25_bh14_uid92_Out0 <= Compressor_23_3_F50_uid25_bh14_uid92_Out0_copy93; -- output copy to hold a pipeline register if needed

   bh14_w37_5 <= Compressor_23_3_F50_uid25_bh14_uid92_Out0(0);
   bh14_w38_5 <= Compressor_23_3_F50_uid25_bh14_uid92_Out0(1);
   bh14_w39_4 <= Compressor_23_3_F50_uid25_bh14_uid92_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid94_In0 <= "" & bh14_w39_3 & bh14_w39_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid94_In1 <= "" & bh14_w40_4 & bh14_w40_3;
   Compressor_23_3_F50_uid25_uid94: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid94_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid94_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid94_Out0_copy95);
   Compressor_23_3_F50_uid25_bh14_uid94_Out0 <= Compressor_23_3_F50_uid25_bh14_uid94_Out0_copy95; -- output copy to hold a pipeline register if needed

   bh14_w39_5 <= Compressor_23_3_F50_uid25_bh14_uid94_Out0(0);
   bh14_w40_5 <= Compressor_23_3_F50_uid25_bh14_uid94_Out0(1);
   bh14_w41_4 <= Compressor_23_3_F50_uid25_bh14_uid94_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid96_In0 <= "" & bh14_w41_3 & bh14_w41_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid96_In1 <= "" & bh14_w42_4 & bh14_w42_3;
   Compressor_23_3_F50_uid25_uid96: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid96_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid96_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid96_Out0_copy97);
   Compressor_23_3_F50_uid25_bh14_uid96_Out0 <= Compressor_23_3_F50_uid25_bh14_uid96_Out0_copy97; -- output copy to hold a pipeline register if needed

   bh14_w41_5 <= Compressor_23_3_F50_uid25_bh14_uid96_Out0(0);
   bh14_w42_5 <= Compressor_23_3_F50_uid25_bh14_uid96_Out0(1);
   bh14_w43_4 <= Compressor_23_3_F50_uid25_bh14_uid96_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid98_In0 <= "" & bh14_w43_3 & bh14_w43_2 & "0";
   Compressor_23_3_F50_uid25_bh14_uid98_In1 <= "" & bh14_w44_4 & bh14_w44_3;
   Compressor_23_3_F50_uid25_uid98: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid98_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid98_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid98_Out0_copy99);
   Compressor_23_3_F50_uid25_bh14_uid98_Out0 <= Compressor_23_3_F50_uid25_bh14_uid98_Out0_copy99; -- output copy to hold a pipeline register if needed

   bh14_w43_5 <= Compressor_23_3_F50_uid25_bh14_uid98_Out0(0);
   bh14_w44_5 <= Compressor_23_3_F50_uid25_bh14_uid98_Out0(1);
   bh14_w45_6 <= Compressor_23_3_F50_uid25_bh14_uid98_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid100_In0 <= "" & bh14_w45_5 & bh14_w45_4 & "0";
   Compressor_23_3_F50_uid25_bh14_uid100_In1 <= "" & bh14_w46_3 & bh14_w46_4;
   Compressor_23_3_F50_uid25_uid100: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid100_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid100_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid100_Out0_copy101);
   Compressor_23_3_F50_uid25_bh14_uid100_Out0 <= Compressor_23_3_F50_uid25_bh14_uid100_Out0_copy101; -- output copy to hold a pipeline register if needed

   bh14_w45_7 <= Compressor_23_3_F50_uid25_bh14_uid100_Out0(0);
   bh14_w46_5 <= Compressor_23_3_F50_uid25_bh14_uid100_Out0(1);
   bh14_w47_6 <= Compressor_23_3_F50_uid25_bh14_uid100_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid102_In0 <= "" & bh14_w47_3 & bh14_w47_5 & bh14_w47_4;
   Compressor_23_3_F50_uid25_bh14_uid102_In1 <= "" & bh14_w48_3 & bh14_w48_2;
   Compressor_23_3_F50_uid25_uid102: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid102_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid102_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid102_Out0_copy103);
   Compressor_23_3_F50_uid25_bh14_uid102_Out0 <= Compressor_23_3_F50_uid25_bh14_uid102_Out0_copy103; -- output copy to hold a pipeline register if needed

   bh14_w47_7 <= Compressor_23_3_F50_uid25_bh14_uid102_Out0(0);
   bh14_w48_4 <= Compressor_23_3_F50_uid25_bh14_uid102_Out0(1);
   bh14_w49_5 <= Compressor_23_3_F50_uid25_bh14_uid102_Out0(2);

   Compressor_23_3_F50_uid25_bh14_uid104_In0 <= "" & bh14_w49_4 & bh14_w49_3 & "0";
   Compressor_23_3_F50_uid25_bh14_uid104_In1 <= "" & bh14_w50_3 & bh14_w50_2;
   Compressor_23_3_F50_uid25_uid104: Compressor_23_3_F50_uid25
      port map ( X0 => Compressor_23_3_F50_uid25_bh14_uid104_In0,
                 X1 => Compressor_23_3_F50_uid25_bh14_uid104_In1,
                 R => Compressor_23_3_F50_uid25_bh14_uid104_Out0_copy105);
   Compressor_23_3_F50_uid25_bh14_uid104_Out0 <= Compressor_23_3_F50_uid25_bh14_uid104_Out0_copy105; -- output copy to hold a pipeline register if needed

   bh14_w49_6 <= Compressor_23_3_F50_uid25_bh14_uid104_Out0(0);
   bh14_w50_4 <= Compressor_23_3_F50_uid25_bh14_uid104_Out0(1);
   bh14_w51_5 <= Compressor_23_3_F50_uid25_bh14_uid104_Out0(2);

   Compressor_14_3_F50_uid59_bh14_uid106_In0 <= "" & bh14_w51_4 & bh14_w51_3 & "0" & "0";
   Compressor_14_3_F50_uid59_bh14_uid106_In1 <= "" & bh14_w52_2;
   Compressor_14_3_F50_uid59_uid106: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid106_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid106_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid106_Out0_copy107);
   Compressor_14_3_F50_uid59_bh14_uid106_Out0 <= Compressor_14_3_F50_uid59_bh14_uid106_Out0_copy107; -- output copy to hold a pipeline register if needed

   bh14_w51_6 <= Compressor_14_3_F50_uid59_bh14_uid106_Out0(0);
   bh14_w52_3 <= Compressor_14_3_F50_uid59_bh14_uid106_Out0(1);
   bh14_w53_4 <= Compressor_14_3_F50_uid59_bh14_uid106_Out0(2);

   Compressor_14_3_F50_uid59_bh14_uid108_In0 <= "" & bh14_w53_3 & bh14_w53_2 & "0" & "0";
   Compressor_14_3_F50_uid59_bh14_uid108_In1 <= "" & bh14_w54_2;
   Compressor_14_3_F50_uid59_uid108: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid108_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid108_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid108_Out0_copy109);
   Compressor_14_3_F50_uid59_bh14_uid108_Out0 <= Compressor_14_3_F50_uid59_bh14_uid108_Out0_copy109; -- output copy to hold a pipeline register if needed

   bh14_w53_5 <= Compressor_14_3_F50_uid59_bh14_uid108_Out0(0);
   bh14_w54_3 <= Compressor_14_3_F50_uid59_bh14_uid108_Out0(1);
   bh14_w55_4 <= Compressor_14_3_F50_uid59_bh14_uid108_Out0(2);

   Compressor_14_3_F50_uid59_bh14_uid110_In0 <= "" & bh14_w55_3 & bh14_w55_2 & "0" & "0";
   Compressor_14_3_F50_uid59_bh14_uid110_In1 <= "" & bh14_w56_2;
   Compressor_14_3_F50_uid59_uid110: Compressor_14_3_F50_uid59
      port map ( X0 => Compressor_14_3_F50_uid59_bh14_uid110_In0,
                 X1 => Compressor_14_3_F50_uid59_bh14_uid110_In1,
                 R => Compressor_14_3_F50_uid59_bh14_uid110_Out0_copy111);
   Compressor_14_3_F50_uid59_bh14_uid110_Out0 <= Compressor_14_3_F50_uid59_bh14_uid110_Out0_copy111; -- output copy to hold a pipeline register if needed

   bh14_w55_5 <= Compressor_14_3_F50_uid59_bh14_uid110_Out0(0);
   bh14_w56_3 <= Compressor_14_3_F50_uid59_bh14_uid110_Out0(1);
   bh14_w57_2 <= Compressor_14_3_F50_uid59_bh14_uid110_Out0(2);

   Compressor_3_2_F50_uid33_bh14_uid112_In0 <= "" & bh14_w57_1 & bh14_w57_0 & "0";
   Compressor_3_2_F50_uid33_uid112: Compressor_3_2_F50_uid33
      port map ( X0 => Compressor_3_2_F50_uid33_bh14_uid112_In0,
                 R => Compressor_3_2_F50_uid33_bh14_uid112_Out0_copy113);
   Compressor_3_2_F50_uid33_bh14_uid112_Out0 <= Compressor_3_2_F50_uid33_bh14_uid112_Out0_copy113; -- output copy to hold a pipeline register if needed

   bh14_w57_3 <= Compressor_3_2_F50_uid33_bh14_uid112_Out0(0);
   tmp_bitheapResult_bh14_20 <= bh14_w20_3 & bh14_w19_4 & bh14_w18_2 & bh14_w17_2 & bh14_w16_0 & bh14_w15_0 & bh14_w14_0 & bh14_w13_0 & bh14_w12_0 & bh14_w11_0 & bh14_w10_0 & bh14_w9_0 & bh14_w8_0 & bh14_w7_0 & bh14_w6_0 & bh14_w5_0 & bh14_w4_0 & bh14_w3_0 & bh14_w2_0 & bh14_w1_0 & bh14_w0_0;

   bitheapFinalAdd_bh14_In0 <= "0" & bh14_w57_3 & bh14_w56_3 & bh14_w55_5 & bh14_w54_3 & bh14_w53_5 & bh14_w52_3 & bh14_w51_6 & bh14_w50_4 & bh14_w49_5 & bh14_w48_4 & bh14_w47_6 & bh14_w46_5 & bh14_w45_7 & bh14_w44_5 & bh14_w43_5 & bh14_w42_5 & bh14_w41_5 & bh14_w40_5 & bh14_w39_5 & bh14_w38_5 & bh14_w37_5 & bh14_w36_5 & bh14_w35_5 & bh14_w34_5 & bh14_w33_5 & bh14_w32_5 & bh14_w31_5 & bh14_w30_5 & bh14_w29_5 & bh14_w28_5 & bh14_w27_5 & bh14_w26_5 & bh14_w25_5 & bh14_w24_5 & bh14_w23_5 & bh14_w22_3 & bh14_w21_5;
   bitheapFinalAdd_bh14_In1 <= "0" & bh14_w57_2 & "0" & bh14_w55_4 & "0" & bh14_w53_4 & "0" & bh14_w51_5 & "0" & bh14_w49_6 & "0" & bh14_w47_7 & "0" & bh14_w45_6 & "0" & bh14_w43_4 & "0" & bh14_w41_4 & "0" & bh14_w39_4 & "0" & bh14_w37_4 & "0" & bh14_w35_4 & "0" & bh14_w33_4 & "0" & bh14_w31_4 & "0" & bh14_w29_4 & "0" & bh14_w27_4 & "0" & bh14_w25_4 & "0" & bh14_w23_4 & "0" & bh14_w21_4;
   bitheapFinalAdd_bh14_Cin <= '0';

   bitheapFinalAdd_bh14: IntAdder_38_F50_uid115
      port map ( clk  => clk,
                 Cin => bitheapFinalAdd_bh14_Cin,
                 X => bitheapFinalAdd_bh14_In0,
                 Y => bitheapFinalAdd_bh14_In1,
                 R => bitheapFinalAdd_bh14_Out);
   bitheapResult_bh14 <= bitheapFinalAdd_bh14_Out(36 downto 0) & tmp_bitheapResult_bh14_20;
   R <= bitheapResult_bh14(57 downto 0);
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_9_F50_uid117
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_9_F50_uid117 is
    port (clk : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : in  std_logic_vector(8 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(8 downto 0)   );
end entity;

architecture arch of IntAdder_9_F50_uid117 is
signal Rtmp :  std_logic_vector(8 downto 0);
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_9_F50_uid120
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_9_F50_uid120 is
    port (clk : in std_logic;
          X : in  std_logic_vector(8 downto 0);
          Y : in  std_logic_vector(8 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(8 downto 0)   );
end entity;

architecture arch of IntAdder_9_F50_uid120 is
signal Rtmp :  std_logic_vector(8 downto 0);
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                           IntAdder_8_F50_uid122
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_8_F50_uid122 is
    port (clk : in std_logic;
          X : in  std_logic_vector(7 downto 0);
          Y : in  std_logic_vector(7 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(7 downto 0)   );
end entity;

architecture arch of IntAdder_8_F50_uid122 is
signal Rtmp :  std_logic_vector(7 downto 0);
begin
   Rtmp <= X + Y + Cin;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                   RightShifter296_by_max_240_F50_uid124
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca (2008-2011), Florent de Dinechin (2008-2019)
--------------------------------------------------------------------------------
-- Pipeline depth: 1 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X S padBit
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity RightShifter296_by_max_240_F50_uid124 is
    port (clk : in std_logic;
          X : in  std_logic_vector(295 downto 0);
          S : in  std_logic_vector(7 downto 0);
          padBit : in  std_logic;
          R : out  std_logic_vector(295 downto 0)   );
end entity;

architecture arch of RightShifter296_by_max_240_F50_uid124 is
signal ps, ps_d1 :  std_logic_vector(7 downto 0);
signal level0 :  std_logic_vector(295 downto 0);
signal level1 :  std_logic_vector(296 downto 0);
signal level2 :  std_logic_vector(298 downto 0);
signal level3, level3_d1 :  std_logic_vector(302 downto 0);
signal level4 :  std_logic_vector(310 downto 0);
signal level5 :  std_logic_vector(326 downto 0);
signal level6 :  std_logic_vector(358 downto 0);
signal level7 :  std_logic_vector(422 downto 0);
signal level8 :  std_logic_vector(550 downto 0);
signal padBit_d1 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            ps_d1 <=  ps;
            level3_d1 <=  level3;
            padBit_d1 <=  padBit;
         end if;
      end process;
   ps<= S;
   level0<= X;
   level1 <=  (0 downto 0 => padBit) & level0 when ps(0) = '1' else    level0 & (0 downto 0 => '0');
   R <= level8(550 downto 255);
   level2 <=  (1 downto 0 => padBit) & level1 when ps(1) = '1' else    level1 & (1 downto 0 => '0');
   R <= level8(550 downto 255);
   level3 <=  (3 downto 0 => padBit) & level2 when ps(2) = '1' else    level2 & (3 downto 0 => '0');
   R <= level8(550 downto 255);
   level4 <=  (7 downto 0 => padBit_d1) & level3_d1 when ps_d1(3) = '1' else    level3_d1 & (7 downto 0 => '0');
   R <= level8(550 downto 255);
   level5 <=  (15 downto 0 => padBit_d1) & level4 when ps_d1(4) = '1' else    level4 & (15 downto 0 => '0');
   R <= level8(550 downto 255);
   level6 <=  (31 downto 0 => padBit_d1) & level5 when ps_d1(5) = '1' else    level5 & (31 downto 0 => '0');
   R <= level8(550 downto 255);
   level7 <=  (63 downto 0 => padBit_d1) & level6 when ps_d1(6) = '1' else    level6 & (63 downto 0 => '0');
   R <= level8(550 downto 255);
   level8 <=  (127 downto 0 => padBit_d1) & level7 when ps_d1(7) = '1' else    level7 & (127 downto 0 => '0');
   R <= level8(550 downto 255);
end architecture;

--------------------------------------------------------------------------------
--                          IntAdder_512_F50_uid126
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Bogdan Pasca, Florent de Dinechin (2008-2016)
--------------------------------------------------------------------------------
-- Pipeline depth: 0 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: X Y Cin
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
library std;
use std.textio.all;
library work;

entity IntAdder_512_F50_uid126 is
    port (clk : in std_logic;
          X : in  std_logic_vector(511 downto 0);
          Y : in  std_logic_vector(511 downto 0);
          Cin : in  std_logic;
          R : out  std_logic_vector(511 downto 0)   );
end entity;

architecture arch of IntAdder_512_F50_uid126 is
signal Rtmp :  std_logic_vector(511 downto 0);
signal Y_d1, Y_d2 :  std_logic_vector(511 downto 0);
signal Cin_d1, Cin_d2 :  std_logic;
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            Y_d1 <=  Y;
            Y_d2 <=  Y_d1;
            Cin_d1 <=  Cin;
            Cin_d2 <=  Cin_d1;
         end if;
      end process;
   Rtmp <= X + Y_d2 + Cin_d2;
   R <= Rtmp;
end architecture;

--------------------------------------------------------------------------------
--                                  PositMAC
--                     (PositMAC_32_2_Quire_512_F50_uid2)
-- Inputs: this FMA computes A*B+C
-- VHDL generated for Kintex7 @ 50MHz
-- This operator is part of the Infinite Virtual Library FloPoCoLib
-- All rights reserved 
-- Authors: Raul Murillo (2021)
--------------------------------------------------------------------------------
-- Pipeline depth: 2 cycles
-- Clock period (ns): 20
-- Target frequency (MHz): 50
-- Input signals: A B C
-- Output signals: R

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library std;
use std.textio.all;
library work;

entity PositMAC is
    port (clk : in std_logic;
          A : in  std_logic_vector(31 downto 0);
          B : in  std_logic_vector(31 downto 0);
          C : in  std_logic_vector(511 downto 0);
          R : out  std_logic_vector(511 downto 0)   );
end entity;

architecture arch of PositMAC is
   component PositDecoder_32_2_F50_uid4 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(31 downto 0);
             Sign : out  std_logic;
             SF : out  std_logic_vector(7 downto 0);
             Frac : out  std_logic_vector(26 downto 0);
             NZN : out  std_logic   );
   end component;

   component PositDecoder_32_2_F50_uid8 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(31 downto 0);
             Sign : out  std_logic;
             SF : out  std_logic_vector(7 downto 0);
             Frac : out  std_logic_vector(26 downto 0);
             NZN : out  std_logic   );
   end component;

   component IntMultiplier_F50_uid12 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(28 downto 0);
             Y : in  std_logic_vector(28 downto 0);
             R : out  std_logic_vector(57 downto 0)   );
   end component;

   component IntAdder_9_F50_uid117 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : in  std_logic_vector(8 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(8 downto 0)   );
   end component;

   component IntAdder_9_F50_uid120 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(8 downto 0);
             Y : in  std_logic_vector(8 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(8 downto 0)   );
   end component;

   component IntAdder_8_F50_uid122 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(7 downto 0);
             Y : in  std_logic_vector(7 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(7 downto 0)   );
   end component;

   component RightShifter296_by_max_240_F50_uid124 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(295 downto 0);
             S : in  std_logic_vector(7 downto 0);
             padBit : in  std_logic;
             R : out  std_logic_vector(295 downto 0)   );
   end component;

   component IntAdder_512_F50_uid126 is
      port ( clk : in std_logic;
             X : in  std_logic_vector(511 downto 0);
             Y : in  std_logic_vector(511 downto 0);
             Cin : in  std_logic;
             R : out  std_logic_vector(511 downto 0)   );
   end component;

signal A_sgn :  std_logic;
signal A_sf :  std_logic_vector(7 downto 0);
signal A_f :  std_logic_vector(26 downto 0);
signal A_nzn :  std_logic;
signal B_sgn :  std_logic;
signal B_sf :  std_logic_vector(7 downto 0);
signal B_f :  std_logic_vector(26 downto 0);
signal B_nzn :  std_logic;
signal AB_nzn, AB_nzn_d1, AB_nzn_d2 :  std_logic;
signal AB_nar, AB_nar_d1, AB_nar_d2 :  std_logic;
signal AA_f :  std_logic_vector(28 downto 0);
signal BB_f :  std_logic_vector(28 downto 0);
signal AB_f :  std_logic_vector(57 downto 0);
signal AB_sgn, AB_sgn_d1, AB_sgn_d2 :  std_logic;
signal AB_ovfExtra :  std_logic;
signal AB_ovf :  std_logic;
signal AB_normF :  std_logic_vector(54 downto 0);
signal AA_sf :  std_logic_vector(8 downto 0);
signal BB_sf :  std_logic_vector(8 downto 0);
signal AB_sf_tmp :  std_logic_vector(8 downto 0);
signal AB_sf :  std_logic_vector(8 downto 0);
signal neg_sf, neg_sf_d1 :  std_logic;
signal AB_effectiveSF :  std_logic_vector(7 downto 0);
signal adderInput :  std_logic_vector(7 downto 0);
signal adderBias :  std_logic_vector(7 downto 0);
signal ob :  std_logic;
signal AB_sfBiased :  std_logic_vector(7 downto 0);
signal paddedFrac :  std_logic_vector(295 downto 0);
signal fixedPosit :  std_logic_vector(295 downto 0);
signal quirePosit, quirePosit_d1 :  std_logic_vector(480 downto 0);
signal AB_quire :  std_logic_vector(511 downto 0);
signal zb :  std_logic;
signal ABC_add :  std_logic_vector(511 downto 0);
signal zeros, zeros_d1, zeros_d2 :  std_logic_vector(510 downto 0);
signal C_nar :  std_logic;
signal ABC_nar, ABC_nar_d1, ABC_nar_d2 :  std_logic;
signal result :  std_logic_vector(511 downto 0);
begin
   process(clk)
      begin
         if clk'event and clk = '1' then
            AB_nzn_d1 <=  AB_nzn;
            AB_nzn_d2 <=  AB_nzn_d1;
            AB_nar_d1 <=  AB_nar;
            AB_nar_d2 <=  AB_nar_d1;
            AB_sgn_d1 <=  AB_sgn;
            AB_sgn_d2 <=  AB_sgn_d1;
            neg_sf_d1 <=  neg_sf;
            quirePosit_d1 <=  quirePosit;
            zeros_d1 <=  zeros;
            zeros_d2 <=  zeros_d1;
            ABC_nar_d1 <=  ABC_nar;
            ABC_nar_d2 <=  ABC_nar_d1;
         end if;
      end process;
--------------------------- Start of vhdl generation ---------------------------
---------------------------- Decode A & B operands ----------------------------
   A_decoder: PositDecoder_32_2_F50_uid4
      port map ( clk  => clk,
                 X => A,
                 Frac => A_f,
                 NZN => A_nzn,
                 SF => A_sf,
                 Sign => A_sgn);
   B_decoder: PositDecoder_32_2_F50_uid8
      port map ( clk  => clk,
                 X => B,
                 Frac => B_f,
                 NZN => B_nzn,
                 SF => B_sf,
                 Sign => B_sgn);
-------------------------------- Multiply A & B --------------------------------
   -- Sign and Special Cases Computation
   AB_nzn <= A_nzn AND B_nzn;
   AB_nar <= (A_sgn AND NOT(A_nzn)) OR (B_sgn AND NOT(B_nzn));
   -- Multiply the fractions
   AA_f <= A_sgn & NOT(A_sgn) & A_f;
   BB_f <= B_sgn & NOT(B_sgn) & B_f;
   FracMultiplier: IntMultiplier_F50_uid12
      port map ( clk  => clk,
                 X => AA_f,
                 Y => BB_f,
                 R => AB_f);
   AB_sgn <= AB_f(57);
   AB_ovfExtra <= NOT(AB_sgn) AND AB_f(56);
   AB_ovf <= AB_ovfExtra OR (AB_sgn XOR AB_f(55));
   AB_normF <= AB_f(54 downto 0) when AB_ovf = '1' else (AB_f(53 downto 0) & '0');
   -- Add the exponent values
   AA_sf <= A_sf(A_sf'high) & A_sf;
   BB_sf <= B_sf(B_sf'high) & B_sf;
   SFAdder: IntAdder_9_F50_uid117
      port map ( clk  => clk,
                 Cin => AB_ovfExtra,
                 X => AA_sf,
                 Y => BB_sf,
                 R => AB_sf_tmp);
   RoundingAdder: IntAdder_9_F50_uid120
      port map ( clk  => clk,
                 Cin => AB_ovf,
                 X => AB_sf_tmp,
                 Y => "000000000",
                 R => AB_sf);
-------------- Shift AB fraction into corresponding quire format --------------
   neg_sf <= AB_sf(8);
   AB_effectiveSF <= AB_sf(7 downto 0);
   adderInput <= NOT(AB_effectiveSF);
   adderBias <= "11110000" when neg_sf='0' else "11111111";
   ob <= '1';
   BiasedSFAdder: IntAdder_8_F50_uid122
      port map ( clk  => clk,
                 Cin => ob,
                 X => adderInput,
                 Y => adderBias,
                 R => AB_sfBiased);
   paddedFrac <= (NOT(AB_sgn) & AB_normF & "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000") when neg_sf='0' else ((295 downto 240 => AB_sgn) & NOT(AB_sgn) & AB_normF & "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000");
   Frac_RightShifter: RightShifter296_by_max_240_F50_uid124
      port map ( clk  => clk,
                 S => AB_sfBiased,
                 X => paddedFrac,
                 padBit => AB_sgn,
                 R => fixedPosit);
   quirePosit <= (fixedPosit & "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000") when neg_sf_d1='0' else ((480 downto 296 => AB_sgn_d1) & fixedPosit);
   AB_quire <= ((511 downto 481 => AB_sgn_d2) & quirePosit_d1) when AB_nzn_d2='1' else AB_nar_d2 & (510 downto 0 => '0');
---------------------------------- Add quires ----------------------------------
   zb <= '0';
   QuireAdder: IntAdder_512_F50_uid126
      port map ( clk  => clk,
                 Cin => zb,
                 X => AB_quire,
                 Y => C,
                 R => ABC_add);
   zeros <= (others => '0');
   C_nar <= C(511) when C(510 downto 0) = zeros else '0';
   ABC_nar <= AB_nar OR C_nar;
   result <= ABC_add when ABC_nar_d2='0' else ('1' & zeros_d2);
   R <= result;
---------------------------- End of vhdl generation ----------------------------
end architecture;

