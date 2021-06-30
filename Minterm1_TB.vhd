entity Minterm1_TB is
end entity;

architecture MInterm1_TB_arch of minterm1_TB is
	component minterm1 is
    	port(A,B,c:in bit;
    	 F:out bit);
	end component;
  	signal A_TB,B_TB,c_TB,F_TB: bit;
    begin
    UUT: minterm1
    	port map(A=>A_TB,
        		 B=>B_TB,
                 C=>C_TB,
                 F=>F_TB);
    STIMULUS: process is
    	begin
        A_TB<='0';
    	B_TB<='0';
        C_TB<='0';
    	wait for 100 ns;
    	A_TB<='0';
    	B_TB<='1';
        C_TB<='0';
    	wait for 100 ns;
    	A_TB<='1';
    	B_TB<='0';
        C_TB<='0';
    	wait for 100 ns;
    	A_TB<='1';
    	B_TB<='1';
        C_TB<='0';
    	wait for 100 ns;
        A_TB<='0';
    	B_TB<='0';
        C_TB<='1';
    	wait for 100 ns;
    	A_TB<='0';
    	B_TB<='1';
        C_TB<='1';
    	wait for 100 ns;
    	A_TB<='1';
    	B_TB<='0';
        C_TB<='1';
    	wait for 100 ns;
    	A_TB<='1';
    	B_TB<='1';
        C_TB<='1';
    	wait for 100 ns;
    	wait;
    end process;
end architecture;
    
    
