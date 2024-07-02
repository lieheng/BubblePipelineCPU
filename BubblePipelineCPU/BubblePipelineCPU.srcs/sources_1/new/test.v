module fpga();
endmodule

module CPU(
    input CLK,
    output [31:0] PC_Cur
);

wire Stall, Flush;

// IF 
wire [31:0] PC_PPotential, PC_Potential, PC_Next, PC_Cur;
wire [31:0] Instr_IF;
wire [31:0] PC_4_IF;
wire [31:0] JumpAddr;
wire Jump;

// ID
wire [31:0] Instr_ID;
wire [31:0] PC_4_ID;
wire [1:0] RegDst;
wire AluSrc_ID;
wire [2:0] AluOp_ID;
wire ResultSel_ID;
wire Branch_ID;
wire MemWrite_ID;
wire [1:0] WriteToReg_ID;
wire RegWrite_ID;
wire JumpReg;
wire [31:0] Rs_ID, Rt_ID;
wire [4:0] WriteRegA_ID;
wire [31:0] SignImm_ID;

// EX
wire RegWrite_EX;
wire [1:0] WriteToReg_EX;
wire MemWrite_EX;
wire Branch_EX;
wire ResultSel_EX;
wire [2:0] AluOp_EX;
wire AluSrc_EX;
wire [31:0] Rs_EX, Rt_EX;
wire [4:0] WriteRegA_EX;
wire [31:0] SignImm_EX;
wire [31:0] PC_4_EX;
wire [31:0] SrcB;
wire [31:0] Result_EX;
wire Equal;
wire BranchTaken;
wire [31:0] BranchAddr;

// MEM
wire RegWrite_MEM;
wire [1:0] WriteToReg_MEM;
wire MemWrite_MEM;
wire [31:0] Result_MEM;
wire [31:0] WriteData;
wire [4:0] WriteRegA_MEM;
wire [31:0] PC_4_MEM;
wire [31:0] DMRD_MEM;

// WB
wire RegWrite_WB;
wire [1:0] WriteToReg_WB;
wire [31:0] Result_WB;
wire [31:0] DMRD_WB;
wire [4:0] WriteRegA_WB;
wire [31:0] PC_4_WB;
wire [31:0] WriteBackData;

initial begin
    $monitor($time, "\nStall = %h\nFlush = %h\nPC_PPotential = %h\nPC_Potential = %h\nPC_Next = %h\nPC_Cur = %h\nInstr_IF = %h\nPC_4_IF = %h\nJumpAddr = %h\nJump = %h\nInstr_ID = %h\nPC_4_ID = %h\nRegDst = %h\nAluSrc_ID = %h\nAluOp_ID = %h\nResultSel_ID = %h\nBranch_ID = %h\nMemWrite_ID = %h\nWriteToReg_ID = %h\nRegWrite_ID = %h\nJumpReg = %h\nRs_ID = %h\nRt_ID = %h\nWriteRegA_ID = %h\nSignImm_ID = %h\nRegWrite_EX = %h\nWriteToReg_EX = %h\nMemWrite_EX = %h\nBranch_EX = %h\nResultSel_EX = %h\nAluOp_EX = %h\nAluSrc_EX = %h\nRs_EX = %h\nRt_EX = %h\nWriteRegA_EX = %h\nSignImm_EX = %h\nPC_4_EX = %h\nSrcB = %h\nResult_EX = %h\nEqual = %h\nBranchTaken = %h\nBranchAddr = %h\nRegWrite_MEM = %h\nWriteToReg_MEM = %h\nMemWrite_MEM = %h\nResult_MEM = %h\nWriteData = %h\nWriteRegA_MEM = %h\nPC_4_MEM = %h\nDMRD_MEM = %h\nRegWrite_WB = %h\nWriteToReg_WB = %h\nResult_WB = %h\nDMRD_WB = %h\nWriteRegA_WB = %h\nPC_4_WB = %h\nWriteBackData = %h\n", Stall, Flush, PC_PPotential, PC_Potential, PC_Next, PC_Cur, Instr_IF, PC_4_IF, JumpAddr, Jump, Instr_ID, PC_4_ID, RegDst, AluSrc_ID, AluOp_ID, ResultSel_ID, Branch_ID, MemWrite_ID, WriteToReg_ID, RegWrite_ID, JumpReg, Rs_ID, Rt_ID, WriteRegA_ID, SignImm_ID, RegWrite_EX, WriteToReg_EX, MemWrite_EX, Branch_EX, ResultSel_EX, AluOp_EX, AluSrc_EX, Rs_EX, Rt_EX, WriteRegA_EX, SignImm_EX, PC_4_EX, SrcB, Result_EX, Equal, BranchTaken, BranchAddr, RegWrite_MEM, WriteToReg_MEM, MemWrite_MEM, Result_MEM, WriteData, WriteRegA_MEM, PC_4_MEM, DMRD_MEM, RegWrite_WB, WriteToReg_WB, Result_WB, DMRD_WB, WriteRegA_WB, PC_4_WB, WriteBackData);
