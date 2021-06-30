library IEEE;
use IEEE.std_logic_1164.all;

entity DFF is
	port (Clk : in std_logic;
		  nReset : in std_logic;
		  nPreset : in std_logic;
		  EN : in std_logic;
		  D : in std_logic;
		  Q, Qn : out std_logic);
end entity;

architecture DFF_arch of DFF is
begin

	D_FLIP_FLOP : process (nReset, nPreset, EN, Clk, D)
	begin
		if (nReset = '0') then
			Q <= '0';
			Qn <= '1';
		elsif (nPreset = '0') then
			Q <= '1';
			Qn <= '0';
		elsif (Clk'event and Clk = '1') then
			if (EN = '1') then
				Q <= D;
				Qn <= not D;
			end if;
		end if;
	end process;
end architecture;
