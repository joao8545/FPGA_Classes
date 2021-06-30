entity minterm_example2 is
	port (A,B,C,D: in bit;
    	  F		 : out bit);
end entity;

architecture minterm_example2_arch of minterm_example2 is
	component AND4 is
		port (A,B,C,D: in bit;
   		  	  F: 	   out bit);
	end component;
    
    component OR12 is
		port (A,B,C,D,E,F,G,H,I,J,K,L: in bit;
    	  	  F1:					   out bit);
	end component;
    
    
    signal m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12:bit;
    signal An,Bn,Cn,Dn:bit;
    
    
    begin
    
    U1:AND4
    port map (A=>An,
    		  B=>Bn,
              C=>Cn,
              D=>Dn,
              F=>m1);
	U2:AND4
    port map (A=>An,
    		  B=>Bn,
              C=>C,
              D=>Dn,
              F=>m2);
    U3:AND4
    port map (A=>An,
    		  B=>Bn,
              C=>C,
              D=>D,
              F=>m3);
	U4:AND4
    port map (A=>An,
    		  B=>B,
              C=>Cn,
              D=>Dn,
              F=>m4);
 	U5:AND4
    port map (A=>An,
    		  B=>B,
              C=>Cn,
              D=>D,
              F=>m5);
	U6:AND4
    port map (A=>An,
    		  B=>B,
              C=>C,
              D=>Dn,
              F=>m6);
    U7:AND4
    port map (A=>An,
    		  B=>B,
              C=>C,
              D=>D,
              F=>m7);
	U8:AND4
    port map (A=>A,
    		  B=>Bn,
              C=>Cn,
              D=>Dn,
              F=>m8);
    U9:AND4
    port map (A=>A,
    		  B=>Bn,
              C=>C,
              D=>Dn,
              F=>m9);
	U10:AND4
    port map (A=>A,
    		  B=>B,
              C=>Cn,
              D=>Dn,
              F=>m10);
    U11:AND4
    port map (A=>A,
    		  B=>B,
              C=>C,
              D=>Dn,
              F=>m11);
	U12:AND4
    port map (A=>A,
    		  B=>B,
              C=>C,
              D=>D,
              F=>m12);
	U13:OR12
    port map (A=>m1,
    		  B=>m2,
              C=>m3,
              D=>m4,
              E=>m5,
              F=>m6,
              G=>m7,
              H=>m8,
              I=>m9,
              J=>m10,
              K=>m11,
              L=>m12,
              F1=>F);
	
    An<=not A;
    Bn<=not B;
    Cn<=not C;
    Dn<=not D;
    
end architecture;   
