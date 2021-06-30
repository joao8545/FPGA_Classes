entity AND4 is
	port (A,B,C,D: in bit;
   		  F: 	   out bit);
end entity;

architecture AND4_arch of AND4 is
	begin
    F<= A and B and C and D;
end architecture;
