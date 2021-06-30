entity FF is
	port(R: in bit;
    	 S: in bit;
         QN: inout bit;
    	 Q: inout bit);
end entity;

architecture FF_arch of FF is
begin
	Q <=  QN nor S;
    QN <= Q nor R;
end architecture;
