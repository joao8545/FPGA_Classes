entity MINTERM1 is
	port(A,B,C:in bit;
    	 F:out bit);
end entity;

architecture MINTERM1_arch of MINTERM1 is
	component AND3 is
    	port(A,B,C:in bit;
    	 	 F:out bit);
	end component;   
    component OR4 is
    	port(A,B,C,D:in bit;
    		 F:out bit);
 	end component;
    signal m1,m2,m3,m4:bit;
    signal An,Bn,Cn: bit;
	
    begin
    U1: AND3
    port map(A=>An,
    		 B=>Bn,
             C=>C,
             F=>m1);
             
	U2: AND3
    port map(A=>An,
    		 B=>B,
             C=>C,
             F=>m2);  
	U3: AND3
    port map(A=>A,
    		 B=>Bn,
             C=>Cn,
             F=>m3);
	U4: AND3
    port map(A=>A,
    		 B=>Bn,
             C=>C,
             F=>m4);
             
	U5:OR4
    port map(A=>m1,
    		 B=>m2,
    		 C=>m3,
    		 D=>m4,
             F=>F);
             
	An<=not A;
    Bn<=not B;
    Cn<=not C;
end architecture;
