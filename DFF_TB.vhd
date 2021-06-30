library IEEE;
use IEEE.std_logic_1164.all;

entity DFF_TB is
end entity;

architecture DFF_TB_arch of DFF_TB is
	component DFF is
		port (Clk : in std_logic;
		  nReset : in std_logic;
		  nPreset : in std_logic;
		  EN : in std_logic;
		  D : in std_logic;
		  Q, Qn : out std_logic);
	end component;
    
    signal Clk_TB,nReset_TB,nPreset_TB,EN_TB,D_TB,Q_TB,Qn_TB:std_logic;
    

begin
	UUT:DFF
    	port map(Clk=>Clk_TB,
        		 nReset=>nReset_TB,
                 nPreset=>nPreset_TB,
                 EN=>EN_TB,
                 D=>D_TB,
                 Q=>Q_TB,
                 Qn=>Qn_TB);
            
	STIMULUS : process
  	begin
		nReset_TB <= '0'; 
        nPreset_TB <= '0';
        EN_TB <= '0';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nPreset_TB <= '1';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nReset_TB <= '1'; 
        nPreset_TB <= '0';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nPreset_TB <= '1';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
    --
        nReset_TB <= '0'; 
        nPreset_TB <= '0';
        EN_TB <= '1';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nPreset_TB <= '1';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nReset_TB <= '1'; 
        nPreset_TB <= '0';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        nPreset_TB <= '1';
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        Clk_TB <= '0'; D_TB <= '0'; wait for 100 ns;
        Clk_TB <= '1'; D_TB <= '1'; wait for 100 ns;
        wait;
	end process;
end architecture;
