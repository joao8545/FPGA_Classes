entity OR4 is
	port(A: in bit;
    	 B: in bit;
         C: in bit;
         D: in bit;
    	 F: out bit);
end entity;

architecture OR4_arch of OR4 is
begin
	F<=  A or B or C or D;
end architecture;
