entity FF_TB is
end entity;

architecture FF_TB_arch of FF_TB is
component FF is
	port(R: in bit;
    	 S: in bit;
         QN: inout bit;
    	 Q: inout bit);
end component;
signal A_TB,B_TB, Q_TB, QN_TB : bit;
begin
	UUT:FF
    	port map(R=>A_TB,
        		 S=>B_TB,
                 Q=>Q_TB,
        		 QN=>QN_TB);
    STIMULUS : process is 
    begin
    A_TB<='0';
    B_TB<='0';
    wait for 100 ns;
    A_TB<='0';
    B_TB<='1';
    wait for 100 ns;
    A_TB<='1';
    B_TB<='0';
    wait for 100 ns;
    A_TB<='1';
    B_TB<='1';
    wait for 100 ns;
    wait;
    end process;
end architecture;
