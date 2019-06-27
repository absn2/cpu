module cpu(clk,Opcode,in,outx,outy,out,outula,status,tula,Tx,Ty,Tz);
  
    input wire clk;
    input wire signed [3:0] in;
    output reg signed [3:0] outx,outy,out,outula;
    output reg[2:0] tula,Tx,Ty,Tz,Opcode;
    output reg status;

	memory memoria(Opcode, in);
	RegistratorX regx(Tx, in, clk, outx);
    RegistratorY regy(Ty, outula, clk, outy);
    ula ulaula(outx,outy,tula,outula,status);
    RegistratorZ regz(Tz, outy, clk, out);
endmodule