library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MainModule is
Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
           PCOut : out  STD_LOGIC_VECTOR (31 downto 0); extra : out Std_logic_vector(31 downto 0);
           DataMemOut : out  STD_LOGIC_VECTOR (31 downto 0));
end MainModule;

architecture Behavioral of MainModule is

	component PC is
		Port ( 
				  clk : in  STD_LOGIC;
				  rst : in  STD_LOGIC;
				  di : in  STD_LOGIC_VECTOR (31 downto 0);
				  do : out  STD_LOGIC_VECTOR (31 downto 0)
		);
	end component;
	
	component INSTRMEMORY is
	port(
		 LoadIt: in Std_logic ;
		 ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
		 CLK: in STD_LOGIC;
		 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0)
    );
	end component;
	
	component adder is
	 port(
        signal data1, data2 : in std_logic_vector(31 downto 0);
        signal Result : out std_logic_vector(31 downto 0)
    );
	end component;
	
	component Shift is
		port ( 
			 signal di : in std_logic_vector (31 downto 0);
		    signal do : out std_logic_vector (31 downto 0)
		);
	end component;
	
	component Sign_Extend is
	PORT (
		Instruction: in STD_LOGIC_VECTOR(15 DOWNTO 0);
		Iextended: out STD_LOGIC_VECTOR(31 DOWNTO 0));
	end component;
	
	component controlunit is
	PORT (
			signal OPcode: in std_logic_vector(5 downto 0);
        --signal RegDst,Branch,MemRead,MemtoReg,MemWrite, ALUSrc,RegWrite,Jump: out std_logic;
			signal REGDST, ALUSRC, MEMTOREG, REGWRITE, MEMREAD : out std_logic;
			signal MEMWRITE, BRANCH, JUMP : out std_logic;
			signal ALUop : out std_logic_vector(1 downto 0));
	end component;
	
	component Alu_Control is
	Port ( ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
			 funct : in  STD_LOGIC_VECTOR (5 downto 0);
			 ALUcontrol : out  STD_LOGIC_VECTOR (3 downto 0)
	);
	end component;
	
	component DATAMEMORY is
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC;
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0)
			);

	end component;
	
	component alu_32_bit is
		port(
			data1 : in std_logic_vector(31 downto 0);
			data2 : in std_logic_vector(31 downto 0);
			aluop : in std_logic_vector(3 downto 0);
			cin : in std_logic;
			dataout: out std_logic_vector(31 downto 0);
			cflag: out std_logic;
			zflag: out std_logic;
			oflag: out std_logic
		);
	end component;
	
	component RegisterFile is
    Port ( write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC;
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component mux2x1 is
	GENERIC(N:NATURAL);
   Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (n-1 downto 0));
	end component;
	
	signal next_instruction: STD_LOGIC_VECTOR (31 downto 0);
	signal jump_address: std_logic_vector (31 downto 0);
	signal branch_mux_out: std_logic_vector (31 downto 0);
	signal sll_jump_out: std_logic_vector (31 downto 0);	
	signal current_instruction: std_logic_vector (31 downto 0);
	signal current_plus_four:  std_logic_vector (31 downto 0);
	signal jump: std_logic;
	signal RegDstS,BranchS,MemReadS,MemtoRegS,MemWriteS, ALUSrcS,RegWriteS: std_logic;
	signal ALUopS : std_logic_vector(1 downto 0);
	signal zero: std_logic;
	signal do_we_branch: std_logic;
	signal current_address: std_logic_vector (31 downto 0);
	signal write_reg: std_logic_vector (4 downto 0);
	signal write_data: std_logic_vector (31 downto 0);
	signal read_data_1, read_data_2: std_logic_vector (31 downto 0);
	signal extended: std_logic_vector (31 downto 0);
	signal alu_operation: std_logic_vector (3 downto 0);
	signal alu_mux_out: std_logic_vector (31 downto 0);
	signal alu_result: std_logic_vector (31 downto 0);
	signal read_data_from_memory: std_logic_vector (31 downto 0);
	signal extended_shifted: std_logic_vector (31 downto 0);
	signal branch_address: std_logic_vector (31 downto 0);
	signal c_flag, o_flag: std_logic;	
	signal instruction20_16 : std_logic_vector(4 downto 0);
	signal instruction15_11 : std_logic_vector(4 downto 0);
	signal new_mux_signal : std_logic_vector(4 downto 0);
	signal load_it : std_logic;
	
	signal is_bne :std_logic;
   


begin

	is_bne <='1'   when current_instruction(31 downto 26)="000101" else '0';
	
	do_we_branch <= (zero and BranchS and not is_bne ) or ((not zero) and is_bne and BranchS);

	jump_address <= current_plus_four(31 downto 28) & sll_jump_out(27 downto 0);
	instruction20_16 <= current_instruction(20 downto 16);
	instruction15_11 <= current_instruction(15 downto 11);
	
	programCounter: PC port map(clk, '0', next_instruction, current_address);
	
	instruction_memory: INSTRMEMORY port map('1', current_address, clk, current_instruction);
	
	pc_plus_four_adder: adder port map(current_address, x"00000004", current_plus_four);
	
	sll_for_jump: Shift port map("000000" & current_instruction(25 downto 0), sll_jump_out);
	
	my_sign_extend: Sign_Extend port map(current_instruction(15 downto 0), extended);
	
	main_control: controlunit port map(current_instruction(31 downto 26), RegDstS,  ALUSrcS,
	MemtoRegS,RegWriteS,  MemReadS, MemWriteS, BranchS,jump, ALUopS);
	
	alu_control_unit: Alu_control port map(ALUopS, current_instruction(5 downto 0), alu_operation);
	
	jump_address_adder: adder port map(extended_shifted, current_plus_four, branch_address);
	
	data_memory: DATAMEMORY port map('1', read_data_2, MemReadS, MemWriteS, alu_result, clk, read_data_from_memory);
	
	alu: alu_32_bit port map(read_data_1, alu_mux_out, alu_operation, '1', alu_result, c_flag, zero, o_flag);
	
	reg_file: RegisterFile port map(write_data, write_reg, RegWriteS, current_instruction(25 downto 21)
	, current_instruction(20 downto 16),clk, read_data_1, read_data_2);
	
	shift_for_jal: Shift port map(extended, extended_shifted);
	
	mux_for_alu_second_operand: mux2x1 generic map(32) port map(read_data_2, extended, ALUSrcS, alu_mux_out);
	
	mux_for_write_data_to_reg: mux2x1 generic map(32) port map(alu_result, read_data_from_memory, MemtoRegS, write_data);
	
	mux_for_brach: mux2x1 generic	map(32) port map(current_plus_four, branch_address, do_we_branch, branch_mux_out);
	
	mux_for_jump: mux2x1 generic	map(32) port map(branch_mux_out, jump_address, jump, next_instruction);--next instruction can be jump or pc +4 or branch
	
	mux_dest_reg :mux2x1 generic map(5) port map (current_instruction(20 downto 16) ,current_instruction(15 downto 11), RegDstS,write_reg);

	RegFileOut1 <= read_data_1;
	RegFileOut2 <= read_data_2;
	ALUOut <= alu_result;
	PCOut <= current_address;
	DataMemOut <= read_data_from_memory;
	extra(4 downto 0) <= write_Reg;
	extra (5) <= RegWriteS;
	
	process(start)
	begin
	if (start='1') then load_it <='1';
	else load_it <='0';
	end if;
end process;
end Behavioral;

