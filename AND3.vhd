entity AND3 is
	port(A: in bit;
    	 B: in bit;
         C: in bit;
    	 F: out bit);
end entity;

architecture AND3_arch of AND3 is
begin
	F<=  A and B and C;
end architecture;
