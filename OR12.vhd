entity OR12 is
	port (A,B,C,D,E,F,G,H,I,J,K,L: in bit;
    	  F1:					   out bit);
end entity;

architecture OR12_arch of OR12 is
	begin
    F1<=A or B or C or D or E or F or G or H or I or J or K or L;
end architecture;    