end

Hazard CPU_Hazard(
    .Instr(Instr_ID),
    .RegWrite_EX(RegWrite_EX),
    .WriteRegA_EX(WriteRegA_EX),
    .BranchTaken(BranchTaken),
    .RegWrite_MEM(RegWrite_MEM),
    .WriteRegA_MEM(WriteRegA_MEM),
    .Stall(Stall),
    .Flush(Flush)
);

// IF
Mux2 CPU_Mux2_1(
    .in0(PC_4_IF),
    .in1(JumpAddr),
    .sel(Jump),
    .out(PC_PPotential)
);

Mux2 CPU_Mux2_2(
    .in0(PC_PPotential),
    .in1(Rs_ID),
    .sel(JumpReg),
    .out(PC_Potential)
);

Mux2 CPU_Mux2_3(
    .in0(PC_Potential),
    .in1(BranchAddr),
    .sel(BranchTaken),
    .out(PC_Next)
);

PC CPU_PC(
    .CLK(CLK),
    .EN(!Stall),
    .in(PC_Next),
    .out(PC_Cur)
);

InstructionMemory CPU_InstructionMemory(
    .A(PC_Cur),
    .RD(Instr_IF)
);

PCAdd4 CPU_PCAdd4(
    .in(PC_Cur),
    .out(PC_4_IF)
);

JumpController CPU_JumpController(
    .Op(Instr_IF[31:26]),
    .Jump(Jump)
);

