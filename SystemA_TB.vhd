entity systemA_TB is
end entity;

architecture systemA_TB_arch of systemA_TB is
	component systemA is
		port (A,B : in bit;
    	  	F   : out bit);
	end component;
    
    signal A_TB,B_TB,F_TB:bit;
    

begin
	UUT:systemA
    	port map( A=>A_TB,
        		  B=>B_TB,
                  F=>F_TB);
            
	STIMULUS: process
    
    begin
    	A_TB<='0'; B_TB<='0'; wait for 100 ns;
        assert (F_TB = '1') report "passed at 00" severity NOTE;
        assert (F_TB = '0') report "failed at 00" severity FAILURE;
        A_TB<='0'; B_TB<='1'; wait for 100 ns;
        assert (F_TB = '0') report "passed at 01" severity NOTE;
        assert (F_TB = '1') report "failed at 01" severity FAILURE;
        A_TB<='1'; B_TB<='0'; wait for 100 ns;
        assert (F_TB = '1') report "passed at 10" severity NOTE;
        assert (F_TB = '0') report "failed at 10" severity FAILURE;
        A_TB<='1'; B_TB<='1'; wait for 100 ns;
        assert (F_TB = '0') report "passed at 11" severity NOTE;
        assert (F_TB = '1') report "failed at 11" severity FAILURE;
        wait;
    end process;


end architecture;
