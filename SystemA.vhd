entity systemA is
	port (A,B : in bit;
    	  F   : out bit);
end entity;

architecture systemA_arch of systemA is
	signal AB : bit_vector(1 downto 0);

begin
	AB<=A&B;
    with (AB) select
    	F<= '1' when "01"|"11",
        	'0' when others;


end architecture;
