entity minterm_example2_TB is
end entity;

architecture minterm_example2_TB_arch of minterm_example2_TB is
	component minterm_example2 is
    	port (A,B,C,D: in bit;
    	  	  F		 : out bit);
	end component;
    
    signal A_TB,B_TB,C_TB,D_TB,F_TB: bit;
    
    
    
    begin
    
    UUT:minterm_example2
    	port map (A=>A_TB,
        		  B=>B_TB,
                  C=>C_TB,
                  D=>D_TB,
                  F=>F_TB);
    
    STIMULUS: process is
    	begin
    	A_TB<='0'; B_TB<='0'; C_TB<='0'; D_TB<='0';
        wait for 100 ns;
        A_TB<='0'; B_TB<='0'; C_TB<='0'; D_TB<='1';
        wait for 100 ns;
        A_TB<='0'; B_TB<='0'; C_TB<='1'; D_TB<='0';
        wait for 100 ns;
        A_TB<='0'; B_TB<='0'; C_TB<='1'; D_TB<='1';
        wait for 100 ns;
        A_TB<='0'; B_TB<='1'; C_TB<='0'; D_TB<='0';
        wait for 100 ns;
        A_TB<='0'; B_TB<='1'; C_TB<='0'; D_TB<='1';
        wait for 100 ns;
        A_TB<='0'; B_TB<='1'; C_TB<='1'; D_TB<='0';
        wait for 100 ns;
        A_TB<='0'; B_TB<='1'; C_TB<='1'; D_TB<='1';
        wait for 100 ns;
        A_TB<='1'; B_TB<='0'; C_TB<='0'; D_TB<='0';
        wait for 100 ns;
        A_TB<='1'; B_TB<='0'; C_TB<='0'; D_TB<='1';
        wait for 100 ns;
        A_TB<='1'; B_TB<='0'; C_TB<='1'; D_TB<='0';
        wait for 100 ns;
        A_TB<='1'; B_TB<='0'; C_TB<='1'; D_TB<='1';
        wait for 100 ns;
        A_TB<='1'; B_TB<='1'; C_TB<='0'; D_TB<='0';
        wait for 100 ns;
        A_TB<='1'; B_TB<='1'; C_TB<='0'; D_TB<='1';
        wait for 100 ns;
        A_TB<='1'; B_TB<='1'; C_TB<='1'; D_TB<='0';
        wait for 100 ns;
        A_TB<='1'; B_TB<='1'; C_TB<='1'; D_TB<='1';
        wait for 100 ns;
        wait;
        end process;
    
    
    
    
    
    
    
    
end architecture;    