assign JumpAddr = {PC_4_IF[31:28], Instr_IF[25:0], 2'b00};

IF2ID CPU_IF2ID(
    .CLK(CLK),
    .EN(!Stall),
    .CLR(BranchTaken | JumpReg),
    .Instr_in(Instr_IF),
    .PC_4_in(PC_4_IF),
    .Instr_out(Instr_ID),
    .PC_4_out(PC_4_ID)
);

//ID
Controller CPU_Controller(
    .Op(Instr_ID[31:26]),
    .Funct(Instr_ID[5:0]),
    .RegDst(RegDst),
    .AluSrc(AluSrc_ID),
    .AluOp(AluOp_ID),
    .ResultSel(ResultSel_ID),
    .Branch(Branch_ID),
    .MemWrite(MemWrite_ID),
    .WriteToReg(WriteToReg_ID),
    .RegWrite(RegWrite_ID),
    .JumpReg(JumpReg)
);

RegFile CPU_RegFile(
    .CLK(CLK),
    .WE(RegWrite_WB),
    .R1A(Instr_ID[25:21]),
    .R2A(Instr_ID[20:16]),
    .WA(WriteRegA_WB),
    .WD(WriteBackData),
    .R1(Rs_ID),
    .R2(Rt_ID)
);

defparam CPU_Mux4_1.DEPTH = 5;
Mux4 CPU_Mux4_1(
    .in00(Instr_ID[20:16]),
    .in01(Instr_ID[15:11]),
    .in10(31),
    .sel(RegDst),
    .out(WriteRegA_ID)
);

SignExtend CPU_SignExtend(
    .in(Instr_ID[15:0]),
    .out(SignImm_ID)
);

ID2EX CPU_ID2EX(
    .CLK(CLK),
    .CLR(Flush),
    .RegWrite_in(RegWrite_ID),
    .WriteToReg_in(WriteToReg_ID),
    .MemWrite_in(MemWrite_ID),
    .Branch_in(Branch_ID),
    .ResultSel_in(ResultSel_ID),
    .AluOp_in(AluOp_ID),
    .AluSrc_in(AluSrc_ID),
    .Rs_in(Rs_ID),
    .Rt_in(Rt_ID),
    .WriteRegA_in(WriteRegA_ID),
    .SignImm_in(SignImm_ID),
    .PC_4_in(PC_4_ID),
    .RegWrite_out(RegWrite_EX),
    .WriteToReg_out(WriteToReg_EX),
    .MemWrite_out(MemWrite_EX),
    .Branch_out(Branch_EX),
    .ResultSel_out(ResultSel_EX),
    .AluOp_out(AluOp_EX),
    .AluSrc_out(AluSrc_EX),
    .Rs_out(Rs_EX),
    .Rt_out(Rt_EX),
    .WriteRegA_out(WriteRegA_EX),
    .SignImm_out(SignImm_EX),
    .PC_4_out(PC_4_EX)
);

// EX
Mux2 CPU_Mux2_4(
    .in0(Rt_EX),
    .in1(SignImm_EX),
    .sel(AluSrc_EX),
    .out(SrcB)
);

ALU CPU_ALU(
    .SrcA(Rs_EX),
    .SrcB(SrcB),
    .AluOp(AluOp_EX),
    .Result(Result_EX),
    .Equal(Equal)
);

PCBranch CPU_PCBranch(
    .PC_4(PC_4_EX),
    .offset({SignImm_EX[29:0], 2'b00}),
    .BranchAddr(BranchAddr)
);

defparam CPU_Mux2_5.DEPTH = 1;
Mux2 CPU_Mux2_5(
    .in1(!Equal),
    .in0(Equal),
    .sel(ResultSel_EX)
);

assign BranchTaken = Branch_EX & CPU_Mux2_5.out;

EX2MEM CPU_EX2MEM(
    .CLK(CLK),
    .RegWrite_in(RegWrite_EX),
    .WriteToReg_in(WriteToReg_EX),
    .MemWrite_in(MemWrite_EX),
    .Result_in(Result_EX),
    .WriteData_in(Rt_EX),
    .WriteRegA_in(WriteRegA_EX),
    .PC_4_in(PC_4_EX),
    .RegWrite_out(RegWrite_MEM),
    .WriteToReg_out(WriteToReg_MEM),
    .MemWrite_out(MemWrite_MEM),
    .Result_out(Result_MEM),
    .WriteData_out(WriteData),
    .WriteRegA_out(WriteRegA_MEM),
    .PC_4_out(PC_4_MEM)
);

// MEM
DataMemory CPU_DataMemory(
    .CLK(CLK),
    .WE(MemWrite_MEM),
    .A(Result_MEM),
    .WD(WriteData),
    .RD(DMRD_MEM)
);

MEM2WB CPU_MEM2WB(
    .CLK(CLK),
    .RegWrite_in(RegWrite_MEM),
    .WriteToReg_in(WriteToReg_MEM),
    .Result_in(Result_MEM),
    .DMRD_in(DMRD_MEM),
    .WriteRegA_in(WriteRegA_MEM),
    .PC_4_in(PC_4_MEM),
    .RegWrite_out(RegWrite_WB),
    .WriteToReg_out(WriteToReg_WB),
    .Result_out(Result_WB),
    .DMRD_out(DMRD_WB),
    .WriteRegA_out(WriteRegA_WB),
    .PC_4_out(PC_4_WB)
);

// WB
Mux4 CPU_Mux4_2(
    .in00(Result_WB),
    .in01(DMRD_WB),
    .in10(PC_4_WB),
    .sel(WriteToReg_WB),
    .out(WriteBackData)
);

endmodule

module Hazard (
    input [31:0] Instr,
    input RegWrite_EX,
    input [4:0] WriteRegA_EX,
    input BranchTaken,
    input RegWrite_MEM,
    input [4:0] WriteRegA_MEM,
    output Stall,
    output Flush
);

wire [5:0] Op = Instr[31:26];
wire [5:0] Funct = Instr[5:0];

wire [4:0] rs = Instr[25:21];
wire [4:0] rt = Instr[20:16];

wire RsUsed = (Op == 6'b000000) | (Op == 6'b001000)/* addi */ | (Op == 6'b001101)/* ori */ | (Op == 6'b101011)/* sw */ | (Op == 6'b100011)/* lw */;
wire RtUsed = (Op == 6'b000000) | (Op == 6'b101011)/* sw */;

wire DataHazard = (RsUsed & rs != 0 & RegWrite_EX & rs == WriteRegA_EX)
                | (RtUsed & rt != 0 & RegWrite_EX & rt == WriteRegA_EX)
                | (RsUsed & rs != 0 & RegWrite_MEM & rs == WriteRegA_MEM)
                | (RtUsed & rt != 0 & RegWrite_MEM & rt == WriteRegA_MEM);

assign Stall = DataHazard;
assign Flush = BranchTaken | DataHazard;

endmodule

module JumpController (
    input [5:0] Op,
    output Jump
);

assign Jump = Op == 6'b000010 | Op == 6'b000011;

endmodule

module Controller (
    input [5:0] Op,
    input [5:0] Funct,
    output reg [1:0] RegDst,
    output reg AluSrc,
    output reg [2:0] AluOp,
    output reg ResultSel,
    output reg Branch,
    output reg MemWrite,
    output reg [1:0] WriteToReg,
    output reg RegWrite,
    output reg JumpReg
);

initial begin
    RegDst = 2'b00;
    AluSrc = 0;
    AluOp = 3'b000;
    ResultSel = 0;
    Branch = 0;
    MemWrite = 0;
    WriteToReg = 2'b00;
    RegWrite = 0;
    JumpReg = 0;
end

always @(Op or Funct) begin
    if (Op == 6'b000000 & Funct == 6'b100000) begin // add
        RegDst = 2'b01;
        AluSrc = 0;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 1;
        JumpReg = 0;
    end else if (Op == 6'b001000) begin // addi
        RegDst = 2'b00;
        AluSrc = 1;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 1;
        JumpReg = 0;
    end else if (Op == 6'b001101) begin // ori
        RegDst = 2'b00;
        AluSrc = 1;
        AluOp = 3'b011;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 1;
        JumpReg = 0;
    end else if (Op == 6'b101011) begin // sw
        RegDst = 2'b00;
        AluSrc = 1;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 1;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 0;
    end else if (Op == 6'b100011) begin // lw
        RegDst = 2'b00;
        AluSrc = 1;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b01;
        RegWrite = 1;
        JumpReg = 0;
    end else if (Op == 6'b000000 & Funct == 6'b001100) begin // syscall
        RegDst = 2'b00;
        AluSrc = 0;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 0;
    end else if (Op == 6'b000011) begin // jal
        RegDst = 2'b10;
        AluSrc = 0;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b10;
        RegWrite = 1;
        JumpReg = 0;
    end else if (Op == 6'b000000 & Funct == 6'b001000) begin // jr
        RegDst = 2'b00;
        AluSrc = 0;
        AluOp = 3'b000;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 1;
    end else if (Op == 6'b000100) begin // beq
        RegDst = 2'b00;
        AluSrc = 0;
        AluOp = 3'b001;
        ResultSel = 0;
        Branch = 1;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 0;
    end else if (Op == 6'b000101) begin // bne
        RegDst = 2'b00;
        AluSrc = 0;
        AluOp = 3'b001;
        ResultSel = 1;
        Branch = 1;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 0;
    end else begin
        RegDst = 2'b00;
        AluSrc = 0;
        AluOp = 0;
        ResultSel = 0;
        Branch = 0;
        MemWrite = 0;
        WriteToReg = 2'b00;
        RegWrite = 0;
        JumpReg = 0;
    end
    $display($time, "\nOp = %b, Funct = %b", Op, Funct);
    $display($time, "\nRegDst = %h, AluSrc = %h, AluOp = %h, ResultSel = %h,  Branch = %h, MemWrite = %h, WriteToReg = %h, RegWrite = %h, JumpReg = %h", RegDst, AluSrc, AluOp, ResultSel, Branch, MemWrite, WriteToReg, RegWrite, JumpReg);
end

endmodule

module IF2ID (
    input CLK,
    input EN,
    input CLR,
    input [31:0] Instr_in,
    input [31:0] PC_4_in,
    output reg [31:0] Instr_out,
    output reg [31:0] PC_4_out
);

initial begin
    Instr_out = 0;
    PC_4_out = 0;
end

always @(posedge CLK) begin
    if (CLR) begin
        Instr_out = 0;
        PC_4_out = 0;
    end else begin
        if (EN) begin
            Instr_out = Instr_in;
            PC_4_out = PC_4_in;
        end
    end
end
    
endmodule

module ID2EX (
    input CLK,
    input CLR,
    input RegWrite_in,
    input [1:0] WriteToReg_in,
    input MemWrite_in,
    input Branch_in,
    input ResultSel_in,
    input [2:0] AluOp_in,
    input AluSrc_in,
    input [31:0] Rs_in,
    input [31:0] Rt_in,
    input [4:0] WriteRegA_in,
    input [31:0] SignImm_in,
    input [31:0] PC_4_in,
    output reg RegWrite_out,
    output reg [1:0] WriteToReg_out,
    output reg MemWrite_out,
    output reg Branch_out,
    output reg ResultSel_out,
    output reg [2:0] AluOp_out,
    output reg AluSrc_out,
    output reg [31:0] Rs_out,
    output reg [31:0] Rt_out,
    output reg [4:0] WriteRegA_out,
    output reg [31:0] SignImm_out,
    output reg [31:0] PC_4_out
);

initial begin
    RegWrite_out = 0;
    WriteToReg_out = 2'b00;
    MemWrite_out = 0;
    Branch_out = 0;
    ResultSel_out = 0;
    AluOp_out = 0;
    AluSrc_out = 0;
    Rs_out = 0;
    Rt_out = 0;
    WriteRegA_out = 0;
    SignImm_out = 0;
    PC_4_out = 0;
end

always @(posedge CLK) begin
    if (CLR) begin
        RegWrite_out = 0;
        WriteToReg_out = 2'b00;
        MemWrite_out = 0;
        Branch_out = 0;
        ResultSel_out = 0;
        AluOp_out = 0;
        AluSrc_out = 0;
        Rs_out = 0;
        Rt_out = 0;
        WriteRegA_out = 0;
        SignImm_out = 0;
        PC_4_out = 0;
    end else begin
        RegWrite_out = RegWrite_in;
        WriteToReg_out = WriteToReg_in;
        MemWrite_out = MemWrite_in;
        Branch_out = Branch_in;
        ResultSel_out = ResultSel_in;
        AluOp_out = AluOp_in;
        AluSrc_out = AluSrc_in;
        Rs_out = Rs_in;
        Rt_out = Rt_in;
        WriteRegA_out = WriteRegA_in;
        SignImm_out = SignImm_in;
        PC_4_out = PC_4_in;
    end
end
    
endmodule

module EX2MEM (
    input CLK,
    input RegWrite_in,
    input [1:0] WriteToReg_in,
    input MemWrite_in,
    input [31:0] Result_in,
    input [31:0] WriteData_in,
    input [4:0] WriteRegA_in,
    input [31:0] PC_4_in,
    output reg RegWrite_out,
    output reg [1:0] WriteToReg_out,
    output reg MemWrite_out,
    output reg [31:0] Result_out,
    output reg [31:0] WriteData_out,
    output reg [4:0] WriteRegA_out,
    output reg [31:0] PC_4_out
);

initial begin
    RegWrite_out = 0;
    WriteToReg_out = 2'b00;
    MemWrite_out = 0;
    Result_out = 0;
    WriteData_out = 0;
    WriteRegA_out = 0;
    PC_4_out = 0;
end

always @(posedge CLK) begin
    RegWrite_out = RegWrite_in;
    WriteToReg_out = WriteToReg_in;
    MemWrite_out = MemWrite_in;
    Result_out = Result_in;
    WriteData_out = WriteData_in;
    WriteRegA_out = WriteRegA_in;
    PC_4_out = PC_4_in;
end
    
endmodule

module MEM2WB (
    input CLK,
    input RegWrite_in,
    input [1:0] WriteToReg_in,
    input [31:0] Result_in,
    input [31:0] DMRD_in,
    input [4:0] WriteRegA_in,
    input [31:0] PC_4_in,
    output reg RegWrite_out,
    output reg [1:0] WriteToReg_out,
    output reg [31:0] Result_out,
    output reg [31:0] DMRD_out,
    output reg [4:0] WriteRegA_out,
    output reg [31:0] PC_4_out
);

initial begin
    RegWrite_out = 0;
    WriteToReg_out = 2'b00;
    Result_out = 0;
    DMRD_out = 0;
    WriteRegA_out = 0;
    PC_4_out = 0;
end

always @(posedge CLK) begin
    RegWrite_out = RegWrite_in;
    WriteToReg_out = WriteToReg_in;
    Result_out = Result_in;
    DMRD_out = DMRD_in;
    WriteRegA_out = WriteRegA_in;
    PC_4_out = PC_4_in;
end
    
endmodule

module PC (
    input CLK,
    input EN,
    input [31:0] in,
    output reg [31:0] out
);

initial begin
    out = 0;
end

always @(posedge CLK) begin
    if (EN) begin
        out = in;
    end
end

endmodule

module Mux2 #(
    DEPTH = 32
) (
    input [DEPTH - 1:0] in0,
    input [DEPTH - 1:0] in1,
    input sel,
    output [DEPTH - 1:0] out
);

assign out = sel ? in1 : in0;

endmodule

module Mux4 #(
    DEPTH = 32
) (
    input [DEPTH - 1:0] in00, in01, in10, in11, 
    input [1:0] sel,
    output [DEPTH - 1:0] out
);

assign out = (sel == 2'b00) ? in00 : 
             (sel == 2'b01) ? in01 : 
             (sel == 2'b10) ? in10 : 
             in11;

endmodule

module InstructionMemory (
    input [31:0] A,
    output [31:0] RD
);

reg [31:0] regs [299:0];

integer i;

initial begin
    for (i = 0; i < 300; i = i + 1) begin
        regs[i] = 0;
    end
    $readmemh("..\\..\\constrs_1\\new\\BranchHazard.txt", regs);
end

assign RD = regs[A[31:2]];

endmodule

module PCAdd4 (
    input [31:0] in,
    output [31:0] out
);

assign out = in + 4;

endmodule

module SignExtend (
    input [15:0] in,
    output [31:0] out
);

assign out = {{16{in[15]}}, in};

endmodule

module PCBranch (
    input [31:0] PC_4,
    input [31:0] offset,
    output [31:0] BranchAddr
);

assign BranchAddr = PC_4 + offset;

endmodule

module RegFile (
    input CLK,
    input WE,
    input [4:0] R1A,
    input [4:0] R2A,
    input [4:0] WA,
    input [31:0] WD,
    output [31:0] R1,
    output [31:0] R2
);

reg [31:0] regs [31:0];

integer i;

initial begin
    for (i = 0; i < 32; i = i + 1) begin
        regs[i] = 0;
    end
end

always @(negedge CLK) begin
    if (WE) begin
        regs[WA] = WD;
        $display($time, "\nreg[%d] = %h", WA, WD);
    end
end

assign R1 = regs[R1A];
assign R2 = regs[R2A];

endmodule

module ALU (
    input [31:0] SrcA, SrcB,
    input [2:0] AluOp,
    output reg [31:0] Result,
    output reg Equal
);

initial begin
    Result = 0;
    Equal = 0;
end

always @(AluOp or SrcA or SrcB) begin
    case (AluOp)
        3'b000 : begin
            Result = SrcA + SrcB;
        end 
        3'b001 : begin
            Result = SrcA - SrcB;
            if (Result == 0) begin
                Equal = 1;
            end else begin
                Equal = 0;
            end
        end 
        3'b010 : begin
            Result = SrcA & SrcB;
        end
        3'b011 : begin
            Result = SrcA | SrcB;
        end
        3'b100 : begin
            Result = SrcA < SrcB;
        end
    endcase
end

endmodule

module DataMemory (
    input CLK,
    input WE,
    input [31:0] A,
    input [31:0] WD,
    output [31:0] RD
);

reg [31:0] regs [127:0];

integer i;

initial begin
    for (i = 0; i < 128; i = i + 1) begin
        regs[i] = 0;
    end
end

always @(negedge CLK) begin
    if (WE) begin
        regs[A[31:2]] = WD;
        $display($time, "\nmemory[%d] = %h", A[31:2], WD);
    end
end

assign RD = regs[A[31:2]];

endmodule