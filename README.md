## 設計重點說明

### ALU
- **Input**: `RD1_next (32 bits)`, `alu_b (32 bits)`  
- **Output**: `out (alu_out)`  
- 呼叫 ALU-Bit-Slice，並依序傳入 32 組位元進行運算，當 signal 為 `101010` (slt) 時，若 temp[31] 為 1，out 設為 alu_b，否則為 RD1_next。

### 1-bit ALU
- **Input**: `a`, `b`, `invertb`, `carryIn` (皆為 1 bit)  
- **Output**: `out`, `carryOut` (皆為 1 bit)  
- 根據 signal 執行 AND、OR、加法或減法。

### FA (Full Adder)
- **Input**: `a`, `b`, `carryIn`  
- **Output**: `sum`, `carryOut`  

### Multiplier
- **Input**: `RD1_next (32 bits)`, `alu_b (32 bits)`  
- **Output**: `multu_out (64 bits)`  
- 透過 Booth’s algorithm 處理乘法，將結果儲存於 multu_out。

### Shifter
- **Input**: `RD2_next`, `shamt_next` (皆為 32 bits)  
- **Output**: `sll_out (32 bits)`  
- 根據 shamt 逐步位移（1, 2, 4, 8 bits），補0填空。

### Mux_2to1
- **Input**: `in0`, `in1`, `sel`  
- **Output**: `out`  

### HiLo
- **Input**: `multu_out (64 bits)`  
- **Output**: `Hi`, `Lo` (各32 bits)

### Mux
- **Input**: `ALU`, `Hi`, `Lo`, `SHT`  
- **Output**: `out`  

### IFID Register
- 將當前 Cycle 的 `pc_incr` 與 `instr` 傳送至下一階段

### IDEX Register
- 保存指令資訊與控制訊號，送入 EX 階段。

### EXMEM Register
- 保存執行結果，傳送至 Memory 階段。

### MEMWB Register
- 保存 memory 階段的資料與控制訊號，進入 WB 階段。

---

