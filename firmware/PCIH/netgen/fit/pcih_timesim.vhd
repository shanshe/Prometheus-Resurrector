--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: pcih_timesim.vhd
-- /___/   /\     Timestamp: Wed Aug 23 09:43:37 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -ar Structure -tm pcih -w -dir netgen/fit -ofmt vhdl -sim pcih.nga pcih_timesim.vhd 
-- Device	: XC95144XL-10-TQ144 (Speed File: Version 3.0)
-- Input file	: pcih.nga
-- Output file	: C:\Users\shanshe\Desktop\PCI\PCIH\netgen\fit\pcih_timesim.vhd
-- # of Entities	: 1
-- Design Name	: pcih.nga
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity pcih is
  port (
    Z_NSLAVE : in STD_LOGIC := 'X'; 
    Z_NIORST : in STD_LOGIC := 'X'; 
    Z_READ : in STD_LOGIC := 'X'; 
    Z_DOE : in STD_LOGIC := 'X'; 
    I_ZMA : in STD_LOGIC := 'X'; 
    I_PCICLK2 : in STD_LOGIC := 'X'; 
    P_NINTD : in STD_LOGIC := 'X'; 
    P_NINTC : in STD_LOGIC := 'X'; 
    P_NINTB : in STD_LOGIC := 'X'; 
    P_NINTA : in STD_LOGIC := 'X'; 
    P_NTRDY : in STD_LOGIC := 'X'; 
    P_NSTOP : in STD_LOGIC := 'X'; 
    Z_NFCS : in STD_LOGIC := 'X'; 
    Z_NBERR : in STD_LOGIC := 'X'; 
    I_ZLA : in STD_LOGIC := 'X'; 
    P_NDEVSEL : in STD_LOGIC := 'X'; 
    I_33M : in STD_LOGIC := 'X'; 
    P_NFRAME : inout STD_LOGIC; 
    P_NRESET : out STD_LOGIC; 
    P_NIRDY : inout STD_LOGIC; 
    Z_NCFGOUT : out STD_LOGIC; 
    P_PAR : out STD_LOGIC; 
    I_DATA : out STD_LOGIC; 
    I_DAOUT : out STD_LOGIC; 
    I_PCIENA : out STD_LOGIC; 
    I_CFLT : out STD_LOGIC; 
    I_NINT2 : out STD_LOGIC; 
    I_PCIDL : out STD_LOGIC; 
    Z_NDTACK : out STD_LOGIC; 
    I_PCICLK : out STD_LOGIC; 
    P_NLOCK : out STD_LOGIC; 
    I_NINT6 : out STD_LOGIC; 
    Z_NDS : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    I_ACC : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    P_NREQ : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Z_AA : in STD_LOGIC_VECTOR ( 7 downto 2 ); 
    I_DATPAR : in STD_LOGIC_VECTOR ( 1 downto 0 ); 
    P_CBE : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Z_ADA : inout STD_LOGIC_VECTOR ( 31 downto 28 ); 
    P_NGNT : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    I_PLA : out STD_LOGIC_VECTOR ( 1 downto 0 ); 
    P_CLKOUT : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end pcih;

architecture Structure of pcih is
  signal Z_NSLAVE_IBUF_1 : STD_LOGIC; 
  signal N3_3 : STD_LOGIC; 
  signal Z_NIORST_IBUF_5 : STD_LOGIC; 
  signal FSR_IO_0_6 : STD_LOGIC; 
  signal Z_NDS_3_IBUF_8 : STD_LOGIC; 
  signal Z_READ_IBUF_10 : STD_LOGIC; 
  signal Z_DOE_IBUF_12 : STD_LOGIC; 
  signal I_ACC_0_IBUF_14 : STD_LOGIC; 
  signal I_ACC_1_IBUF_16 : STD_LOGIC; 
  signal I_ZMA_IBUF_18 : STD_LOGIC; 
  signal I_PCICLK2_IBUF_FCLK_20 : STD_LOGIC; 
  signal I_PCICLK2_IBUF_FCLK_Q_21 : STD_LOGIC; 
  signal N2_23 : STD_LOGIC; 
  signal Z_NDS_2_IBUF_25 : STD_LOGIC; 
  signal Z_NDS_1_IBUF_27 : STD_LOGIC; 
  signal Z_NDS_0_IBUF_29 : STD_LOGIC; 
  signal P_NINTD_IBUF_31 : STD_LOGIC; 
  signal P_NINTC_IBUF_33 : STD_LOGIC; 
  signal P_NINTB_IBUF_35 : STD_LOGIC; 
  signal P_NINTA_IBUF_37 : STD_LOGIC; 
  signal P_NREQ_0_IBUF_39 : STD_LOGIC; 
  signal P_NTRDY_IBUF_41 : STD_LOGIC; 
  signal P_NSTOP_IBUF_43 : STD_LOGIC; 
  signal Z_AA_6_IBUF_45 : STD_LOGIC; 
  signal P_NREQ_2_IBUF_47 : STD_LOGIC; 
  signal P_NREQ_3_IBUF_49 : STD_LOGIC; 
  signal Z_AA_5_IBUF_51 : STD_LOGIC; 
  signal Z_AA_4_IBUF_53 : STD_LOGIC; 
  signal Z_AA_3_IBUF_55 : STD_LOGIC; 
  signal Z_NFCS_IBUF_57 : STD_LOGIC; 
  signal Z_NFCS_IBUF_FCLK_58 : STD_LOGIC; 
  signal Z_NBERR_IBUF_60 : STD_LOGIC; 
  signal Z_AA_2_IBUF_62 : STD_LOGIC; 
  signal I_ZLA_IBUF_64 : STD_LOGIC; 
  signal P_NREQ_1_IBUF_66 : STD_LOGIC; 
  signal N01_68 : STD_LOGIC; 
  signal N1_70 : STD_LOGIC; 
  signal Z_AA_7_IBUF_72 : STD_LOGIC; 
  signal P_NDEVSEL_IBUF_74 : STD_LOGIC; 
  signal N7_76 : STD_LOGIC; 
  signal N6_78 : STD_LOGIC; 
  signal N5_80 : STD_LOGIC; 
  signal N4_82 : STD_LOGIC; 
  signal I_DATPAR_0_IBUF_84 : STD_LOGIC; 
  signal I_DATPAR_1_IBUF_86 : STD_LOGIC; 
  signal I_33M_IBUF_88 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_89 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_OE_90 : STD_LOGIC; 
  signal p_nreset_x_Q_92 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_Q_93 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_OE_94 : STD_LOGIC; 
  signal ncfg_xx_Q_96 : STD_LOGIC; 
  signal cbp_x_0_OE_98 : STD_LOGIC; 
  signal cbp_x_1_OE_100 : STD_LOGIC; 
  signal cbp_x_2_OE_102 : STD_LOGIC; 
  signal cbp_x_3_OE_104 : STD_LOGIC; 
  signal z_ada_x_1_OE_107 : STD_LOGIC; 
  signal z_ada_x_2_OE_109 : STD_LOGIC; 
  signal z_ada_x_3_OE_111 : STD_LOGIC; 
  signal p_par_x_113 : STD_LOGIC; 
  signal p_par_x_OE_114 : STD_LOGIC; 
  signal z_ada_x_0_OE_117 : STD_LOGIC; 
  signal P_NGNT_1_OBUF_119 : STD_LOGIC; 
  signal P_NGNT_2_OBUF_121 : STD_LOGIC; 
  signal P_NGNT_3_OBUF_123 : STD_LOGIC; 
  signal I_DATA_OBUF_125 : STD_LOGIC; 
  signal I_DAOUT_OBUF_Q_127 : STD_LOGIC; 
  signal I_PCIENA_OBUF_Q_129 : STD_LOGIC; 
  signal I_CFLT_OBUF_Q_131 : STD_LOGIC; 
  signal I_NINT2_OBUF_133 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_135 : STD_LOGIC; 
  signal I_PCIDL_OBUF_137 : STD_LOGIC; 
  signal I_PLA_0_OBUF_139 : STD_LOGIC; 
  signal I_PLA_1_OBUF_141 : STD_LOGIC; 
  signal N0_Q_143 : STD_LOGIC; 
  signal N0_OE_144 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_Q_146 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF0_148 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF1_150 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF2_152 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_154 : STD_LOGIC; 
  signal I_NINT6_OBUF_Q_156 : STD_LOGIC; 
  signal I_NINT6_OBUF_BUF0_158 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_Q_159 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_BUFOE_OUT_160 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_TRST_161 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_D_162 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_D1_163 : STD_LOGIC; 
  signal THE_PCI_SEQ_nframe_x_D2_164 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169 : STD_LOGIC; 
  signal p_nreset_x_Q_170 : STD_LOGIC; 
  signal p_nreset_x_171 : STD_LOGIC; 
  signal p_nreset_x_D_172 : STD_LOGIC; 
  signal p_nreset_x_CLKF_173 : STD_LOGIC; 
  signal Gnd_174 : STD_LOGIC; 
  signal p_nreset_x_CE_175 : STD_LOGIC; 
  signal p_nreset_x_D1_176 : STD_LOGIC; 
  signal p_nreset_x_D2_177 : STD_LOGIC; 
  signal ncfg_xx_178 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_Q_179 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_Q_181 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_EXP_182 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_D_183 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_tsimcreated_xor_Q_184 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_RSTF_185 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_tsimcreated_prld_Q_186 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_CE_187 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_D1_188 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_D2_189 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_EXP_PT_0_191 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_0_EXP_PT_1_192 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_Q_195 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_D_197 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_tsimcreated_xor_Q_198 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_RSTF_199 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_tsimcreated_prld_Q_200 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_CE_201 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_D1_202 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_1_D2_203 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_Q_204 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_D_206 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_tsimcreated_xor_Q_207 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_RSTF_208 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_tsimcreated_prld_Q_209 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_CE_210 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_D1_211 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_D2_212 : STD_LOGIC; 
  signal pci_int_ena_x_Q : STD_LOGIC; 
  signal pci_int_ena_x_214 : STD_LOGIC; 
  signal pci_int_ena_x_EXP_tsimrenamed_net_Q_215 : STD_LOGIC; 
  signal pci_int_ena_x_EXP_216 : STD_LOGIC; 
  signal pci_int_ena_x_tsimcreated_prld_Q_217 : STD_LOGIC; 
  signal pci_int_ena_x_D_218 : STD_LOGIC; 
  signal pci_int_ena_x_CLKF_219 : STD_LOGIC; 
  signal pci_int_ena_x_CE_220 : STD_LOGIC; 
  signal pci_int_ena_x_D1_221 : STD_LOGIC; 
  signal pci_int_ena_x_D2_222 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_Q_223 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_D_225 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_tsimcreated_xor_Q_226 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_RSTF_227 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_tsimcreated_prld_Q_228 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_CE_229 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_D1_230 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_3_D2_231 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_Q_232 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_Q_233 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_EXP_234 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_BUFOE_OUT_235 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_TRST_236 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_D_237 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_D1_238 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_D2_239 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_D2_PT_0_240 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_D2_PT_1_241 : STD_LOGIC; 
  signal ncfg_xx_Q_242 : STD_LOGIC; 
  signal ncfg_xx_D_243 : STD_LOGIC; 
  signal Vcc_244 : STD_LOGIC; 
  signal ncfg_xx_D1_245 : STD_LOGIC; 
  signal ncfg_xx_D2_246 : STD_LOGIC; 
  signal ncfg_x_247 : STD_LOGIC; 
  signal cbp_x_0_Q_248 : STD_LOGIC; 
  signal cbp_x_0_BUFOE_OUT_249 : STD_LOGIC; 
  signal cbp_x_0_TRST_250 : STD_LOGIC; 
  signal cbp_x_0_D_251 : STD_LOGIC; 
  signal cbp_x_0_D1_252 : STD_LOGIC; 
  signal cbp_x_0_D2_253 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_0_254 : STD_LOGIC; 
  signal N0_N0_TRST_EXP_255 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_1_256 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_2_257 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_3_258 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_4_259 : STD_LOGIC; 
  signal cbp_x_0_D2_PT_5_260 : STD_LOGIC; 
  signal cbp_x_2_cbp_x_2_TRST_UIM_261 : STD_LOGIC; 
  signal cbp_x_1_Q_262 : STD_LOGIC; 
  signal cbp_x_1_BUFOE_OUT_263 : STD_LOGIC; 
  signal cbp_x_1_TRST_264 : STD_LOGIC; 
  signal cbp_x_1_D_265 : STD_LOGIC; 
  signal cbp_x_1_D1_266 : STD_LOGIC; 
  signal cbp_x_1_D2_267 : STD_LOGIC; 
  signal cbp_x_1_D2_PT_0_268 : STD_LOGIC; 
  signal cbp_x_1_D2_PT_1_269 : STD_LOGIC; 
  signal cbp_x_2_Q_270 : STD_LOGIC; 
  signal cbp_x_2_BUFOE_OUT_271 : STD_LOGIC; 
  signal cbp_x_2_TRST_272 : STD_LOGIC; 
  signal cbp_x_2_D_273 : STD_LOGIC; 
  signal cbp_x_2_D1_274 : STD_LOGIC; 
  signal cbp_x_2_D2_275 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_0_276 : STD_LOGIC; 
  signal EXP38_EXP_277 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_1_278 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_2_279 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_3_280 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_4_281 : STD_LOGIC; 
  signal cbp_x_2_D2_PT_5_282 : STD_LOGIC; 
  signal cbp_x_3_Q_283 : STD_LOGIC; 
  signal cbp_x_3_BUFOE_OUT_284 : STD_LOGIC; 
  signal cbp_x_3_TRST_285 : STD_LOGIC; 
  signal cbp_x_3_D_286 : STD_LOGIC; 
  signal cbp_x_3_D1_287 : STD_LOGIC; 
  signal cbp_x_3_D2_288 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_0_289 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_290 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_1_291 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_2_292 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_3_293 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_4_294 : STD_LOGIC; 
  signal cbp_x_3_D2_PT_5_295 : STD_LOGIC; 
  signal z_ada_x_1_Q_296 : STD_LOGIC; 
  signal z_ada_x_1_BUFOE_OUT_297 : STD_LOGIC; 
  signal z_ada_x_1_TRST_298 : STD_LOGIC; 
  signal z_ada_x_1_D_299 : STD_LOGIC; 
  signal z_ada_x_1_D1_300 : STD_LOGIC; 
  signal z_ada_x_1_D2_301 : STD_LOGIC; 
  signal EXP14_EXP_302 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_0_303 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_EXP_304 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_1_305 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_2_306 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_3_307 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_4_308 : STD_LOGIC; 
  signal z_ada_x_1_D2_PT_5_309 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_UIM_310 : STD_LOGIC; 
  signal z_ada_x_2_Q_311 : STD_LOGIC; 
  signal z_ada_x_2_BUFOE_OUT_312 : STD_LOGIC; 
  signal z_ada_x_2_TRST_313 : STD_LOGIC; 
  signal z_ada_x_2_D_314 : STD_LOGIC; 
  signal z_ada_x_2_D1_315 : STD_LOGIC; 
  signal z_ada_x_2_D2_316 : STD_LOGIC; 
  signal z_ada_x_2_D2_PT_0_317 : STD_LOGIC; 
  signal z_ada_x_2_D2_PT_1_318 : STD_LOGIC; 
  signal z_ada_x_2_D2_PT_2_319 : STD_LOGIC; 
  signal z_ada_x_2_D2_PT_3_320 : STD_LOGIC; 
  signal z_ada_x_3_Q_321 : STD_LOGIC; 
  signal z_ada_x_3_BUFOE_OUT_322 : STD_LOGIC; 
  signal z_ada_x_3_TRST_323 : STD_LOGIC; 
  signal z_ada_x_3_D_324 : STD_LOGIC; 
  signal z_ada_x_3_D1_325 : STD_LOGIC; 
  signal z_ada_x_3_D2_326 : STD_LOGIC; 
  signal z_ada_x_3_D2_PT_0_327 : STD_LOGIC; 
  signal z_ada_x_3_D2_PT_1_328 : STD_LOGIC; 
  signal z_ada_x_3_D2_PT_2_329 : STD_LOGIC; 
  signal p_par_x_Q_330 : STD_LOGIC; 
  signal p_par_x_EXP_tsimrenamed_net_Q_331 : STD_LOGIC; 
  signal p_par_x_EXP_332 : STD_LOGIC; 
  signal p_par_x_BUFOE_OUT_333 : STD_LOGIC; 
  signal p_par_x_TRST_334 : STD_LOGIC; 
  signal p_par_x_D_335 : STD_LOGIC; 
  signal p_par_x_D1_336 : STD_LOGIC; 
  signal p_par_x_D2_337 : STD_LOGIC; 
  signal cbe_p_338 : STD_LOGIC; 
  signal dat_p_339 : STD_LOGIC; 
  signal p_par_ena_340 : STD_LOGIC; 
  signal p_par_x_EXP_PT_0_341 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342 : STD_LOGIC; 
  signal p_par_x_EXP_PT_1_343 : STD_LOGIC; 
  signal z_ada_x_0_Q_344 : STD_LOGIC; 
  signal z_ada_x_0_BUFOE_OUT_345 : STD_LOGIC; 
  signal z_ada_x_0_TRST_346 : STD_LOGIC; 
  signal z_ada_x_0_D_347 : STD_LOGIC; 
  signal z_ada_x_0_D1_348 : STD_LOGIC; 
  signal z_ada_x_0_D2_349 : STD_LOGIC; 
  signal z_ada_x_0_D2_PT_0_350 : STD_LOGIC; 
  signal z_ada_x_0_D2_PT_1_351 : STD_LOGIC; 
  signal z_ada_x_0_D2_PT_2_352 : STD_LOGIC; 
  signal z_ada_x_0_D2_PT_3_353 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_Q_354 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D_356 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_Q_357 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_Q_358 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D1_359 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_360 : STD_LOGIC; 
  signal EXP30_EXP_361 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_362 : STD_LOGIC; 
  signal EXP31_EXP_363 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_364 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_UIM_365 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_366 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_368 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_369 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_370 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_371 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_Q_372 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_Q_373 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D_374 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D1_375 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_376 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_377 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_EXP_378 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_379 : STD_LOGIC; 
  signal EXP20_EXP_380 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_381 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_382 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_383 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_384 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_385 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_Q_386 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_Q_387 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_Q_388 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D_389 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D1_390 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D2_391 : STD_LOGIC; 
  signal EXP19_EXP_392 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_393 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_394 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_395 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_396 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_397 : STD_LOGIC; 
  signal cycend_x_398 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_399 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_Q_400 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_Q_401 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D_402 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D1_403 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_404 : STD_LOGIC; 
  signal EXP15_EXP_405 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_406 : STD_LOGIC; 
  signal EXP16_EXP_407 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_408 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_409 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_410 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_411 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_414 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_415 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_Q_416 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_Q_417 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_EXP_418 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_Q_419 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D_420 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D1_421 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_422 : STD_LOGIC; 
  signal EXP26_EXP_423 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_424 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_425 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_426 : STD_LOGIC; 
  signal THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_428 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_429 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_Q_430 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_Q_431 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D_432 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D1_433 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_434 : STD_LOGIC; 
  signal EXP32_EXP_435 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_436 : STD_LOGIC; 
  signal EXP33_EXP_437 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_438 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_439 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_440 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_441 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_442 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_443 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_3_Q_444 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_Q_445 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_3_D_446 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_3_D1_447 : STD_LOGIC; 
  signal THE_PCI_SEQ_CURRENT_STATE_3_D2_448 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_Q_449 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_Q_450 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D_451 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D1_452 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_453 : STD_LOGIC; 
  signal EXP35_EXP_454 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_455 : STD_LOGIC; 
  signal EXP36_EXP_456 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_457 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_459 : STD_LOGIC; 
  signal Q_OpTx_INV_509_UIM_460 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_461 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_462 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_463 : STD_LOGIC; 
  signal THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_464 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_Q_465 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_RSTF_466 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_Q_467 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_D_468 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_D1_469 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_D2_470 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_Q_472 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_RSTF_473 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_Q_474 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_D_475 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_D1_476 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_1_D2_477 : STD_LOGIC; 
  signal P_NGNT_1_OBUF_Q_478 : STD_LOGIC; 
  signal P_NGNT_1_OBUF_D_479 : STD_LOGIC; 
  signal P_NGNT_1_OBUF_D1_480 : STD_LOGIC; 
  signal P_NGNT_1_OBUF_D2_481 : STD_LOGIC; 
  signal P_NGNT_2_OBUF_Q_482 : STD_LOGIC; 
  signal P_NGNT_2_OBUF_D_483 : STD_LOGIC; 
  signal P_NGNT_2_OBUF_D1_484 : STD_LOGIC; 
  signal P_NGNT_2_OBUF_D2_485 : STD_LOGIC; 
  signal P_NGNT_3_OBUF_Q_486 : STD_LOGIC; 
  signal P_NGNT_3_OBUF_D_487 : STD_LOGIC; 
  signal P_NGNT_3_OBUF_D1_488 : STD_LOGIC; 
  signal P_NGNT_3_OBUF_D2_489 : STD_LOGIC; 
  signal I_DATA_OBUF_Q_490 : STD_LOGIC; 
  signal I_DATA_OBUF_D_491 : STD_LOGIC; 
  signal I_DATA_OBUF_D1_492 : STD_LOGIC; 
  signal I_DATA_OBUF_D2_493 : STD_LOGIC; 
  signal I_DATA_OBUF_D2_PT_0_494 : STD_LOGIC; 
  signal I_DATA_OBUF_D2_PT_1_495 : STD_LOGIC; 
  signal I_DATA_OBUF_D2_PT_2_496 : STD_LOGIC; 
  signal I_DAOUT_OBUF_Q_497 : STD_LOGIC; 
  signal I_DAOUT_OBUF_D_498 : STD_LOGIC; 
  signal I_DAOUT_OBUF_D1_499 : STD_LOGIC; 
  signal I_DAOUT_OBUF_D2_500 : STD_LOGIC; 
  signal I_DAOUT_OBUF_D2_PT_0_501 : STD_LOGIC; 
  signal I_DAOUT_OBUF_D2_PT_1_502 : STD_LOGIC; 
  signal I_PCIENA_OBUF_Q_503 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D_504 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D1_505 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D2_506 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D2_PT_0_507 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D2_PT_1_508 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D2_PT_2_509 : STD_LOGIC; 
  signal I_PCIENA_OBUF_D2_PT_3_510 : STD_LOGIC; 
  signal I_CFLT_OBUF_Q_511 : STD_LOGIC; 
  signal I_CFLT_OBUF_D_512 : STD_LOGIC; 
  signal I_CFLT_OBUF_D1_513 : STD_LOGIC; 
  signal I_CFLT_OBUF_D2_514 : STD_LOGIC; 
  signal cycend_x_Q : STD_LOGIC; 
  signal cycend_x_D_516 : STD_LOGIC; 
  signal cycend_x_CLKF_517 : STD_LOGIC; 
  signal cycend_x_SETF_518 : STD_LOGIC; 
  signal cycend_x_D1_519 : STD_LOGIC; 
  signal cycend_x_D2_520 : STD_LOGIC; 
  signal ncfg_x_Q : STD_LOGIC; 
  signal ncfg_x_D_522 : STD_LOGIC; 
  signal ncfg_x_CLKF_523 : STD_LOGIC; 
  signal ncfg_x_D1_524 : STD_LOGIC; 
  signal ncfg_x_D2_525 : STD_LOGIC; 
  signal cbe_p_Q : STD_LOGIC; 
  signal cbe_p_D_527 : STD_LOGIC; 
  signal cbe_p_D1_528 : STD_LOGIC; 
  signal cbe_p_D2_529 : STD_LOGIC; 
  signal cbe_p_D2_PT_0_530 : STD_LOGIC; 
  signal cbe_p_D2_PT_1_531 : STD_LOGIC; 
  signal cbe_p_D2_PT_2_532 : STD_LOGIC; 
  signal cbe_p_D2_PT_3_533 : STD_LOGIC; 
  signal dat_p_Q : STD_LOGIC; 
  signal dat_p_D_535 : STD_LOGIC; 
  signal dat_p_D1_536 : STD_LOGIC; 
  signal dat_p_D2_537 : STD_LOGIC; 
  signal p_par_ena_Q : STD_LOGIC; 
  signal p_par_ena_D_539 : STD_LOGIC; 
  signal p_par_ena_D1_540 : STD_LOGIC; 
  signal p_par_ena_D2_541 : STD_LOGIC; 
  signal p_par_ena_D2_PT_0_542 : STD_LOGIC; 
  signal p_par_ena_D2_PT_1_543 : STD_LOGIC; 
  signal p_par_ena_D2_PT_2_544 : STD_LOGIC; 
  signal p_par_ena_D2_PT_3_545 : STD_LOGIC; 
  signal I_NINT2_OBUF_Q_546 : STD_LOGIC; 
  signal I_NINT2_OBUF_D_547 : STD_LOGIC; 
  signal I_NINT2_OBUF_D1_548 : STD_LOGIC; 
  signal I_NINT2_OBUF_D2_549 : STD_LOGIC; 
  signal I_NINT2_OBUF_D2_PT_0_550 : STD_LOGIC; 
  signal I_NINT2_OBUF_D2_PT_1_551 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_Q_552 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_tsimrenamed_net_Q_553 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_D_554 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_D1_555 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_D2_556 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_PT_0_557 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_PT_1_558 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_PT_2_559 : STD_LOGIC; 
  signal P_NGNT_0_OBUF_EXP_PT_3_560 : STD_LOGIC; 
  signal I_PCIDL_OBUF_Q_561 : STD_LOGIC; 
  signal I_PCIDL_OBUF_D_562 : STD_LOGIC; 
  signal I_PCIDL_OBUF_D1_563 : STD_LOGIC; 
  signal I_PCIDL_OBUF_D2_564 : STD_LOGIC; 
  signal I_PCIDL_OBUF_D2_PT_0_565 : STD_LOGIC; 
  signal I_PCIDL_OBUF_D2_PT_1_566 : STD_LOGIC; 
  signal I_PLA_0_OBUF_Q_567 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D_568 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D1_569 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D2_570 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D2_PT_0_571 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D2_PT_1_572 : STD_LOGIC; 
  signal I_PLA_0_OBUF_D2_PT_2_573 : STD_LOGIC; 
  signal I_PLA_1_OBUF_Q_574 : STD_LOGIC; 
  signal I_PLA_1_OBUF_D_575 : STD_LOGIC; 
  signal I_PLA_1_OBUF_D1_576 : STD_LOGIC; 
  signal I_PLA_1_OBUF_D2_577 : STD_LOGIC; 
  signal I_PLA_1_OBUF_D2_PT_0_578 : STD_LOGIC; 
  signal I_PLA_1_OBUF_D2_PT_1_579 : STD_LOGIC; 
  signal N0_Q_580 : STD_LOGIC; 
  signal N0_BUFOE_OUT_581 : STD_LOGIC; 
  signal N0_TRST_582 : STD_LOGIC; 
  signal N0_D_583 : STD_LOGIC; 
  signal N0_D1_584 : STD_LOGIC; 
  signal N0_D2_585 : STD_LOGIC; 
  signal N0_N0_TRST_UIM_586 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_Q_587 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_D_588 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_D1_589 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_D2_590 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF0_Q_591 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF0_D_592 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF0_D1_593 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF0_D2_594 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF1_Q_595 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF1_D_596 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF1_D1_597 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF1_D2_598 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF2_Q_599 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF2_D_600 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF2_D1_601 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF2_D2_602 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_Q_603 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_Q_604 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_D_605 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_D1_606 : STD_LOGIC; 
  signal P_CLKOUT_0_OBUF_BUF3_D2_607 : STD_LOGIC; 
  signal I_NINT6_OBUF_Q_608 : STD_LOGIC; 
  signal I_NINT6_OBUF_D_609 : STD_LOGIC; 
  signal I_NINT6_OBUF_D1_610 : STD_LOGIC; 
  signal I_NINT6_OBUF_D2_611 : STD_LOGIC; 
  signal I_NINT6_OBUF_BUF0_Q_612 : STD_LOGIC; 
  signal I_NINT6_OBUF_BUF0_D_613 : STD_LOGIC; 
  signal I_NINT6_OBUF_BUF0_D1_614 : STD_LOGIC; 
  signal I_NINT6_OBUF_BUF0_D2_615 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_Q_616 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_617 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D1_618 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_619 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_620 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_621 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_622 : STD_LOGIC; 
  signal THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_623 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_Q_624 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_625 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D1_626 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_627 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_628 : STD_LOGIC; 
  signal THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_629 : STD_LOGIC; 
  signal cbp_x_2_cbp_x_2_TRST_Q_630 : STD_LOGIC; 
  signal cbp_x_2_cbp_x_2_TRST_D_631 : STD_LOGIC; 
  signal cbp_x_2_cbp_x_2_TRST_D1_632 : STD_LOGIC; 
  signal cbp_x_2_cbp_x_2_TRST_D2_633 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_Q_634 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_D_635 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_D1_636 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_D2_637 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_D2_PT_0_638 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_519_D2_PT_1_639 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_Q_640 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D_641 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D1_642 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_643 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_PT_0_644 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_PT_1_645 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_PT_2_646 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_PT_3_647 : STD_LOGIC; 
  signal Q_OpTx_FX_DC_1244_D2_PT_4_648 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_Q_649 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_650 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D1_651 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_652 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_653 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_654 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_655 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_656 : STD_LOGIC; 
  signal Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_657 : STD_LOGIC; 
  signal Q_OpTx_INV_509_Q_658 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D_659 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D1_660 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_661 : STD_LOGIC; 
  signal EXP22_EXP_662 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_0_663 : STD_LOGIC; 
  signal EXP23_EXP_664 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_1_665 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_2_666 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_3_667 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_4_668 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_5_669 : STD_LOGIC; 
  signal Q_OpTx_INV_509_D2_PT_6_670 : STD_LOGIC; 
  signal THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_Q_671 : STD_LOGIC; 
  signal THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_672 : STD_LOGIC; 
  signal THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D1_673 : STD_LOGIC; 
  signal THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_674 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_Q_675 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_676 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D1_677 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_678 : STD_LOGIC; 
  signal EXP27_EXP_679 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_680 : STD_LOGIC; 
  signal EXP28_EXP_681 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_682 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_683 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_684 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_685 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_686 : STD_LOGIC; 
  signal Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_687 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_Q_688 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_689 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D1_690 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_691 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_692 : STD_LOGIC; 
  signal THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_693 : STD_LOGIC; 
  signal N0_N0_TRST_Q_694 : STD_LOGIC; 
  signal N0_N0_TRST_EXP_tsimrenamed_net_Q_695 : STD_LOGIC; 
  signal N0_N0_TRST_D_696 : STD_LOGIC; 
  signal N0_N0_TRST_D1_697 : STD_LOGIC; 
  signal N0_N0_TRST_D2_698 : STD_LOGIC; 
  signal N0_N0_TRST_D2_PT_0_699 : STD_LOGIC; 
  signal N0_N0_TRST_D2_PT_1_700 : STD_LOGIC; 
  signal N0_N0_TRST_D2_PT_2_701 : STD_LOGIC; 
  signal EXP14_EXP_tsimrenamed_net_Q_702 : STD_LOGIC; 
  signal EXP14_EXP_PT_0_703 : STD_LOGIC; 
  signal EXP14_EXP_PT_1_704 : STD_LOGIC; 
  signal EXP15_EXP_tsimrenamed_net_Q_705 : STD_LOGIC; 
  signal EXP15_EXP_PT_0_706 : STD_LOGIC; 
  signal EXP15_EXP_PT_1_707 : STD_LOGIC; 
  signal EXP15_EXP_PT_2_708 : STD_LOGIC; 
  signal EXP15_EXP_PT_3_709 : STD_LOGIC; 
  signal EXP15_EXP_PT_4_710 : STD_LOGIC; 
  signal EXP16_EXP_tsimrenamed_net_Q_711 : STD_LOGIC; 
  signal EXP17_EXP_712 : STD_LOGIC; 
  signal EXP16_EXP_PT_0_713 : STD_LOGIC; 
  signal EXP16_EXP_PT_1_714 : STD_LOGIC; 
  signal EXP16_EXP_PT_2_715 : STD_LOGIC; 
  signal EXP16_EXP_PT_3_716 : STD_LOGIC; 
  signal EXP16_EXP_PT_4_717 : STD_LOGIC; 
  signal EXP16_EXP_PT_5_718 : STD_LOGIC; 
  signal EXP17_EXP_tsimrenamed_net_Q_719 : STD_LOGIC; 
  signal EXP17_EXP_PT_0_720 : STD_LOGIC; 
  signal EXP17_EXP_PT_1_721 : STD_LOGIC; 
  signal EXP18_EXP_tsimrenamed_net_Q_722 : STD_LOGIC; 
  signal EXP18_EXP_723 : STD_LOGIC; 
  signal EXP18_EXP_PT_0_724 : STD_LOGIC; 
  signal EXP18_EXP_PT_1_725 : STD_LOGIC; 
  signal EXP18_EXP_PT_2_726 : STD_LOGIC; 
  signal EXP18_EXP_PT_3_727 : STD_LOGIC; 
  signal EXP18_EXP_PT_4_728 : STD_LOGIC; 
  signal EXP19_EXP_tsimrenamed_net_Q_729 : STD_LOGIC; 
  signal EXP19_EXP_PT_0_730 : STD_LOGIC; 
  signal EXP19_EXP_PT_1_731 : STD_LOGIC; 
  signal EXP19_EXP_PT_2_732 : STD_LOGIC; 
  signal EXP19_EXP_PT_3_733 : STD_LOGIC; 
  signal EXP19_EXP_PT_4_734 : STD_LOGIC; 
  signal EXP19_EXP_PT_5_735 : STD_LOGIC; 
  signal EXP20_EXP_tsimrenamed_net_Q_736 : STD_LOGIC; 
  signal EXP20_EXP_PT_0_737 : STD_LOGIC; 
  signal EXP20_EXP_PT_1_738 : STD_LOGIC; 
  signal EXP20_EXP_PT_2_739 : STD_LOGIC; 
  signal EXP20_EXP_PT_3_740 : STD_LOGIC; 
  signal EXP20_EXP_PT_4_741 : STD_LOGIC; 
  signal EXP21_EXP_tsimrenamed_net_Q_742 : STD_LOGIC; 
  signal EXP21_EXP_743 : STD_LOGIC; 
  signal EXP21_EXP_PT_0_744 : STD_LOGIC; 
  signal EXP21_EXP_PT_1_745 : STD_LOGIC; 
  signal EXP21_EXP_PT_2_746 : STD_LOGIC; 
  signal EXP21_EXP_PT_3_747 : STD_LOGIC; 
  signal EXP21_EXP_PT_4_748 : STD_LOGIC; 
  signal EXP22_EXP_tsimrenamed_net_Q_749 : STD_LOGIC; 
  signal EXP22_EXP_PT_0_750 : STD_LOGIC; 
  signal EXP22_EXP_PT_1_751 : STD_LOGIC; 
  signal EXP22_EXP_PT_2_752 : STD_LOGIC; 
  signal EXP22_EXP_PT_3_753 : STD_LOGIC; 
  signal EXP22_EXP_PT_4_754 : STD_LOGIC; 
  signal EXP22_EXP_PT_5_755 : STD_LOGIC; 
  signal EXP23_EXP_tsimrenamed_net_Q_756 : STD_LOGIC; 
  signal EXP24_EXP_757 : STD_LOGIC; 
  signal EXP23_EXP_PT_0_758 : STD_LOGIC; 
  signal EXP23_EXP_PT_1_759 : STD_LOGIC; 
  signal EXP23_EXP_PT_2_760 : STD_LOGIC; 
  signal EXP23_EXP_PT_3_761 : STD_LOGIC; 
  signal EXP23_EXP_PT_4_762 : STD_LOGIC; 
  signal EXP23_EXP_PT_5_763 : STD_LOGIC; 
  signal EXP24_EXP_tsimrenamed_net_Q_764 : STD_LOGIC; 
  signal EXP25_EXP_tsimrenamed_net_Q_765 : STD_LOGIC; 
  signal EXP25_EXP_766 : STD_LOGIC; 
  signal EXP25_EXP_PT_0_767 : STD_LOGIC; 
  signal EXP25_EXP_PT_1_768 : STD_LOGIC; 
  signal EXP25_EXP_PT_2_769 : STD_LOGIC; 
  signal EXP25_EXP_PT_3_770 : STD_LOGIC; 
  signal EXP25_EXP_PT_4_771 : STD_LOGIC; 
  signal EXP26_EXP_tsimrenamed_net_Q_772 : STD_LOGIC; 
  signal EXP26_EXP_PT_0_773 : STD_LOGIC; 
  signal EXP26_EXP_PT_1_774 : STD_LOGIC; 
  signal EXP26_EXP_PT_2_775 : STD_LOGIC; 
  signal EXP26_EXP_PT_3_776 : STD_LOGIC; 
  signal EXP26_EXP_PT_4_777 : STD_LOGIC; 
  signal EXP26_EXP_PT_5_778 : STD_LOGIC; 
  signal EXP27_EXP_tsimrenamed_net_Q_779 : STD_LOGIC; 
  signal EXP27_EXP_PT_0_780 : STD_LOGIC; 
  signal EXP27_EXP_PT_1_781 : STD_LOGIC; 
  signal EXP27_EXP_PT_2_782 : STD_LOGIC; 
  signal EXP27_EXP_PT_3_783 : STD_LOGIC; 
  signal EXP27_EXP_PT_4_784 : STD_LOGIC; 
  signal EXP27_EXP_PT_5_785 : STD_LOGIC; 
  signal EXP28_EXP_tsimrenamed_net_Q_786 : STD_LOGIC; 
  signal EXP28_EXP_PT_0_787 : STD_LOGIC; 
  signal EXP28_EXP_PT_1_788 : STD_LOGIC; 
  signal EXP28_EXP_PT_2_789 : STD_LOGIC; 
  signal EXP28_EXP_PT_3_790 : STD_LOGIC; 
  signal EXP28_EXP_PT_4_791 : STD_LOGIC; 
  signal EXP29_EXP_tsimrenamed_net_Q_792 : STD_LOGIC; 
  signal EXP29_EXP_793 : STD_LOGIC; 
  signal EXP29_EXP_PT_0_794 : STD_LOGIC; 
  signal EXP29_EXP_PT_1_795 : STD_LOGIC; 
  signal EXP29_EXP_PT_2_796 : STD_LOGIC; 
  signal EXP29_EXP_PT_3_797 : STD_LOGIC; 
  signal EXP29_EXP_PT_4_798 : STD_LOGIC; 
  signal EXP30_EXP_tsimrenamed_net_Q_799 : STD_LOGIC; 
  signal EXP30_EXP_PT_0_800 : STD_LOGIC; 
  signal EXP30_EXP_PT_1_801 : STD_LOGIC; 
  signal EXP30_EXP_PT_2_802 : STD_LOGIC; 
  signal EXP30_EXP_PT_3_803 : STD_LOGIC; 
  signal EXP30_EXP_PT_4_804 : STD_LOGIC; 
  signal EXP30_EXP_PT_5_805 : STD_LOGIC; 
  signal EXP31_EXP_tsimrenamed_net_Q_806 : STD_LOGIC; 
  signal EXP31_EXP_PT_0_807 : STD_LOGIC; 
  signal EXP31_EXP_PT_1_808 : STD_LOGIC; 
  signal EXP31_EXP_PT_2_809 : STD_LOGIC; 
  signal EXP31_EXP_PT_3_810 : STD_LOGIC; 
  signal EXP31_EXP_PT_4_811 : STD_LOGIC; 
  signal EXP32_EXP_tsimrenamed_net_Q_812 : STD_LOGIC; 
  signal EXP32_EXP_PT_0_813 : STD_LOGIC; 
  signal EXP32_EXP_PT_1_814 : STD_LOGIC; 
  signal EXP32_EXP_PT_2_815 : STD_LOGIC; 
  signal EXP32_EXP_PT_3_816 : STD_LOGIC; 
  signal EXP32_EXP_PT_4_817 : STD_LOGIC; 
  signal EXP32_EXP_PT_5_818 : STD_LOGIC; 
  signal EXP33_EXP_tsimrenamed_net_Q_819 : STD_LOGIC; 
  signal EXP33_EXP_PT_0_820 : STD_LOGIC; 
  signal EXP33_EXP_PT_1_821 : STD_LOGIC; 
  signal EXP33_EXP_PT_2_822 : STD_LOGIC; 
  signal EXP33_EXP_PT_3_823 : STD_LOGIC; 
  signal EXP33_EXP_PT_4_824 : STD_LOGIC; 
  signal EXP34_EXP_tsimrenamed_net_Q_825 : STD_LOGIC; 
  signal EXP34_EXP_826 : STD_LOGIC; 
  signal EXP34_EXP_PT_0_827 : STD_LOGIC; 
  signal EXP34_EXP_PT_1_828 : STD_LOGIC; 
  signal EXP34_EXP_PT_2_829 : STD_LOGIC; 
  signal EXP34_EXP_PT_3_830 : STD_LOGIC; 
  signal EXP34_EXP_PT_4_831 : STD_LOGIC; 
  signal EXP35_EXP_tsimrenamed_net_Q_832 : STD_LOGIC; 
  signal EXP35_EXP_PT_0_833 : STD_LOGIC; 
  signal EXP35_EXP_PT_1_834 : STD_LOGIC; 
  signal EXP35_EXP_PT_2_835 : STD_LOGIC; 
  signal EXP35_EXP_PT_3_836 : STD_LOGIC; 
  signal EXP35_EXP_PT_4_837 : STD_LOGIC; 
  signal EXP35_EXP_PT_5_838 : STD_LOGIC; 
  signal EXP36_EXP_tsimrenamed_net_Q_839 : STD_LOGIC; 
  signal EXP37_EXP_840 : STD_LOGIC; 
  signal EXP36_EXP_PT_0_841 : STD_LOGIC; 
  signal EXP36_EXP_PT_1_842 : STD_LOGIC; 
  signal EXP36_EXP_PT_2_843 : STD_LOGIC; 
  signal EXP36_EXP_PT_3_844 : STD_LOGIC; 
  signal EXP36_EXP_PT_4_845 : STD_LOGIC; 
  signal EXP36_EXP_PT_5_846 : STD_LOGIC; 
  signal EXP37_EXP_tsimrenamed_net_Q_847 : STD_LOGIC; 
  signal EXP37_EXP_PT_0_848 : STD_LOGIC; 
  signal EXP37_EXP_PT_1_849 : STD_LOGIC; 
  signal EXP37_EXP_PT_2_850 : STD_LOGIC; 
  signal EXP37_EXP_PT_3_851 : STD_LOGIC; 
  signal EXP37_EXP_PT_4_852 : STD_LOGIC; 
  signal EXP38_EXP_tsimrenamed_net_Q_853 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CE_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_nreset_x_CE_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CE_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_pci_int_ena_x_CE_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_xx_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_0_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_1_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_3_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_TRST_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_TRST_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_1_TRST_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_TRST_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_TRST_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_2_TRST_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_TRST_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_TRST_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_3_TRST_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_TRST_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_TRST_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_z_ada_x_0_TRST_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_1_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_2_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_3_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DATA_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_DAOUT_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIENA_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_I_CFLT_OBUF_D2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_SETF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cycend_x_SETF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_ncfg_x_CLKF_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_cbe_p_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_dat_p_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_REG_IN : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_REG_CLK : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_p_par_ena_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PCIDL_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_0_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_PLA_1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_TRST_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_TRST_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT6_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT6_OBUF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_519_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_FX_DC_1244_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_INV_509_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_D2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_PT_5_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_PT_5_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_0_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_1_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_2_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_3_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN8 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN9 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN10 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN11 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN12 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN13 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN14 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_PT_4_IN15 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nframe_x_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_p_nreset_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p_nreset_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_nreset_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p_nreset_x_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_nreset_x_CE_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_0_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_1_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_2_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_CLKF_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_pci_int_ena_x_CE_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_3_CE_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_0_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_1_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_3_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_1_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_1_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_2_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_3_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_x_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_x_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_x_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_z_ada_x_0_TRST_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_1_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_1_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_1_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_2_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_2_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_2_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_3_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_3_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_DAOUT_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_I_CFLT_OBUF_D2_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_cycend_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_ncfg_x_CLKF_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbe_p_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_p_par_ena_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_D2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_I_PLA_0_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PLA_0_OBUF_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_I_PLA_0_OBUF_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PLA_1_OBUF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_I_PLA_1_OBUF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_FX_DC_519_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP14_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP14_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP15_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP16_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_0_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP17_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP18_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP19_EXP_PT_5_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP20_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP21_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP22_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP23_EXP_PT_5_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_0_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP25_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_1_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP26_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_2_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP27_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_3_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP28_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_0_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_1_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_2_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP29_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_4_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP30_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_3_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_4_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP31_EXP_PT_4_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_1_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_1_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_2_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_5_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP32_EXP_PT_5_IN7 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_0_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_0_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_0_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_2_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_3_IN3 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP33_EXP_PT_4_IN4 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_0_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_3_IN8 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP34_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP35_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_1_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_1_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_2_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_2_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_3_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_3_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_3_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_4_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_4_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_5_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_5_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_5_IN2 : STD_LOGIC; 
  signal NlwInverterSignal_EXP36_EXP_PT_5_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_0_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_0_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_1_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_1_IN6 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_2_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_2_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_2_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_3_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_3_IN5 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_3_IN9 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_4_IN0 : STD_LOGIC; 
  signal NlwInverterSignal_EXP37_EXP_PT_4_IN1 : STD_LOGIC; 
  signal NlwInverterSignal_EXP38_EXP_tsimrenamed_net_IN2 : STD_LOGIC; 
  signal cbp_x : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal z_ada_x : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal THE_PCI_SEQ_CURRENT_STATE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal THE_PCI_ARB_toc_x : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal THE_PCI_ARB_CURRENT_STATE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal THE_PCI_SEQ_toc_ctr_x : STD_LOGIC_VECTOR ( 1 downto 0 ); 
begin
  Z_NSLAVE_IBUF : X_BUF
    port map (
      I => Z_NSLAVE,
      O => Z_NSLAVE_IBUF_1
    );
  N3 : X_BUF
    port map (
      I => Z_ADA(31),
      O => N3_3
    );
  Z_NIORST_IBUF : X_BUF
    port map (
      I => Z_NIORST,
      O => Z_NIORST_IBUF_5
    );
  FSR_IO_0 : X_INV
    port map (
      I => Z_NIORST,
      O => FSR_IO_0_6
    );
  Z_NDS_3_IBUF : X_BUF
    port map (
      I => Z_NDS(3),
      O => Z_NDS_3_IBUF_8
    );
  Z_READ_IBUF : X_BUF
    port map (
      I => Z_READ,
      O => Z_READ_IBUF_10
    );
  Z_DOE_IBUF : X_BUF
    port map (
      I => Z_DOE,
      O => Z_DOE_IBUF_12
    );
  I_ACC_0_IBUF : X_BUF
    port map (
      I => I_ACC(0),
      O => I_ACC_0_IBUF_14
    );
  I_ACC_1_IBUF : X_BUF
    port map (
      I => I_ACC(1),
      O => I_ACC_1_IBUF_16
    );
  I_ZMA_IBUF : X_BUF
    port map (
      I => I_ZMA,
      O => I_ZMA_IBUF_18
    );
  I_PCICLK2_IBUF_FCLK : X_BUF
    port map (
      I => I_PCICLK2,
      O => I_PCICLK2_IBUF_FCLK_20
    );
  I_PCICLK2_IBUF_FCLK_Q : X_INV
    port map (
      I => I_PCICLK2,
      O => I_PCICLK2_IBUF_FCLK_Q_21
    );
  N2 : X_BUF
    port map (
      I => Z_ADA(30),
      O => N2_23
    );
  Z_NDS_2_IBUF : X_BUF
    port map (
      I => Z_NDS(2),
      O => Z_NDS_2_IBUF_25
    );
  Z_NDS_1_IBUF : X_BUF
    port map (
      I => Z_NDS(1),
      O => Z_NDS_1_IBUF_27
    );
  Z_NDS_0_IBUF : X_BUF
    port map (
      I => Z_NDS(0),
      O => Z_NDS_0_IBUF_29
    );
  P_NINTD_IBUF : X_BUF
    port map (
      I => P_NINTD,
      O => P_NINTD_IBUF_31
    );
  P_NINTC_IBUF : X_BUF
    port map (
      I => P_NINTC,
      O => P_NINTC_IBUF_33
    );
  P_NINTB_IBUF : X_BUF
    port map (
      I => P_NINTB,
      O => P_NINTB_IBUF_35
    );
  P_NINTA_IBUF : X_BUF
    port map (
      I => P_NINTA,
      O => P_NINTA_IBUF_37
    );
  P_NREQ_0_IBUF : X_BUF
    port map (
      I => P_NREQ(0),
      O => P_NREQ_0_IBUF_39
    );
  P_NTRDY_IBUF : X_BUF
    port map (
      I => P_NTRDY,
      O => P_NTRDY_IBUF_41
    );
  P_NSTOP_IBUF : X_BUF
    port map (
      I => P_NSTOP,
      O => P_NSTOP_IBUF_43
    );
  Z_AA_6_IBUF : X_BUF
    port map (
      I => Z_AA(6),
      O => Z_AA_6_IBUF_45
    );
  P_NREQ_2_IBUF : X_BUF
    port map (
      I => P_NREQ(2),
      O => P_NREQ_2_IBUF_47
    );
  P_NREQ_3_IBUF : X_BUF
    port map (
      I => P_NREQ(3),
      O => P_NREQ_3_IBUF_49
    );
  Z_AA_5_IBUF : X_BUF
    port map (
      I => Z_AA(5),
      O => Z_AA_5_IBUF_51
    );
  Z_AA_4_IBUF : X_BUF
    port map (
      I => Z_AA(4),
      O => Z_AA_4_IBUF_53
    );
  Z_AA_3_IBUF : X_BUF
    port map (
      I => Z_AA(3),
      O => Z_AA_3_IBUF_55
    );
  Z_NFCS_IBUF : X_BUF
    port map (
      I => Z_NFCS,
      O => Z_NFCS_IBUF_57
    );
  Z_NFCS_IBUF_FCLK : X_BUF
    port map (
      I => Z_NFCS,
      O => Z_NFCS_IBUF_FCLK_58
    );
  Z_NBERR_IBUF : X_BUF
    port map (
      I => Z_NBERR,
      O => Z_NBERR_IBUF_60
    );
  Z_AA_2_IBUF : X_BUF
    port map (
      I => Z_AA(2),
      O => Z_AA_2_IBUF_62
    );
  I_ZLA_IBUF : X_BUF
    port map (
      I => I_ZLA,
      O => I_ZLA_IBUF_64
    );
  P_NREQ_1_IBUF : X_BUF
    port map (
      I => P_NREQ(1),
      O => P_NREQ_1_IBUF_66
    );
  N01 : X_BUF
    port map (
      I => P_NFRAME,
      O => N01_68
    );
  N1 : X_BUF
    port map (
      I => P_NIRDY,
      O => N1_70
    );
  Z_AA_7_IBUF : X_BUF
    port map (
      I => Z_AA(7),
      O => Z_AA_7_IBUF_72
    );
  P_NDEVSEL_IBUF : X_BUF
    port map (
      I => P_NDEVSEL,
      O => P_NDEVSEL_IBUF_74
    );
  N7 : X_BUF
    port map (
      I => P_CBE(0),
      O => N7_76
    );
  N6 : X_BUF
    port map (
      I => P_CBE(1),
      O => N6_78
    );
  N5 : X_BUF
    port map (
      I => P_CBE(2),
      O => N5_80
    );
  N4 : X_BUF
    port map (
      I => P_CBE(3),
      O => N4_82
    );
  I_DATPAR_0_IBUF : X_BUF
    port map (
      I => I_DATPAR(0),
      O => I_DATPAR_0_IBUF_84
    );
  I_DATPAR_1_IBUF : X_BUF
    port map (
      I => I_DATPAR(1),
      O => I_DATPAR_1_IBUF_86
    );
  I_33M_IBUF : X_BUF
    port map (
      I => I_33M,
      O => I_33M_IBUF_88
    );
  P_NFRAME_83 : X_TRI
    port map (
      I => THE_PCI_SEQ_nframe_x_89,
      CTL => THE_PCI_SEQ_nframe_x_OE_90,
      O => P_NFRAME
    );
  P_NRESET_85 : X_BUF
    port map (
      I => p_nreset_x_Q_92,
      O => P_NRESET
    );
  P_NIRDY_87 : X_TRI
    port map (
      I => THE_PCI_SEQ_nirdy_x_Q_93,
      CTL => THE_PCI_SEQ_nirdy_x_OE_94,
      O => P_NIRDY
    );
  Z_NCFGOUT_89 : X_BUF
    port map (
      I => ncfg_xx_Q_96,
      O => Z_NCFGOUT
    );
  P_CBE_0_Q : X_TRI
    port map (
      I => cbp_x(0),
      CTL => cbp_x_0_OE_98,
      O => P_CBE(0)
    );
  P_CBE_1_Q : X_TRI
    port map (
      I => cbp_x(1),
      CTL => cbp_x_1_OE_100,
      O => P_CBE(1)
    );
  P_CBE_2_Q : X_TRI
    port map (
      I => cbp_x(2),
      CTL => cbp_x_2_OE_102,
      O => P_CBE(2)
    );
  P_CBE_3_Q : X_TRI
    port map (
      I => cbp_x(3),
      CTL => cbp_x_3_OE_104,
      O => P_CBE(3)
    );
  Z_ADA_29_Q : X_TRI
    port map (
      I => z_ada_x(1),
      CTL => z_ada_x_1_OE_107,
      O => Z_ADA(29)
    );
  Z_ADA_30_Q : X_TRI
    port map (
      I => z_ada_x(2),
      CTL => z_ada_x_2_OE_109,
      O => Z_ADA(30)
    );
  Z_ADA_31_Q : X_TRI
    port map (
      I => z_ada_x(3),
      CTL => z_ada_x_3_OE_111,
      O => Z_ADA(31)
    );
  P_PAR_105 : X_TRI
    port map (
      I => p_par_x_113,
      CTL => p_par_x_OE_114,
      O => P_PAR
    );
  Z_ADA_28_Q : X_TRI
    port map (
      I => z_ada_x(0),
      CTL => z_ada_x_0_OE_117,
      O => Z_ADA(28)
    );
  P_NGNT_1_Q : X_BUF
    port map (
      I => P_NGNT_1_OBUF_119,
      O => P_NGNT(1)
    );
  P_NGNT_2_Q : X_BUF
    port map (
      I => P_NGNT_2_OBUF_121,
      O => P_NGNT(2)
    );
  P_NGNT_3_Q : X_BUF
    port map (
      I => P_NGNT_3_OBUF_123,
      O => P_NGNT(3)
    );
  I_DATA_115 : X_BUF
    port map (
      I => I_DATA_OBUF_125,
      O => I_DATA
    );
  I_DAOUT_117 : X_BUF
    port map (
      I => I_DAOUT_OBUF_Q_127,
      O => I_DAOUT
    );
  I_PCIENA_119 : X_BUF
    port map (
      I => I_PCIENA_OBUF_Q_129,
      O => I_PCIENA
    );
  I_CFLT_121 : X_BUF
    port map (
      I => I_CFLT_OBUF_Q_131,
      O => I_CFLT
    );
  I_NINT2_123 : X_BUF
    port map (
      I => I_NINT2_OBUF_133,
      O => I_NINT2
    );
  P_NGNT_0_Q : X_BUF
    port map (
      I => P_NGNT_0_OBUF_135,
      O => P_NGNT(0)
    );
  I_PCIDL_127 : X_BUF
    port map (
      I => I_PCIDL_OBUF_137,
      O => I_PCIDL
    );
  I_PLA_0_Q : X_BUF
    port map (
      I => I_PLA_0_OBUF_139,
      O => I_PLA(0)
    );
  I_PLA_1_Q : X_BUF
    port map (
      I => I_PLA_1_OBUF_141,
      O => I_PLA(1)
    );
  Z_NDTACK_133 : X_TRI
    port map (
      I => N0_Q_143,
      CTL => N0_OE_144,
      O => Z_NDTACK
    );
  P_CLKOUT_3_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_Q_146,
      O => P_CLKOUT(3)
    );
  P_CLKOUT_2_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF0_148,
      O => P_CLKOUT(2)
    );
  P_CLKOUT_1_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF1_150,
      O => P_CLKOUT(1)
    );
  P_CLKOUT_0_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF2_152,
      O => P_CLKOUT(0)
    );
  I_PCICLK_143 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_154,
      O => I_PCICLK
    );
  P_NLOCK_145 : X_BUF
    port map (
      I => I_NINT6_OBUF_Q_156,
      O => P_NLOCK
    );
  I_NINT6_147 : X_BUF
    port map (
      I => I_NINT6_OBUF_BUF0_158,
      O => I_NINT6
    );
  THE_PCI_SEQ_nframe_x : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_Q_159,
      O => THE_PCI_SEQ_nframe_x_89
    );
  THE_PCI_SEQ_nframe_x_OE : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_BUFOE_OUT_160,
      O => THE_PCI_SEQ_nframe_x_OE_90
    );
  THE_PCI_SEQ_nframe_x_BUFOE_OUT : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_TRST_161,
      O => THE_PCI_SEQ_nframe_x_BUFOE_OUT_160
    );
  THE_PCI_SEQ_nframe_x_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_D_162,
      O => THE_PCI_SEQ_nframe_x_Q_159
    );
  THE_PCI_SEQ_nframe_x_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN1,
      O => THE_PCI_SEQ_nframe_x_D_162
    );
  THE_PCI_SEQ_nframe_x_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_nframe_x_D1_163
    );
  THE_PCI_SEQ_nframe_x_D2 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN3,
      O => THE_PCI_SEQ_nframe_x_D2_164
    );
  THE_PCI_SEQ_nframe_x_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN1,
      O => THE_PCI_SEQ_nframe_x_TRST_161
    );
  p_nreset_x_Q : X_BUF
    port map (
      I => p_nreset_x_Q_170,
      O => p_nreset_x_Q_92
    );
  p_nreset_x : X_BUF
    port map (
      I => p_nreset_x_Q_170,
      O => p_nreset_x_171
    );
  p_nreset_x_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p_nreset_x_REG_IN,
      CE => p_nreset_x_CE_175,
      CLK => NlwBufferSignal_p_nreset_x_REG_CLK,
      SET => FSR_IO_0_6,
      RST => Gnd_174,
      O => p_nreset_x_Q_170
    );
  Gnd : X_ZERO
    port map (
      O => Gnd_174
    );
  p_nreset_x_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p_nreset_x_D_IN0,
      I1 => NlwBufferSignal_p_nreset_x_D_IN1,
      O => p_nreset_x_D_172
    );
  p_nreset_x_D1 : X_ZERO
    port map (
      O => p_nreset_x_D1_176
    );
  p_nreset_x_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_p_nreset_x_D2_IN0,
      I1 => NlwBufferSignal_p_nreset_x_D2_IN1,
      O => p_nreset_x_D2_177
    );
  p_nreset_x_CLKF : X_AND4
    port map (
      I0 => NlwInverterSignal_p_nreset_x_CLKF_IN0,
      I1 => NlwInverterSignal_p_nreset_x_CLKF_IN1,
      I2 => NlwInverterSignal_p_nreset_x_CLKF_IN2,
      I3 => NlwBufferSignal_p_nreset_x_CLKF_IN3,
      O => p_nreset_x_CLKF_173
    );
  p_nreset_x_CE : X_AND4
    port map (
      I0 => NlwBufferSignal_p_nreset_x_CE_IN0,
      I1 => NlwInverterSignal_p_nreset_x_CE_IN1,
      I2 => NlwBufferSignal_p_nreset_x_CE_IN2,
      I3 => NlwInverterSignal_p_nreset_x_CE_IN3,
      O => p_nreset_x_CE_175
    );
  THE_PCI_ARB_toc_x_0_Q : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_Q_179,
      O => THE_PCI_ARB_toc_x(0)
    );
  THE_PCI_ARB_toc_x_0_EXP : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_Q_181,
      O => THE_PCI_ARB_toc_x_0_EXP_182
    );
  THE_PCI_ARB_toc_x_0_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN1,
      O => THE_PCI_ARB_toc_x_0_tsimcreated_xor_Q_184
    );
  THE_PCI_ARB_toc_x_0_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_toc_x_0_tsimcreated_prld_Q_186
    );
  THE_PCI_ARB_toc_x_0_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_IN,
      CE => THE_PCI_ARB_toc_x_0_CE_187,
      CLK => NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_toc_x_0_tsimcreated_prld_Q_186,
      O => THE_PCI_ARB_toc_x_0_Q_179
    );
  THE_PCI_ARB_toc_x_0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN1,
      O => THE_PCI_ARB_toc_x_0_D_183
    );
  THE_PCI_ARB_toc_x_0_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_toc_x_0_D1_188
    );
  THE_PCI_ARB_toc_x_0_D2 : X_ONE
    port map (
      O => THE_PCI_ARB_toc_x_0_D2_189
    );
  THE_PCI_ARB_toc_x_0_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN1,
      O => THE_PCI_ARB_toc_x_0_RSTF_185
    );
  THE_PCI_ARB_toc_x_0_EXP_PT_0 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN2,
      I3 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3,
      O => THE_PCI_ARB_toc_x_0_EXP_PT_0_191
    );
  THE_PCI_ARB_toc_x_0_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN3,
      O => THE_PCI_ARB_toc_x_0_EXP_PT_1_192
    );
  THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN1,
      O => THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_Q_181
    );
  THE_PCI_ARB_toc_x_0_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_0_CE_IN1,
      O => THE_PCI_ARB_toc_x_0_CE_187
    );
  THE_PCI_ARB_toc_x_1_Q : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_Q_195,
      O => THE_PCI_ARB_toc_x(1)
    );
  THE_PCI_ARB_toc_x_1_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN1,
      O => THE_PCI_ARB_toc_x_1_tsimcreated_xor_Q_198
    );
  THE_PCI_ARB_toc_x_1_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_toc_x_1_tsimcreated_prld_Q_200
    );
  THE_PCI_ARB_toc_x_1_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_IN,
      CE => THE_PCI_ARB_toc_x_1_CE_201,
      CLK => NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_toc_x_1_tsimcreated_prld_Q_200,
      O => THE_PCI_ARB_toc_x_1_Q_195
    );
  THE_PCI_ARB_toc_x_1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN1,
      O => THE_PCI_ARB_toc_x_1_D_197
    );
  THE_PCI_ARB_toc_x_1_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_toc_x_1_D1_202
    );
  THE_PCI_ARB_toc_x_1_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN1,
      O => THE_PCI_ARB_toc_x_1_D2_203
    );
  THE_PCI_ARB_toc_x_1_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN1,
      O => THE_PCI_ARB_toc_x_1_RSTF_199
    );
  THE_PCI_ARB_toc_x_1_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_1_CE_IN1,
      O => THE_PCI_ARB_toc_x_1_CE_201
    );
  THE_PCI_ARB_toc_x_2_Q : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_Q_204,
      O => THE_PCI_ARB_toc_x(2)
    );
  THE_PCI_ARB_toc_x_2_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN1,
      O => THE_PCI_ARB_toc_x_2_tsimcreated_xor_Q_207
    );
  THE_PCI_ARB_toc_x_2_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_toc_x_2_tsimcreated_prld_Q_209
    );
  THE_PCI_ARB_toc_x_2_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_IN,
      CE => THE_PCI_ARB_toc_x_2_CE_210,
      CLK => NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_toc_x_2_tsimcreated_prld_Q_209,
      O => THE_PCI_ARB_toc_x_2_Q_204
    );
  THE_PCI_ARB_toc_x_2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN1,
      O => THE_PCI_ARB_toc_x_2_D_206
    );
  THE_PCI_ARB_toc_x_2_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_toc_x_2_D1_211
    );
  THE_PCI_ARB_toc_x_2_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN1,
      O => THE_PCI_ARB_toc_x_2_D2_212
    );
  THE_PCI_ARB_toc_x_2_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN1,
      O => THE_PCI_ARB_toc_x_2_RSTF_208
    );
  THE_PCI_ARB_toc_x_2_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_2_CE_IN1,
      O => THE_PCI_ARB_toc_x_2_CE_210
    );
  pci_int_ena_x : X_BUF
    port map (
      I => pci_int_ena_x_Q,
      O => pci_int_ena_x_214
    );
  pci_int_ena_x_EXP : X_BUF
    port map (
      I => pci_int_ena_x_EXP_tsimrenamed_net_Q_215,
      O => pci_int_ena_x_EXP_216
    );
  pci_int_ena_x_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN1,
      O => pci_int_ena_x_tsimcreated_prld_Q_217
    );
  pci_int_ena_x_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_pci_int_ena_x_REG_IN,
      CE => pci_int_ena_x_CE_220,
      CLK => NlwBufferSignal_pci_int_ena_x_REG_CLK,
      SET => Gnd_174,
      RST => pci_int_ena_x_tsimcreated_prld_Q_217,
      O => pci_int_ena_x_Q
    );
  pci_int_ena_x_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_pci_int_ena_x_D_IN0,
      I1 => NlwBufferSignal_pci_int_ena_x_D_IN1,
      O => pci_int_ena_x_D_218
    );
  pci_int_ena_x_D1 : X_ZERO
    port map (
      O => pci_int_ena_x_D1_221
    );
  pci_int_ena_x_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_pci_int_ena_x_D2_IN0,
      I1 => NlwBufferSignal_pci_int_ena_x_D2_IN1,
      O => pci_int_ena_x_D2_222
    );
  pci_int_ena_x_CLKF : X_AND4
    port map (
      I0 => NlwInverterSignal_pci_int_ena_x_CLKF_IN0,
      I1 => NlwInverterSignal_pci_int_ena_x_CLKF_IN1,
      I2 => NlwInverterSignal_pci_int_ena_x_CLKF_IN2,
      I3 => NlwBufferSignal_pci_int_ena_x_CLKF_IN3,
      O => pci_int_ena_x_CLKF_219
    );
  pci_int_ena_x_EXP_tsimrenamed_net_Q : X_AND4
    port map (
      I0 => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN1,
      I2 => NlwInverterSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN3,
      O => pci_int_ena_x_EXP_tsimrenamed_net_Q_215
    );
  pci_int_ena_x_CE : X_AND4
    port map (
      I0 => NlwBufferSignal_pci_int_ena_x_CE_IN0,
      I1 => NlwInverterSignal_pci_int_ena_x_CE_IN1,
      I2 => NlwBufferSignal_pci_int_ena_x_CE_IN2,
      I3 => NlwInverterSignal_pci_int_ena_x_CE_IN3,
      O => pci_int_ena_x_CE_220
    );
  THE_PCI_ARB_toc_x_3_Q : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_Q_223,
      O => THE_PCI_ARB_toc_x(3)
    );
  THE_PCI_ARB_toc_x_3_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN1,
      O => THE_PCI_ARB_toc_x_3_tsimcreated_xor_Q_226
    );
  THE_PCI_ARB_toc_x_3_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_toc_x_3_tsimcreated_prld_Q_228
    );
  THE_PCI_ARB_toc_x_3_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_IN,
      CE => THE_PCI_ARB_toc_x_3_CE_229,
      CLK => NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_toc_x_3_tsimcreated_prld_Q_228,
      O => THE_PCI_ARB_toc_x_3_Q_223
    );
  THE_PCI_ARB_toc_x_3_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN1,
      O => THE_PCI_ARB_toc_x_3_D_225
    );
  THE_PCI_ARB_toc_x_3_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_toc_x_3_D1_230
    );
  THE_PCI_ARB_toc_x_3_D2 : X_AND3
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN2,
      O => THE_PCI_ARB_toc_x_3_D2_231
    );
  THE_PCI_ARB_toc_x_3_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN1,
      O => THE_PCI_ARB_toc_x_3_RSTF_227
    );
  THE_PCI_ARB_toc_x_3_CE : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_3_CE_IN1,
      O => THE_PCI_ARB_toc_x_3_CE_229
    );
  THE_PCI_SEQ_nirdy_x_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_Q_232,
      O => THE_PCI_SEQ_nirdy_x_Q_93
    );
  THE_PCI_SEQ_nirdy_x_EXP : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_Q_233,
      O => THE_PCI_SEQ_nirdy_x_EXP_234
    );
  THE_PCI_SEQ_nirdy_x_OE : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_BUFOE_OUT_235,
      O => THE_PCI_SEQ_nirdy_x_OE_94
    );
  THE_PCI_SEQ_nirdy_x_BUFOE_OUT : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_TRST_236,
      O => THE_PCI_SEQ_nirdy_x_BUFOE_OUT_235
    );
  THE_PCI_SEQ_nirdy_x_Q_219 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_D_237,
      O => THE_PCI_SEQ_nirdy_x_Q_232
    );
  THE_PCI_SEQ_nirdy_x_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN1,
      O => THE_PCI_SEQ_nirdy_x_D_237
    );
  THE_PCI_SEQ_nirdy_x_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_nirdy_x_D1_238
    );
  THE_PCI_SEQ_nirdy_x_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3,
      O => THE_PCI_SEQ_nirdy_x_D2_PT_0_240
    );
  THE_PCI_SEQ_nirdy_x_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3,
      O => THE_PCI_SEQ_nirdy_x_D2_PT_1_241
    );
  THE_PCI_SEQ_nirdy_x_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN1,
      O => THE_PCI_SEQ_nirdy_x_D2_239
    );
  THE_PCI_SEQ_nirdy_x_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN1,
      O => THE_PCI_SEQ_nirdy_x_TRST_236
    );
  THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_Q : X_AND5
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN4,
      O => THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_Q_233
    );
  ncfg_xx_Q : X_BUF
    port map (
      I => ncfg_xx_Q_242,
      O => ncfg_xx_Q_96
    );
  ncfg_xx : X_BUF
    port map (
      I => ncfg_xx_Q_242,
      O => ncfg_xx_178
    );
  ncfg_xx_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ncfg_xx_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_ncfg_xx_REG_CLK,
      SET => FSR_IO_0_6,
      RST => Gnd_174,
      O => ncfg_xx_Q_242
    );
  Vcc : X_ONE
    port map (
      O => Vcc_244
    );
  ncfg_xx_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ncfg_xx_D_IN0,
      I1 => NlwBufferSignal_ncfg_xx_D_IN1,
      O => ncfg_xx_D_243
    );
  ncfg_xx_D1 : X_ZERO
    port map (
      O => ncfg_xx_D1_245
    );
  ncfg_xx_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_ncfg_xx_D2_IN0,
      I1 => NlwBufferSignal_ncfg_xx_D2_IN1,
      O => ncfg_xx_D2_246
    );
  cbp_x_0_Q : X_BUF
    port map (
      I => cbp_x_0_Q_248,
      O => cbp_x(0)
    );
  cbp_x_0_OE : X_BUF
    port map (
      I => cbp_x_0_BUFOE_OUT_249,
      O => cbp_x_0_OE_98
    );
  cbp_x_0_BUFOE_OUT : X_BUF
    port map (
      I => cbp_x_0_TRST_250,
      O => cbp_x_0_BUFOE_OUT_249
    );
  cbp_x_0_Q_237 : X_BUF
    port map (
      I => cbp_x_0_D_251,
      O => cbp_x_0_Q_248
    );
  cbp_x_0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D_IN0,
      I1 => NlwBufferSignal_cbp_x_0_D_IN1,
      O => cbp_x_0_D_251
    );
  cbp_x_0_D1 : X_ZERO
    port map (
      O => cbp_x_0_D1_252
    );
  cbp_x_0_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D2_PT_0_IN0,
      I1 => NlwBufferSignal_cbp_x_0_D2_PT_0_IN1,
      O => cbp_x_0_D2_PT_0_254
    );
  cbp_x_0_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D2_PT_1_IN0,
      I1 => NlwBufferSignal_cbp_x_0_D2_PT_1_IN1,
      O => cbp_x_0_D2_PT_1_256
    );
  cbp_x_0_D2_PT_2 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D2_PT_2_IN0,
      I1 => NlwInverterSignal_cbp_x_0_D2_PT_2_IN1,
      O => cbp_x_0_D2_PT_2_257
    );
  cbp_x_0_D2_PT_3 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D2_PT_3_IN0,
      I1 => NlwInverterSignal_cbp_x_0_D2_PT_3_IN1,
      I2 => NlwInverterSignal_cbp_x_0_D2_PT_3_IN2,
      O => cbp_x_0_D2_PT_3_258
    );
  cbp_x_0_D2_PT_4 : X_AND3
    port map (
      I0 => NlwInverterSignal_cbp_x_0_D2_PT_4_IN0,
      I1 => NlwBufferSignal_cbp_x_0_D2_PT_4_IN1,
      I2 => NlwInverterSignal_cbp_x_0_D2_PT_4_IN2,
      O => cbp_x_0_D2_PT_4_259
    );
  cbp_x_0_D2_PT_5 : X_AND3
    port map (
      I0 => NlwInverterSignal_cbp_x_0_D2_PT_5_IN0,
      I1 => NlwInverterSignal_cbp_x_0_D2_PT_5_IN1,
      I2 => NlwInverterSignal_cbp_x_0_D2_PT_5_IN2,
      O => cbp_x_0_D2_PT_5_260
    );
  cbp_x_0_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_cbp_x_0_D2_IN0,
      I1 => NlwBufferSignal_cbp_x_0_D2_IN1,
      I2 => NlwBufferSignal_cbp_x_0_D2_IN2,
      I3 => NlwBufferSignal_cbp_x_0_D2_IN3,
      I4 => NlwBufferSignal_cbp_x_0_D2_IN4,
      I5 => NlwBufferSignal_cbp_x_0_D2_IN5,
      O => cbp_x_0_D2_253
    );
  cbp_x_0_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_0_TRST_IN0,
      I1 => NlwBufferSignal_cbp_x_0_TRST_IN1,
      O => cbp_x_0_TRST_250
    );
  cbp_x_1_Q : X_BUF
    port map (
      I => cbp_x_1_Q_262,
      O => cbp_x(1)
    );
  cbp_x_1_OE : X_BUF
    port map (
      I => cbp_x_1_BUFOE_OUT_263,
      O => cbp_x_1_OE_100
    );
  cbp_x_1_BUFOE_OUT : X_BUF
    port map (
      I => cbp_x_1_TRST_264,
      O => cbp_x_1_BUFOE_OUT_263
    );
  cbp_x_1_Q_251 : X_BUF
    port map (
      I => cbp_x_1_D_265,
      O => cbp_x_1_Q_262
    );
  cbp_x_1_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_cbp_x_1_D_IN0,
      I1 => NlwBufferSignal_cbp_x_1_D_IN1,
      O => cbp_x_1_D_265
    );
  cbp_x_1_D1 : X_ZERO
    port map (
      O => cbp_x_1_D1_266
    );
  cbp_x_1_D2_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_cbp_x_1_D2_PT_0_IN0,
      I1 => NlwBufferSignal_cbp_x_1_D2_PT_0_IN1,
      I2 => NlwInverterSignal_cbp_x_1_D2_PT_0_IN2,
      I3 => NlwInverterSignal_cbp_x_1_D2_PT_0_IN3,
      O => cbp_x_1_D2_PT_0_268
    );
  cbp_x_1_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_cbp_x_1_D2_PT_1_IN0,
      I1 => NlwInverterSignal_cbp_x_1_D2_PT_1_IN1,
      I2 => NlwBufferSignal_cbp_x_1_D2_PT_1_IN2,
      I3 => NlwInverterSignal_cbp_x_1_D2_PT_1_IN3,
      I4 => NlwInverterSignal_cbp_x_1_D2_PT_1_IN4,
      O => cbp_x_1_D2_PT_1_269
    );
  cbp_x_1_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_cbp_x_1_D2_IN0,
      I1 => NlwBufferSignal_cbp_x_1_D2_IN1,
      O => cbp_x_1_D2_267
    );
  cbp_x_1_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_1_TRST_IN0,
      I1 => NlwBufferSignal_cbp_x_1_TRST_IN1,
      O => cbp_x_1_TRST_264
    );
  cbp_x_2_Q : X_BUF
    port map (
      I => cbp_x_2_Q_270,
      O => cbp_x(2)
    );
  cbp_x_2_OE : X_BUF
    port map (
      I => cbp_x_2_BUFOE_OUT_271,
      O => cbp_x_2_OE_102
    );
  cbp_x_2_BUFOE_OUT : X_BUF
    port map (
      I => cbp_x_2_TRST_272,
      O => cbp_x_2_BUFOE_OUT_271
    );
  cbp_x_2_Q_261 : X_BUF
    port map (
      I => cbp_x_2_D_273,
      O => cbp_x_2_Q_270
    );
  cbp_x_2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D_IN0,
      I1 => NlwBufferSignal_cbp_x_2_D_IN1,
      O => cbp_x_2_D_273
    );
  cbp_x_2_D1 : X_ZERO
    port map (
      O => cbp_x_2_D1_274
    );
  cbp_x_2_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D2_PT_0_IN0,
      I1 => NlwBufferSignal_cbp_x_2_D2_PT_0_IN1,
      O => cbp_x_2_D2_PT_0_276
    );
  cbp_x_2_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D2_PT_1_IN0,
      I1 => NlwBufferSignal_cbp_x_2_D2_PT_1_IN1,
      O => cbp_x_2_D2_PT_1_278
    );
  cbp_x_2_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D2_PT_2_IN0,
      I1 => NlwInverterSignal_cbp_x_2_D2_PT_2_IN1,
      I2 => NlwInverterSignal_cbp_x_2_D2_PT_2_IN2,
      O => cbp_x_2_D2_PT_2_279
    );
  cbp_x_2_D2_PT_3 : X_AND4
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D2_PT_3_IN0,
      I1 => NlwInverterSignal_cbp_x_2_D2_PT_3_IN1,
      I2 => NlwInverterSignal_cbp_x_2_D2_PT_3_IN2,
      I3 => NlwInverterSignal_cbp_x_2_D2_PT_3_IN3,
      O => cbp_x_2_D2_PT_3_280
    );
  cbp_x_2_D2_PT_4 : X_AND4
    port map (
      I0 => NlwInverterSignal_cbp_x_2_D2_PT_4_IN0,
      I1 => NlwBufferSignal_cbp_x_2_D2_PT_4_IN1,
      I2 => NlwInverterSignal_cbp_x_2_D2_PT_4_IN2,
      I3 => NlwInverterSignal_cbp_x_2_D2_PT_4_IN3,
      O => cbp_x_2_D2_PT_4_281
    );
  cbp_x_2_D2_PT_5 : X_AND4
    port map (
      I0 => NlwInverterSignal_cbp_x_2_D2_PT_5_IN0,
      I1 => NlwInverterSignal_cbp_x_2_D2_PT_5_IN1,
      I2 => NlwInverterSignal_cbp_x_2_D2_PT_5_IN2,
      I3 => NlwInverterSignal_cbp_x_2_D2_PT_5_IN3,
      O => cbp_x_2_D2_PT_5_282
    );
  cbp_x_2_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_cbp_x_2_D2_IN0,
      I1 => NlwBufferSignal_cbp_x_2_D2_IN1,
      I2 => NlwBufferSignal_cbp_x_2_D2_IN2,
      I3 => NlwBufferSignal_cbp_x_2_D2_IN3,
      I4 => NlwBufferSignal_cbp_x_2_D2_IN4,
      I5 => NlwBufferSignal_cbp_x_2_D2_IN5,
      O => cbp_x_2_D2_275
    );
  cbp_x_2_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_2_TRST_IN0,
      I1 => NlwBufferSignal_cbp_x_2_TRST_IN1,
      O => cbp_x_2_TRST_272
    );
  cbp_x_3_Q : X_BUF
    port map (
      I => cbp_x_3_Q_283,
      O => cbp_x(3)
    );
  cbp_x_3_OE : X_BUF
    port map (
      I => cbp_x_3_BUFOE_OUT_284,
      O => cbp_x_3_OE_104
    );
  cbp_x_3_BUFOE_OUT : X_BUF
    port map (
      I => cbp_x_3_TRST_285,
      O => cbp_x_3_BUFOE_OUT_284
    );
  cbp_x_3_Q_275 : X_BUF
    port map (
      I => cbp_x_3_D_286,
      O => cbp_x_3_Q_283
    );
  cbp_x_3_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D_IN1,
      O => cbp_x_3_D_286
    );
  cbp_x_3_D1 : X_ZERO
    port map (
      O => cbp_x_3_D1_287
    );
  cbp_x_3_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_PT_0_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D2_PT_0_IN1,
      O => cbp_x_3_D2_PT_0_289
    );
  cbp_x_3_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_PT_1_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D2_PT_1_IN1,
      O => cbp_x_3_D2_PT_1_291
    );
  cbp_x_3_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_PT_2_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D2_PT_2_IN1,
      I2 => NlwInverterSignal_cbp_x_3_D2_PT_2_IN2,
      O => cbp_x_3_D2_PT_2_292
    );
  cbp_x_3_D2_PT_3 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_PT_3_IN0,
      I1 => NlwInverterSignal_cbp_x_3_D2_PT_3_IN1,
      I2 => NlwBufferSignal_cbp_x_3_D2_PT_3_IN2,
      O => cbp_x_3_D2_PT_3_293
    );
  cbp_x_3_D2_PT_4 : X_AND4
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_PT_4_IN0,
      I1 => NlwInverterSignal_cbp_x_3_D2_PT_4_IN1,
      I2 => NlwInverterSignal_cbp_x_3_D2_PT_4_IN2,
      I3 => NlwBufferSignal_cbp_x_3_D2_PT_4_IN3,
      O => cbp_x_3_D2_PT_4_294
    );
  cbp_x_3_D2_PT_5 : X_AND4
    port map (
      I0 => NlwInverterSignal_cbp_x_3_D2_PT_5_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D2_PT_5_IN1,
      I2 => NlwInverterSignal_cbp_x_3_D2_PT_5_IN2,
      I3 => NlwBufferSignal_cbp_x_3_D2_PT_5_IN3,
      O => cbp_x_3_D2_PT_5_295
    );
  cbp_x_3_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_cbp_x_3_D2_IN0,
      I1 => NlwBufferSignal_cbp_x_3_D2_IN1,
      I2 => NlwBufferSignal_cbp_x_3_D2_IN2,
      I3 => NlwBufferSignal_cbp_x_3_D2_IN3,
      I4 => NlwBufferSignal_cbp_x_3_D2_IN4,
      I5 => NlwBufferSignal_cbp_x_3_D2_IN5,
      O => cbp_x_3_D2_288
    );
  cbp_x_3_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_3_TRST_IN0,
      I1 => NlwBufferSignal_cbp_x_3_TRST_IN1,
      O => cbp_x_3_TRST_285
    );
  z_ada_x_1_Q : X_BUF
    port map (
      I => z_ada_x_1_Q_296,
      O => z_ada_x(1)
    );
  z_ada_x_1_OE : X_BUF
    port map (
      I => z_ada_x_1_BUFOE_OUT_297,
      O => z_ada_x_1_OE_107
    );
  z_ada_x_1_BUFOE_OUT : X_BUF
    port map (
      I => z_ada_x_1_TRST_298,
      O => z_ada_x_1_BUFOE_OUT_297
    );
  z_ada_x_1_Q_289 : X_BUF
    port map (
      I => z_ada_x_1_D_299,
      O => z_ada_x_1_Q_296
    );
  z_ada_x_1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D_IN1,
      O => z_ada_x_1_D_299
    );
  z_ada_x_1_D1 : X_ZERO
    port map (
      O => z_ada_x_1_D1_300
    );
  z_ada_x_1_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_0_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_PT_0_IN1,
      O => z_ada_x_1_D2_PT_0_303
    );
  z_ada_x_1_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_1_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_PT_1_IN1,
      O => z_ada_x_1_D2_PT_1_305
    );
  z_ada_x_1_D2_PT_2 : X_AND2
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_2_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_PT_2_IN1,
      O => z_ada_x_1_D2_PT_2_306
    );
  z_ada_x_1_D2_PT_3 : X_AND2
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_3_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_PT_3_IN1,
      O => z_ada_x_1_D2_PT_3_307
    );
  z_ada_x_1_D2_PT_4 : X_AND3
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN0,
      I1 => NlwInverterSignal_z_ada_x_1_D2_PT_4_IN1,
      I2 => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN2,
      O => z_ada_x_1_D2_PT_4_308
    );
  z_ada_x_1_D2_PT_5 : X_AND3
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN1,
      I2 => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN2,
      O => z_ada_x_1_D2_PT_5_309
    );
  z_ada_x_1_D2 : X_OR6
    port map (
      I0 => NlwBufferSignal_z_ada_x_1_D2_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_D2_IN1,
      I2 => NlwBufferSignal_z_ada_x_1_D2_IN2,
      I3 => NlwBufferSignal_z_ada_x_1_D2_IN3,
      I4 => NlwBufferSignal_z_ada_x_1_D2_IN4,
      I5 => NlwBufferSignal_z_ada_x_1_D2_IN5,
      O => z_ada_x_1_D2_301
    );
  z_ada_x_1_TRST : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_1_TRST_IN0,
      I1 => NlwBufferSignal_z_ada_x_1_TRST_IN1,
      I2 => NlwBufferSignal_z_ada_x_1_TRST_IN2,
      I3 => NlwBufferSignal_z_ada_x_1_TRST_IN3,
      I4 => NlwBufferSignal_z_ada_x_1_TRST_IN4,
      O => z_ada_x_1_TRST_298
    );
  z_ada_x_2_Q : X_BUF
    port map (
      I => z_ada_x_2_Q_311,
      O => z_ada_x(2)
    );
  z_ada_x_2_OE : X_BUF
    port map (
      I => z_ada_x_2_BUFOE_OUT_312,
      O => z_ada_x_2_OE_109
    );
  z_ada_x_2_BUFOE_OUT : X_BUF
    port map (
      I => z_ada_x_2_TRST_313,
      O => z_ada_x_2_BUFOE_OUT_312
    );
  z_ada_x_2_Q_303 : X_BUF
    port map (
      I => z_ada_x_2_D_314,
      O => z_ada_x_2_Q_311
    );
  z_ada_x_2_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_z_ada_x_2_D_IN0,
      I1 => NlwBufferSignal_z_ada_x_2_D_IN1,
      O => z_ada_x_2_D_314
    );
  z_ada_x_2_D1 : X_ZERO
    port map (
      O => z_ada_x_2_D1_315
    );
  z_ada_x_2_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_z_ada_x_2_D2_PT_0_IN0,
      I1 => NlwInverterSignal_z_ada_x_2_D2_PT_0_IN1,
      O => z_ada_x_2_D2_PT_0_317
    );
  z_ada_x_2_D2_PT_1 : X_AND6
    port map (
      I0 => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN0,
      I1 => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN1,
      I2 => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN2,
      I3 => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN3,
      I4 => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN4,
      I5 => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN5,
      O => z_ada_x_2_D2_PT_1_318
    );
  z_ada_x_2_D2_PT_2 : X_AND7
    port map (
      I0 => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN0,
      I1 => NlwInverterSignal_z_ada_x_2_D2_PT_2_IN1,
      I2 => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN2,
      I3 => NlwInverterSignal_z_ada_x_2_D2_PT_2_IN3,
      I4 => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN4,
      I5 => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN5,
      I6 => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN6,
      O => z_ada_x_2_D2_PT_2_319
    );
  z_ada_x_2_D2_PT_3 : X_AND7
    port map (
      I0 => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN0,
      I1 => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN1,
      I2 => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN2,
      I3 => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN3,
      I4 => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN4,
      I5 => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN5,
      I6 => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN6,
      O => z_ada_x_2_D2_PT_3_320
    );
  z_ada_x_2_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_z_ada_x_2_D2_IN0,
      I1 => NlwBufferSignal_z_ada_x_2_D2_IN1,
      I2 => NlwBufferSignal_z_ada_x_2_D2_IN2,
      I3 => NlwBufferSignal_z_ada_x_2_D2_IN3,
      O => z_ada_x_2_D2_316
    );
  z_ada_x_2_TRST : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_2_TRST_IN0,
      I1 => NlwBufferSignal_z_ada_x_2_TRST_IN1,
      I2 => NlwBufferSignal_z_ada_x_2_TRST_IN2,
      I3 => NlwBufferSignal_z_ada_x_2_TRST_IN3,
      I4 => NlwBufferSignal_z_ada_x_2_TRST_IN4,
      O => z_ada_x_2_TRST_313
    );
  z_ada_x_3_Q : X_BUF
    port map (
      I => z_ada_x_3_Q_321,
      O => z_ada_x(3)
    );
  z_ada_x_3_OE : X_BUF
    port map (
      I => z_ada_x_3_BUFOE_OUT_322,
      O => z_ada_x_3_OE_111
    );
  z_ada_x_3_BUFOE_OUT : X_BUF
    port map (
      I => z_ada_x_3_TRST_323,
      O => z_ada_x_3_BUFOE_OUT_322
    );
  z_ada_x_3_Q_315 : X_BUF
    port map (
      I => z_ada_x_3_D_324,
      O => z_ada_x_3_Q_321
    );
  z_ada_x_3_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_z_ada_x_3_D_IN0,
      I1 => NlwBufferSignal_z_ada_x_3_D_IN1,
      O => z_ada_x_3_D_324
    );
  z_ada_x_3_D1 : X_ZERO
    port map (
      O => z_ada_x_3_D1_325
    );
  z_ada_x_3_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_z_ada_x_3_D2_PT_0_IN0,
      I1 => NlwInverterSignal_z_ada_x_3_D2_PT_0_IN1,
      O => z_ada_x_3_D2_PT_0_327
    );
  z_ada_x_3_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN0,
      I1 => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN1,
      I2 => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN2,
      I3 => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN3,
      I4 => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN4,
      O => z_ada_x_3_D2_PT_1_328
    );
  z_ada_x_3_D2_PT_2 : X_AND6
    port map (
      I0 => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN0,
      I1 => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN1,
      I2 => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN2,
      I3 => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN3,
      I4 => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN4,
      I5 => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN5,
      O => z_ada_x_3_D2_PT_2_329
    );
  z_ada_x_3_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_z_ada_x_3_D2_IN0,
      I1 => NlwBufferSignal_z_ada_x_3_D2_IN1,
      I2 => NlwBufferSignal_z_ada_x_3_D2_IN2,
      O => z_ada_x_3_D2_326
    );
  z_ada_x_3_TRST : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_3_TRST_IN0,
      I1 => NlwBufferSignal_z_ada_x_3_TRST_IN1,
      I2 => NlwBufferSignal_z_ada_x_3_TRST_IN2,
      I3 => NlwBufferSignal_z_ada_x_3_TRST_IN3,
      I4 => NlwBufferSignal_z_ada_x_3_TRST_IN4,
      O => z_ada_x_3_TRST_323
    );
  p_par_x : X_BUF
    port map (
      I => p_par_x_Q_330,
      O => p_par_x_113
    );
  p_par_x_EXP : X_BUF
    port map (
      I => p_par_x_EXP_tsimrenamed_net_Q_331,
      O => p_par_x_EXP_332
    );
  p_par_x_OE : X_BUF
    port map (
      I => p_par_x_BUFOE_OUT_333,
      O => p_par_x_OE_114
    );
  p_par_x_BUFOE_OUT : X_BUF
    port map (
      I => p_par_x_TRST_334,
      O => p_par_x_BUFOE_OUT_333
    );
  p_par_x_Q : X_BUF
    port map (
      I => p_par_x_D_335,
      O => p_par_x_Q_330
    );
  p_par_x_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p_par_x_D_IN0,
      I1 => NlwBufferSignal_p_par_x_D_IN1,
      O => p_par_x_D_335
    );
  p_par_x_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_p_par_x_D1_IN0,
      I1 => NlwBufferSignal_p_par_x_D1_IN1,
      O => p_par_x_D1_336
    );
  p_par_x_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_p_par_x_D2_IN0,
      I1 => NlwBufferSignal_p_par_x_D2_IN1,
      O => p_par_x_D2_337
    );
  p_par_x_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_p_par_x_TRST_IN0,
      I1 => NlwBufferSignal_p_par_x_TRST_IN1,
      O => p_par_x_TRST_334
    );
  p_par_x_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_p_par_x_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_p_par_x_EXP_PT_0_IN1,
      O => p_par_x_EXP_PT_0_341
    );
  p_par_x_EXP_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_p_par_x_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_p_par_x_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_p_par_x_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_p_par_x_EXP_PT_1_IN3,
      I4 => NlwInverterSignal_p_par_x_EXP_PT_1_IN4,
      O => p_par_x_EXP_PT_1_343
    );
  p_par_x_EXP_tsimrenamed_net_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN1,
      O => p_par_x_EXP_tsimrenamed_net_Q_331
    );
  z_ada_x_0_Q : X_BUF
    port map (
      I => z_ada_x_0_Q_344,
      O => z_ada_x(0)
    );
  z_ada_x_0_OE : X_BUF
    port map (
      I => z_ada_x_0_BUFOE_OUT_345,
      O => z_ada_x_0_OE_117
    );
  z_ada_x_0_BUFOE_OUT : X_BUF
    port map (
      I => z_ada_x_0_TRST_346,
      O => z_ada_x_0_BUFOE_OUT_345
    );
  z_ada_x_0_Q_338 : X_BUF
    port map (
      I => z_ada_x_0_D_347,
      O => z_ada_x_0_Q_344
    );
  z_ada_x_0_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_D_IN0,
      I1 => NlwBufferSignal_z_ada_x_0_D_IN1,
      O => z_ada_x_0_D_347
    );
  z_ada_x_0_D1 : X_ZERO
    port map (
      O => z_ada_x_0_D1_348
    );
  z_ada_x_0_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_D2_PT_0_IN0,
      I1 => NlwInverterSignal_z_ada_x_0_D2_PT_0_IN1,
      O => z_ada_x_0_D2_PT_0_350
    );
  z_ada_x_0_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN0,
      I1 => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN1,
      I2 => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN2,
      I3 => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN3,
      I4 => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN4,
      O => z_ada_x_0_D2_PT_1_351
    );
  z_ada_x_0_D2_PT_2 : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN0,
      I1 => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN1,
      I2 => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN2,
      I3 => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN3,
      I4 => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN4,
      O => z_ada_x_0_D2_PT_2_352
    );
  z_ada_x_0_D2_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_D2_PT_3_IN0,
      I1 => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN1,
      I2 => NlwInverterSignal_z_ada_x_0_D2_PT_3_IN2,
      I3 => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN3,
      I4 => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN4,
      I5 => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN5,
      O => z_ada_x_0_D2_PT_3_353
    );
  z_ada_x_0_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_z_ada_x_0_D2_IN0,
      I1 => NlwBufferSignal_z_ada_x_0_D2_IN1,
      I2 => NlwBufferSignal_z_ada_x_0_D2_IN2,
      I3 => NlwBufferSignal_z_ada_x_0_D2_IN3,
      O => z_ada_x_0_D2_349
    );
  z_ada_x_0_TRST : X_AND5
    port map (
      I0 => NlwInverterSignal_z_ada_x_0_TRST_IN0,
      I1 => NlwBufferSignal_z_ada_x_0_TRST_IN1,
      I2 => NlwBufferSignal_z_ada_x_0_TRST_IN2,
      I3 => NlwBufferSignal_z_ada_x_0_TRST_IN3,
      I4 => NlwBufferSignal_z_ada_x_0_TRST_IN4,
      O => z_ada_x_0_TRST_346
    );
  THE_PCI_ARB_CURRENT_STATE_1_Q : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_Q_354,
      O => THE_PCI_ARB_CURRENT_STATE(1)
    );
  THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_Q : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_Q_357
    );
  THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_Q_358
    );
  THE_PCI_ARB_CURRENT_STATE_1_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_Q_358,
      O => THE_PCI_ARB_CURRENT_STATE_1_Q_354
    );
  THE_PCI_ARB_CURRENT_STATE_1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_1_D_356
    );
  THE_PCI_ARB_CURRENT_STATE_1_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_CURRENT_STATE_1_D1_359
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_362
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_364
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2 : X_AND6
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN2,
      I3 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3,
      I4 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN5,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_366
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3 : X_AND6
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1,
      I2 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2,
      I3 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN5,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_368
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN1,
      I2 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN3,
      I4 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN5,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_369
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5 : X_AND6
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN5,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_370
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6 : X_AND6
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN2,
      I3 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN5,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_371
    );
  THE_PCI_ARB_CURRENT_STATE_1_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN6,
      O => THE_PCI_ARB_CURRENT_STATE_1_D2_360
    );
  THE_PCI_SEQ_CURRENT_STATE_0_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_Q_372,
      O => THE_PCI_SEQ_CURRENT_STATE(0)
    );
  THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_Q_373
    );
  THE_PCI_SEQ_CURRENT_STATE_0_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_Q_373,
      O => THE_PCI_SEQ_CURRENT_STATE_0_Q_372
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D_374
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_CURRENT_STATE_0_D1_375
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_377
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_379
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_381
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_382
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_383
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_384
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_385
    );
  THE_PCI_SEQ_CURRENT_STATE_0_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN4,
      I5 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN5,
      I6 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN6,
      O => THE_PCI_SEQ_CURRENT_STATE_0_D2_376
    );
  THE_PCI_SEQ_CURRENT_STATE_1_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_Q_386,
      O => THE_PCI_SEQ_CURRENT_STATE(1)
    );
  THE_PCI_SEQ_CURRENT_STATE_1_EXP : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_Q_387,
      O => THE_PCI_SEQ_CURRENT_STATE_1_EXP_378
    );
  THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_Q_388
    );
  THE_PCI_SEQ_CURRENT_STATE_1_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_Q_388,
      O => THE_PCI_SEQ_CURRENT_STATE_1_Q_386
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_1_D_389
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_CURRENT_STATE_1_D1_390
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_393
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3,
      O => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_394
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN3,
      O => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_395
    );
  THE_PCI_SEQ_CURRENT_STATE_1_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_1_D2_391
    );
  THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_396
    );
  THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_397
    );
  THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_399
    );
  THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_Q : X_OR3
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN2,
      O => THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_Q_387
    );
  THE_PCI_SEQ_CURRENT_STATE_2_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_Q_400,
      O => THE_PCI_SEQ_CURRENT_STATE(2)
    );
  THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_Q_401
    );
  THE_PCI_SEQ_CURRENT_STATE_2_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_Q_401,
      O => THE_PCI_SEQ_CURRENT_STATE_2_Q_400
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D_402
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_CURRENT_STATE_2_D1_403
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_406
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_408
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3,
      I4 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_409
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3 : X_AND5
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3,
      I4 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_410
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4 : X_AND5
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3,
      I4 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN4,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_411
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5 : X_AND6
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3,
      I4 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN4,
      I5 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN5,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_414
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6 : X_AND8
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN3,
      I4 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4,
      I5 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5,
      I6 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN6,
      I7 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN7,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_415
    );
  THE_PCI_SEQ_CURRENT_STATE_2_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN4,
      I5 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN5,
      I6 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN6,
      O => THE_PCI_SEQ_CURRENT_STATE_2_D2_404
    );
  THE_PCI_ARB_CURRENT_STATE_0_Q : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_Q_416,
      O => THE_PCI_ARB_CURRENT_STATE(0)
    );
  THE_PCI_ARB_CURRENT_STATE_0_EXP : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_Q_417,
      O => THE_PCI_ARB_CURRENT_STATE_0_EXP_418
    );
  THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_Q_419
    );
  THE_PCI_ARB_CURRENT_STATE_0_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_Q_419,
      O => THE_PCI_ARB_CURRENT_STATE_0_Q_416
    );
  THE_PCI_ARB_CURRENT_STATE_0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_0_D_420
    );
  THE_PCI_ARB_CURRENT_STATE_0_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_CURRENT_STATE_0_D1_421
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_424
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_425
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN2,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_426
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN1,
      I2 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_428
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4 : X_AND4
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN2,
      I3 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_429
    );
  THE_PCI_ARB_CURRENT_STATE_0_D2 : X_OR5
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN4,
      O => THE_PCI_ARB_CURRENT_STATE_0_D2_422
    );
  THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_Q : X_AND5
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN3,
      I4 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4,
      O => THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_Q_417
    );
  THE_PCI_ARB_CURRENT_STATE_3_Q : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_Q_430,
      O => THE_PCI_ARB_CURRENT_STATE(3)
    );
  THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_Q_431
    );
  THE_PCI_ARB_CURRENT_STATE_3_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_Q_431,
      O => THE_PCI_ARB_CURRENT_STATE_3_Q_430
    );
  THE_PCI_ARB_CURRENT_STATE_3_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_3_D_432
    );
  THE_PCI_ARB_CURRENT_STATE_3_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_CURRENT_STATE_3_D1_433
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_436
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_438
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2 : X_AND8
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN4,
      I5 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5,
      I6 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6,
      I7 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN7,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_439
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3 : X_AND8
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN4,
      I5 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN6,
      I7 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN7,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_440
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4 : X_AND8
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN4,
      I5 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN6,
      I7 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN7,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_441
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5 : X_AND8
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN4,
      I5 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN6,
      I7 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_442
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6 : X_AND8
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN5,
      I6 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6,
      I7 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_443
    );
  THE_PCI_ARB_CURRENT_STATE_3_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN6,
      O => THE_PCI_ARB_CURRENT_STATE_3_D2_434
    );
  THE_PCI_SEQ_CURRENT_STATE_3_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_3_Q_444,
      O => THE_PCI_SEQ_CURRENT_STATE(3)
    );
  THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_Q_445
    );
  THE_PCI_SEQ_CURRENT_STATE_3_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_Q_445,
      O => THE_PCI_SEQ_CURRENT_STATE_3_Q_444
    );
  THE_PCI_SEQ_CURRENT_STATE_3_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN1,
      O => THE_PCI_SEQ_CURRENT_STATE_3_D_446
    );
  THE_PCI_SEQ_CURRENT_STATE_3_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_CURRENT_STATE_3_D1_447
    );
  THE_PCI_SEQ_CURRENT_STATE_3_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3,
      O => THE_PCI_SEQ_CURRENT_STATE_3_D2_448
    );
  THE_PCI_ARB_CURRENT_STATE_2_Q : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_Q_449,
      O => THE_PCI_ARB_CURRENT_STATE(2)
    );
  THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_Q_450
    );
  THE_PCI_ARB_CURRENT_STATE_2_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_Q_450,
      O => THE_PCI_ARB_CURRENT_STATE_2_Q_449
    );
  THE_PCI_ARB_CURRENT_STATE_2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_D_451
    );
  THE_PCI_ARB_CURRENT_STATE_2_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_CURRENT_STATE_2_D1_452
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_455
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_457
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_459
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_461
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN2,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_462
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN3,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_463
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN1,
      I2 => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN3,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_464
    );
  THE_PCI_ARB_CURRENT_STATE_2_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN3,
      I4 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN4,
      I5 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN5,
      I6 => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN6,
      O => THE_PCI_ARB_CURRENT_STATE_2_D2_453
    );
  THE_PCI_SEQ_toc_ctr_x_0_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_Q_465,
      O => THE_PCI_SEQ_toc_ctr_x(0)
    );
  THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_Q_467
    );
  THE_PCI_SEQ_toc_ctr_x_0_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_Q_467,
      O => THE_PCI_SEQ_toc_ctr_x_0_Q_465
    );
  THE_PCI_SEQ_toc_ctr_x_0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_D_468
    );
  THE_PCI_SEQ_toc_ctr_x_0_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_toc_ctr_x_0_D1_469
    );
  THE_PCI_SEQ_toc_ctr_x_0_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_D2_470
    );
  THE_PCI_SEQ_toc_ctr_x_0_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_RSTF_466
    );
  THE_PCI_SEQ_toc_ctr_x_1_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_1_Q_472,
      O => THE_PCI_SEQ_toc_ctr_x(1)
    );
  THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_Q_474
    );
  THE_PCI_SEQ_toc_ctr_x_1_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_CLK,
      SET => Gnd_174,
      RST => THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_Q_474,
      O => THE_PCI_SEQ_toc_ctr_x_1_Q_472
    );
  THE_PCI_SEQ_toc_ctr_x_1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_1_D_475
    );
  THE_PCI_SEQ_toc_ctr_x_1_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_toc_ctr_x_1_D1_476
    );
  THE_PCI_SEQ_toc_ctr_x_1_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_1_D2_477
    );
  THE_PCI_SEQ_toc_ctr_x_1_RSTF : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_1_RSTF_473
    );
  P_NGNT_1_OBUF : X_BUF
    port map (
      I => P_NGNT_1_OBUF_Q_478,
      O => P_NGNT_1_OBUF_119
    );
  P_NGNT_1_OBUF_Q : X_BUF
    port map (
      I => P_NGNT_1_OBUF_D_479,
      O => P_NGNT_1_OBUF_Q_478
    );
  P_NGNT_1_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_P_NGNT_1_OBUF_D_IN0,
      I1 => NlwBufferSignal_P_NGNT_1_OBUF_D_IN1,
      O => P_NGNT_1_OBUF_D_479
    );
  P_NGNT_1_OBUF_D1 : X_ZERO
    port map (
      O => P_NGNT_1_OBUF_D1_480
    );
  P_NGNT_1_OBUF_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN0,
      I1 => NlwInverterSignal_P_NGNT_1_OBUF_D2_IN1,
      I2 => NlwInverterSignal_P_NGNT_1_OBUF_D2_IN2,
      I3 => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN3,
      O => P_NGNT_1_OBUF_D2_481
    );
  P_NGNT_2_OBUF : X_BUF
    port map (
      I => P_NGNT_2_OBUF_Q_482,
      O => P_NGNT_2_OBUF_121
    );
  P_NGNT_2_OBUF_Q : X_BUF
    port map (
      I => P_NGNT_2_OBUF_D_483,
      O => P_NGNT_2_OBUF_Q_482
    );
  P_NGNT_2_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_P_NGNT_2_OBUF_D_IN0,
      I1 => NlwBufferSignal_P_NGNT_2_OBUF_D_IN1,
      O => P_NGNT_2_OBUF_D_483
    );
  P_NGNT_2_OBUF_D1 : X_ZERO
    port map (
      O => P_NGNT_2_OBUF_D1_484
    );
  P_NGNT_2_OBUF_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN0,
      I1 => NlwInverterSignal_P_NGNT_2_OBUF_D2_IN1,
      I2 => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN2,
      I3 => NlwInverterSignal_P_NGNT_2_OBUF_D2_IN3,
      O => P_NGNT_2_OBUF_D2_485
    );
  P_NGNT_3_OBUF : X_BUF
    port map (
      I => P_NGNT_3_OBUF_Q_486,
      O => P_NGNT_3_OBUF_123
    );
  P_NGNT_3_OBUF_Q : X_BUF
    port map (
      I => P_NGNT_3_OBUF_D_487,
      O => P_NGNT_3_OBUF_Q_486
    );
  P_NGNT_3_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_P_NGNT_3_OBUF_D_IN0,
      I1 => NlwBufferSignal_P_NGNT_3_OBUF_D_IN1,
      O => P_NGNT_3_OBUF_D_487
    );
  P_NGNT_3_OBUF_D1 : X_ZERO
    port map (
      O => P_NGNT_3_OBUF_D1_488
    );
  P_NGNT_3_OBUF_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN0,
      I1 => NlwInverterSignal_P_NGNT_3_OBUF_D2_IN1,
      I2 => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN2,
      I3 => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN3,
      O => P_NGNT_3_OBUF_D2_489
    );
  I_DATA_OBUF : X_BUF
    port map (
      I => I_DATA_OBUF_Q_490,
      O => I_DATA_OBUF_125
    );
  I_DATA_OBUF_Q : X_BUF
    port map (
      I => I_DATA_OBUF_D_491,
      O => I_DATA_OBUF_Q_490
    );
  I_DATA_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_DATA_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_DATA_OBUF_D_IN1,
      O => I_DATA_OBUF_D_491
    );
  I_DATA_OBUF_D1 : X_ZERO
    port map (
      O => I_DATA_OBUF_D1_492
    );
  I_DATA_OBUF_D2_PT_0 : X_AND6
    port map (
      I0 => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN2,
      I3 => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN3,
      I4 => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN4,
      I5 => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN5,
      O => I_DATA_OBUF_D2_PT_0_494
    );
  I_DATA_OBUF_D2_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN2,
      I3 => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN3,
      I4 => NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN4,
      I5 => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN5,
      O => I_DATA_OBUF_D2_PT_1_495
    );
  I_DATA_OBUF_D2_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN0,
      I1 => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN2,
      I3 => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN3,
      I4 => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN4,
      I5 => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN5,
      O => I_DATA_OBUF_D2_PT_2_496
    );
  I_DATA_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_I_DATA_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_DATA_OBUF_D2_IN1,
      I2 => NlwBufferSignal_I_DATA_OBUF_D2_IN2,
      O => I_DATA_OBUF_D2_493
    );
  I_DAOUT_OBUF_Q : X_BUF
    port map (
      I => I_DAOUT_OBUF_Q_497,
      O => I_DAOUT_OBUF_Q_127
    );
  I_DAOUT_OBUF_Q_484 : X_BUF
    port map (
      I => I_DAOUT_OBUF_D_498,
      O => I_DAOUT_OBUF_Q_497
    );
  I_DAOUT_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_DAOUT_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_DAOUT_OBUF_D_IN1,
      O => I_DAOUT_OBUF_D_498
    );
  I_DAOUT_OBUF_D1 : X_ZERO
    port map (
      O => I_DAOUT_OBUF_D1_499
    );
  I_DAOUT_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN1,
      I2 => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_0_IN2,
      O => I_DAOUT_OBUF_D2_PT_0_501
    );
  I_DAOUT_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN3,
      O => I_DAOUT_OBUF_D2_PT_1_502
    );
  I_DAOUT_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_I_DAOUT_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_DAOUT_OBUF_D2_IN1,
      O => I_DAOUT_OBUF_D2_500
    );
  I_PCIENA_OBUF_Q : X_BUF
    port map (
      I => I_PCIENA_OBUF_Q_503,
      O => I_PCIENA_OBUF_Q_129
    );
  I_PCIENA_OBUF_Q_491 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D_504,
      O => I_PCIENA_OBUF_Q_503
    );
  I_PCIENA_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_PCIENA_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_PCIENA_OBUF_D_IN1,
      O => I_PCIENA_OBUF_D_504
    );
  I_PCIENA_OBUF_D1 : X_ZERO
    port map (
      O => I_PCIENA_OBUF_D1_505
    );
  I_PCIENA_OBUF_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN1,
      I2 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN2,
      O => I_PCIENA_OBUF_D2_PT_0_507
    );
  I_PCIENA_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN2,
      O => I_PCIENA_OBUF_D2_PT_1_508
    );
  I_PCIENA_OBUF_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN0,
      I1 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN1,
      I2 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN2,
      O => I_PCIENA_OBUF_D2_PT_2_509
    );
  I_PCIENA_OBUF_D2_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN0,
      I1 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN1,
      I2 => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN2,
      I3 => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN3,
      O => I_PCIENA_OBUF_D2_PT_3_510
    );
  I_PCIENA_OBUF_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_I_PCIENA_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_PCIENA_OBUF_D2_IN1,
      I2 => NlwBufferSignal_I_PCIENA_OBUF_D2_IN2,
      I3 => NlwBufferSignal_I_PCIENA_OBUF_D2_IN3,
      O => I_PCIENA_OBUF_D2_506
    );
  I_CFLT_OBUF_Q : X_BUF
    port map (
      I => I_CFLT_OBUF_Q_511,
      O => I_CFLT_OBUF_Q_131
    );
  I_CFLT_OBUF_Q_500 : X_BUF
    port map (
      I => I_CFLT_OBUF_D_512,
      O => I_CFLT_OBUF_Q_511
    );
  I_CFLT_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_CFLT_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_CFLT_OBUF_D_IN1,
      O => I_CFLT_OBUF_D_512
    );
  I_CFLT_OBUF_D1 : X_ZERO
    port map (
      O => I_CFLT_OBUF_D1_513
    );
  I_CFLT_OBUF_D2 : X_AND16
    port map (
      I0 => NlwInverterSignal_I_CFLT_OBUF_D2_IN0,
      I1 => NlwInverterSignal_I_CFLT_OBUF_D2_IN1,
      I2 => NlwBufferSignal_I_CFLT_OBUF_D2_IN2,
      I3 => NlwInverterSignal_I_CFLT_OBUF_D2_IN3,
      I4 => NlwInverterSignal_I_CFLT_OBUF_D2_IN4,
      I5 => NlwInverterSignal_I_CFLT_OBUF_D2_IN5,
      I6 => NlwBufferSignal_I_CFLT_OBUF_D2_IN6,
      I7 => NlwBufferSignal_I_CFLT_OBUF_D2_IN7,
      I8 => NlwInverterSignal_I_CFLT_OBUF_D2_IN8,
      I9 => NlwBufferSignal_I_CFLT_OBUF_D2_IN9,
      I10 => NlwBufferSignal_I_CFLT_OBUF_D2_IN10,
      I11 => NlwBufferSignal_I_CFLT_OBUF_D2_IN11,
      I12 => NlwBufferSignal_I_CFLT_OBUF_D2_IN12,
      I13 => NlwBufferSignal_I_CFLT_OBUF_D2_IN13,
      I14 => NlwBufferSignal_I_CFLT_OBUF_D2_IN14,
      I15 => NlwBufferSignal_I_CFLT_OBUF_D2_IN15,
      O => I_CFLT_OBUF_D2_514
    );
  cycend_x : X_BUF
    port map (
      I => cycend_x_Q,
      O => cycend_x_398
    );
  cycend_x_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_cycend_x_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_cycend_x_REG_CLK,
      SET => cycend_x_SETF_518,
      RST => Gnd_174,
      O => cycend_x_Q
    );
  cycend_x_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_cycend_x_D_IN0,
      I1 => NlwBufferSignal_cycend_x_D_IN1,
      O => cycend_x_D_516
    );
  cycend_x_D1 : X_ZERO
    port map (
      O => cycend_x_D1_519
    );
  cycend_x_D2 : X_ZERO
    port map (
      O => cycend_x_D2_520
    );
  cycend_x_CLKF : X_AND4
    port map (
      I0 => NlwBufferSignal_cycend_x_CLKF_IN0,
      I1 => NlwBufferSignal_cycend_x_CLKF_IN1,
      I2 => NlwBufferSignal_cycend_x_CLKF_IN2,
      I3 => NlwInverterSignal_cycend_x_CLKF_IN3,
      O => cycend_x_CLKF_517
    );
  cycend_x_SETF : X_AND2
    port map (
      I0 => NlwBufferSignal_cycend_x_SETF_IN0,
      I1 => NlwBufferSignal_cycend_x_SETF_IN1,
      O => cycend_x_SETF_518
    );
  ncfg_x : X_BUF
    port map (
      I => ncfg_x_Q,
      O => ncfg_x_247
    );
  ncfg_x_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_ncfg_x_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_ncfg_x_REG_CLK,
      SET => FSR_IO_0_6,
      RST => Gnd_174,
      O => ncfg_x_Q
    );
  ncfg_x_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_ncfg_x_D_IN0,
      I1 => NlwBufferSignal_ncfg_x_D_IN1,
      O => ncfg_x_D_522
    );
  ncfg_x_D1 : X_ZERO
    port map (
      O => ncfg_x_D1_524
    );
  ncfg_x_D2 : X_ZERO
    port map (
      O => ncfg_x_D2_525
    );
  ncfg_x_CLKF : X_AND16
    port map (
      I0 => NlwInverterSignal_ncfg_x_CLKF_IN0,
      I1 => NlwInverterSignal_ncfg_x_CLKF_IN1,
      I2 => NlwBufferSignal_ncfg_x_CLKF_IN2,
      I3 => NlwInverterSignal_ncfg_x_CLKF_IN3,
      I4 => NlwInverterSignal_ncfg_x_CLKF_IN4,
      I5 => NlwInverterSignal_ncfg_x_CLKF_IN5,
      I6 => NlwBufferSignal_ncfg_x_CLKF_IN6,
      I7 => NlwBufferSignal_ncfg_x_CLKF_IN7,
      I8 => NlwInverterSignal_ncfg_x_CLKF_IN8,
      I9 => NlwBufferSignal_ncfg_x_CLKF_IN9,
      I10 => NlwBufferSignal_ncfg_x_CLKF_IN10,
      I11 => NlwBufferSignal_ncfg_x_CLKF_IN11,
      I12 => NlwBufferSignal_ncfg_x_CLKF_IN12,
      I13 => NlwBufferSignal_ncfg_x_CLKF_IN13,
      I14 => NlwBufferSignal_ncfg_x_CLKF_IN14,
      I15 => NlwBufferSignal_ncfg_x_CLKF_IN15,
      O => ncfg_x_CLKF_523
    );
  cbe_p : X_BUF
    port map (
      I => cbe_p_Q,
      O => cbe_p_338
    );
  cbe_p_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_cbe_p_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_cbe_p_REG_CLK,
      SET => Gnd_174,
      RST => Gnd_174,
      O => cbe_p_Q
    );
  cbe_p_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_cbe_p_D_IN0,
      I1 => NlwBufferSignal_cbe_p_D_IN1,
      O => cbe_p_D_527
    );
  cbe_p_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbe_p_D1_IN0,
      I1 => NlwBufferSignal_cbe_p_D1_IN1,
      O => cbe_p_D1_528
    );
  cbe_p_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbe_p_D2_PT_0_IN0,
      I1 => NlwBufferSignal_cbe_p_D2_PT_0_IN1,
      I2 => NlwInverterSignal_cbe_p_D2_PT_0_IN2,
      O => cbe_p_D2_PT_0_530
    );
  cbe_p_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_cbe_p_D2_PT_1_IN0,
      I1 => NlwInverterSignal_cbe_p_D2_PT_1_IN1,
      I2 => NlwBufferSignal_cbe_p_D2_PT_1_IN2,
      O => cbe_p_D2_PT_1_531
    );
  cbe_p_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_cbe_p_D2_PT_2_IN0,
      I1 => NlwBufferSignal_cbe_p_D2_PT_2_IN1,
      I2 => NlwBufferSignal_cbe_p_D2_PT_2_IN2,
      O => cbe_p_D2_PT_2_532
    );
  cbe_p_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_cbe_p_D2_PT_3_IN0,
      I1 => NlwInverterSignal_cbe_p_D2_PT_3_IN1,
      I2 => NlwInverterSignal_cbe_p_D2_PT_3_IN2,
      O => cbe_p_D2_PT_3_533
    );
  cbe_p_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_cbe_p_D2_IN0,
      I1 => NlwBufferSignal_cbe_p_D2_IN1,
      I2 => NlwBufferSignal_cbe_p_D2_IN2,
      I3 => NlwBufferSignal_cbe_p_D2_IN3,
      O => cbe_p_D2_529
    );
  dat_p : X_BUF
    port map (
      I => dat_p_Q,
      O => dat_p_339
    );
  dat_p_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_dat_p_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_dat_p_REG_CLK,
      SET => Gnd_174,
      RST => Gnd_174,
      O => dat_p_Q
    );
  dat_p_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_dat_p_D_IN0,
      I1 => NlwBufferSignal_dat_p_D_IN1,
      O => dat_p_D_535
    );
  dat_p_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_dat_p_D1_IN0,
      I1 => NlwBufferSignal_dat_p_D1_IN1,
      O => dat_p_D1_536
    );
  dat_p_D2 : X_AND2
    port map (
      I0 => NlwBufferSignal_dat_p_D2_IN0,
      I1 => NlwBufferSignal_dat_p_D2_IN1,
      O => dat_p_D2_537
    );
  p_par_ena : X_BUF
    port map (
      I => p_par_ena_Q,
      O => p_par_ena_340
    );
  p_par_ena_REG : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      I => NlwBufferSignal_p_par_ena_REG_IN,
      CE => Vcc_244,
      CLK => NlwBufferSignal_p_par_ena_REG_CLK,
      SET => Gnd_174,
      RST => Gnd_174,
      O => p_par_ena_Q
    );
  p_par_ena_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_p_par_ena_D_IN0,
      I1 => NlwBufferSignal_p_par_ena_D_IN1,
      O => p_par_ena_D_539
    );
  p_par_ena_D1 : X_ZERO
    port map (
      O => p_par_ena_D1_540
    );
  p_par_ena_D2_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_p_par_ena_D2_PT_0_IN0,
      I1 => NlwInverterSignal_p_par_ena_D2_PT_0_IN1,
      I2 => NlwInverterSignal_p_par_ena_D2_PT_0_IN2,
      O => p_par_ena_D2_PT_0_542
    );
  p_par_ena_D2_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_p_par_ena_D2_PT_1_IN0,
      I1 => NlwBufferSignal_p_par_ena_D2_PT_1_IN1,
      I2 => NlwInverterSignal_p_par_ena_D2_PT_1_IN2,
      O => p_par_ena_D2_PT_1_543
    );
  p_par_ena_D2_PT_2 : X_AND3
    port map (
      I0 => NlwBufferSignal_p_par_ena_D2_PT_2_IN0,
      I1 => NlwInverterSignal_p_par_ena_D2_PT_2_IN1,
      I2 => NlwInverterSignal_p_par_ena_D2_PT_2_IN2,
      O => p_par_ena_D2_PT_2_544
    );
  p_par_ena_D2_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_p_par_ena_D2_PT_3_IN0,
      I1 => NlwInverterSignal_p_par_ena_D2_PT_3_IN1,
      I2 => NlwInverterSignal_p_par_ena_D2_PT_3_IN2,
      I3 => NlwBufferSignal_p_par_ena_D2_PT_3_IN3,
      O => p_par_ena_D2_PT_3_545
    );
  p_par_ena_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_p_par_ena_D2_IN0,
      I1 => NlwBufferSignal_p_par_ena_D2_IN1,
      I2 => NlwBufferSignal_p_par_ena_D2_IN2,
      I3 => NlwBufferSignal_p_par_ena_D2_IN3,
      O => p_par_ena_D2_541
    );
  I_NINT2_OBUF : X_BUF
    port map (
      I => I_NINT2_OBUF_Q_546,
      O => I_NINT2_OBUF_133
    );
  I_NINT2_OBUF_Q : X_BUF
    port map (
      I => I_NINT2_OBUF_D_547,
      O => I_NINT2_OBUF_Q_546
    );
  I_NINT2_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_NINT2_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_NINT2_OBUF_D_IN1,
      O => I_NINT2_OBUF_D_547
    );
  I_NINT2_OBUF_D1 : X_ZERO
    port map (
      O => I_NINT2_OBUF_D1_548
    );
  I_NINT2_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN1,
      O => I_NINT2_OBUF_D2_PT_0_550
    );
  I_NINT2_OBUF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN2,
      I3 => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN3,
      O => I_NINT2_OBUF_D2_PT_1_551
    );
  I_NINT2_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_I_NINT2_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_NINT2_OBUF_D2_IN1,
      O => I_NINT2_OBUF_D2_549
    );
  P_NGNT_0_OBUF : X_BUF
    port map (
      I => P_NGNT_0_OBUF_Q_552,
      O => P_NGNT_0_OBUF_135
    );
  P_NGNT_0_OBUF_EXP : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_tsimrenamed_net_Q_553,
      O => P_NGNT_0_OBUF_EXP_290
    );
  P_NGNT_0_OBUF_Q : X_BUF
    port map (
      I => P_NGNT_0_OBUF_D_554,
      O => P_NGNT_0_OBUF_Q_552
    );
  P_NGNT_0_OBUF_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_P_NGNT_0_OBUF_D_IN0,
      I1 => NlwBufferSignal_P_NGNT_0_OBUF_D_IN1,
      O => P_NGNT_0_OBUF_D_554
    );
  P_NGNT_0_OBUF_D1 : X_ZERO
    port map (
      O => P_NGNT_0_OBUF_D1_555
    );
  P_NGNT_0_OBUF_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN0,
      I1 => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN1,
      I2 => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN2,
      I3 => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN3,
      O => P_NGNT_0_OBUF_D2_556
    );
  P_NGNT_0_OBUF_EXP_PT_0 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN1,
      I2 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN3,
      O => P_NGNT_0_OBUF_EXP_PT_0_557
    );
  P_NGNT_0_OBUF_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3,
      O => P_NGNT_0_OBUF_EXP_PT_1_558
    );
  P_NGNT_0_OBUF_EXP_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3,
      O => P_NGNT_0_OBUF_EXP_PT_2_559
    );
  P_NGNT_0_OBUF_EXP_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN4,
      O => P_NGNT_0_OBUF_EXP_PT_3_560
    );
  P_NGNT_0_OBUF_EXP_tsimrenamed_net_Q : X_OR4
    port map (
      I0 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN3,
      O => P_NGNT_0_OBUF_EXP_tsimrenamed_net_Q_553
    );
  I_PCIDL_OBUF : X_BUF
    port map (
      I => I_PCIDL_OBUF_Q_561,
      O => I_PCIDL_OBUF_137
    );
  I_PCIDL_OBUF_Q : X_BUF
    port map (
      I => I_PCIDL_OBUF_D_562,
      O => I_PCIDL_OBUF_Q_561
    );
  I_PCIDL_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_PCIDL_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_PCIDL_OBUF_D_IN1,
      O => I_PCIDL_OBUF_D_562
    );
  I_PCIDL_OBUF_D1 : X_ZERO
    port map (
      O => I_PCIDL_OBUF_D1_563
    );
  I_PCIDL_OBUF_D2_PT_0 : X_AND5
    port map (
      I0 => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN1,
      I2 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN2,
      I3 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN3,
      I4 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN4,
      O => I_PCIDL_OBUF_D2_PT_0_565
    );
  I_PCIDL_OBUF_D2_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN3,
      I4 => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN4,
      O => I_PCIDL_OBUF_D2_PT_1_566
    );
  I_PCIDL_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_I_PCIDL_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_PCIDL_OBUF_D2_IN1,
      O => I_PCIDL_OBUF_D2_564
    );
  I_PLA_0_OBUF : X_BUF
    port map (
      I => I_PLA_0_OBUF_Q_567,
      O => I_PLA_0_OBUF_139
    );
  I_PLA_0_OBUF_Q : X_BUF
    port map (
      I => I_PLA_0_OBUF_D_568,
      O => I_PLA_0_OBUF_Q_567
    );
  I_PLA_0_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_PLA_0_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_PLA_0_OBUF_D_IN1,
      O => I_PLA_0_OBUF_D_568
    );
  I_PLA_0_OBUF_D1 : X_ZERO
    port map (
      O => I_PLA_0_OBUF_D1_569
    );
  I_PLA_0_OBUF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN1,
      O => I_PLA_0_OBUF_D2_PT_0_571
    );
  I_PLA_0_OBUF_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN0,
      I1 => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_1_IN1,
      I2 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN2,
      O => I_PLA_0_OBUF_D2_PT_1_572
    );
  I_PLA_0_OBUF_D2_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_2_IN0,
      I1 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN1,
      I2 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN2,
      I3 => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN3,
      O => I_PLA_0_OBUF_D2_PT_2_573
    );
  I_PLA_0_OBUF_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_I_PLA_0_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_PLA_0_OBUF_D2_IN1,
      I2 => NlwBufferSignal_I_PLA_0_OBUF_D2_IN2,
      O => I_PLA_0_OBUF_D2_570
    );
  I_PLA_1_OBUF : X_BUF
    port map (
      I => I_PLA_1_OBUF_Q_574,
      O => I_PLA_1_OBUF_141
    );
  I_PLA_1_OBUF_Q : X_BUF
    port map (
      I => I_PLA_1_OBUF_D_575,
      O => I_PLA_1_OBUF_Q_574
    );
  I_PLA_1_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_PLA_1_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_PLA_1_OBUF_D_IN1,
      O => I_PLA_1_OBUF_D_575
    );
  I_PLA_1_OBUF_D1 : X_ZERO
    port map (
      O => I_PLA_1_OBUF_D1_576
    );
  I_PLA_1_OBUF_D2_PT_0 : X_AND5
    port map (
      I0 => NlwInverterSignal_I_PLA_1_OBUF_D2_PT_0_IN0,
      I1 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN1,
      I2 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN2,
      I3 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN3,
      I4 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN4,
      O => I_PLA_1_OBUF_D2_PT_0_578
    );
  I_PLA_1_OBUF_D2_PT_1 : X_AND5
    port map (
      I0 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_I_PLA_1_OBUF_D2_PT_1_IN2,
      I3 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN3,
      I4 => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN4,
      O => I_PLA_1_OBUF_D2_PT_1_579
    );
  I_PLA_1_OBUF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_I_PLA_1_OBUF_D2_IN0,
      I1 => NlwBufferSignal_I_PLA_1_OBUF_D2_IN1,
      O => I_PLA_1_OBUF_D2_577
    );
  N0_Q : X_BUF
    port map (
      I => N0_Q_580,
      O => N0_Q_143
    );
  N0_OE : X_BUF
    port map (
      I => N0_BUFOE_OUT_581,
      O => N0_OE_144
    );
  N0_BUFOE_OUT : X_BUF
    port map (
      I => N0_TRST_582,
      O => N0_BUFOE_OUT_581
    );
  N0_Q_583 : X_BUF
    port map (
      I => N0_D_583,
      O => N0_Q_580
    );
  N0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N0_D_IN0,
      I1 => NlwBufferSignal_N0_D_IN1,
      O => N0_D_583
    );
  N0_D1 : X_ZERO
    port map (
      O => N0_D1_584
    );
  N0_D2 : X_ZERO
    port map (
      O => N0_D2_585
    );
  N0_TRST : X_AND2
    port map (
      I0 => NlwBufferSignal_N0_TRST_IN0,
      I1 => NlwBufferSignal_N0_TRST_IN1,
      O => N0_TRST_582
    );
  P_CLKOUT_0_OBUF_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_Q_587,
      O => P_CLKOUT_0_OBUF_Q_146
    );
  P_CLKOUT_0_OBUF_Q_589 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_D_588,
      O => P_CLKOUT_0_OBUF_Q_587
    );
  P_CLKOUT_0_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN1,
      O => P_CLKOUT_0_OBUF_D_588
    );
  P_CLKOUT_0_OBUF_D1 : X_ZERO
    port map (
      O => P_CLKOUT_0_OBUF_D1_589
    );
  P_CLKOUT_0_OBUF_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN0,
      I1 => NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN1,
      O => P_CLKOUT_0_OBUF_D2_590
    );
  P_CLKOUT_0_OBUF_BUF0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF0_Q_591,
      O => P_CLKOUT_0_OBUF_BUF0_148
    );
  P_CLKOUT_0_OBUF_BUF0_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF0_D_592,
      O => P_CLKOUT_0_OBUF_BUF0_Q_591
    );
  P_CLKOUT_0_OBUF_BUF0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN1,
      O => P_CLKOUT_0_OBUF_BUF0_D_592
    );
  P_CLKOUT_0_OBUF_BUF0_D1 : X_ZERO
    port map (
      O => P_CLKOUT_0_OBUF_BUF0_D1_593
    );
  P_CLKOUT_0_OBUF_BUF0_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0,
      I1 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1,
      O => P_CLKOUT_0_OBUF_BUF0_D2_594
    );
  P_CLKOUT_0_OBUF_BUF1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF1_Q_595,
      O => P_CLKOUT_0_OBUF_BUF1_150
    );
  P_CLKOUT_0_OBUF_BUF1_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF1_D_596,
      O => P_CLKOUT_0_OBUF_BUF1_Q_595
    );
  P_CLKOUT_0_OBUF_BUF1_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN1,
      O => P_CLKOUT_0_OBUF_BUF1_D_596
    );
  P_CLKOUT_0_OBUF_BUF1_D1 : X_ZERO
    port map (
      O => P_CLKOUT_0_OBUF_BUF1_D1_597
    );
  P_CLKOUT_0_OBUF_BUF1_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0,
      I1 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1,
      O => P_CLKOUT_0_OBUF_BUF1_D2_598
    );
  P_CLKOUT_0_OBUF_BUF2 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF2_Q_599,
      O => P_CLKOUT_0_OBUF_BUF2_152
    );
  P_CLKOUT_0_OBUF_BUF2_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF2_D_600,
      O => P_CLKOUT_0_OBUF_BUF2_Q_599
    );
  P_CLKOUT_0_OBUF_BUF2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN1,
      O => P_CLKOUT_0_OBUF_BUF2_D_600
    );
  P_CLKOUT_0_OBUF_BUF2_D1 : X_ZERO
    port map (
      O => P_CLKOUT_0_OBUF_BUF2_D1_601
    );
  P_CLKOUT_0_OBUF_BUF2_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0,
      I1 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1,
      O => P_CLKOUT_0_OBUF_BUF2_D2_602
    );
  P_CLKOUT_0_OBUF_BUF3 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_Q_603,
      O => P_CLKOUT_0_OBUF_BUF3_154
    );
  P_CLKOUT_0_OBUF_BUF3_EXP : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_Q_604,
      O => P_CLKOUT_0_OBUF_BUF3_EXP_304
    );
  P_CLKOUT_0_OBUF_BUF3_Q : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_D_605,
      O => P_CLKOUT_0_OBUF_BUF3_Q_603
    );
  P_CLKOUT_0_OBUF_BUF3_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN1,
      O => P_CLKOUT_0_OBUF_BUF3_D_605
    );
  P_CLKOUT_0_OBUF_BUF3_D1 : X_ZERO
    port map (
      O => P_CLKOUT_0_OBUF_BUF3_D1_606
    );
  P_CLKOUT_0_OBUF_BUF3_D2 : X_AND2
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0,
      I1 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1,
      O => P_CLKOUT_0_OBUF_BUF3_D2_607
    );
  P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_Q : X_AND5
    port map (
      I0 => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN4,
      O => P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_Q_604
    );
  I_NINT6_OBUF_Q : X_BUF
    port map (
      I => I_NINT6_OBUF_Q_608,
      O => I_NINT6_OBUF_Q_156
    );
  I_NINT6_OBUF_Q_616 : X_BUF
    port map (
      I => I_NINT6_OBUF_D_609,
      O => I_NINT6_OBUF_Q_608
    );
  I_NINT6_OBUF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_NINT6_OBUF_D_IN0,
      I1 => NlwBufferSignal_I_NINT6_OBUF_D_IN1,
      O => I_NINT6_OBUF_D_609
    );
  I_NINT6_OBUF_D1 : X_ZERO
    port map (
      O => I_NINT6_OBUF_D1_610
    );
  I_NINT6_OBUF_D2 : X_ONE
    port map (
      O => I_NINT6_OBUF_D2_611
    );
  I_NINT6_OBUF_BUF0 : X_BUF
    port map (
      I => I_NINT6_OBUF_BUF0_Q_612,
      O => I_NINT6_OBUF_BUF0_158
    );
  I_NINT6_OBUF_BUF0_Q : X_BUF
    port map (
      I => I_NINT6_OBUF_BUF0_D_613,
      O => I_NINT6_OBUF_BUF0_Q_612
    );
  I_NINT6_OBUF_BUF0_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN0,
      I1 => NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN1,
      O => I_NINT6_OBUF_BUF0_D_613
    );
  I_NINT6_OBUF_BUF0_D1 : X_ZERO
    port map (
      O => I_NINT6_OBUF_BUF0_D1_614
    );
  I_NINT6_OBUF_BUF0_D2 : X_ONE
    port map (
      O => I_NINT6_OBUF_BUF0_D2_615
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_Q_616,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_617,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_Q_616
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN1,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_617
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D1_618
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_620
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_621
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_622
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN3,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_623
    );
  THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2 : X_OR4
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN3,
      O => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_619
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_Q_624,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_Q : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_625,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_Q_624
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN1,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_625
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D1_626
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_628
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN1,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_629
    );
  THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN1,
      O => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_627
    );
  cbp_x_2_cbp_x_2_TRST_UIM : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_Q_630,
      O => cbp_x_2_cbp_x_2_TRST_UIM_261
    );
  cbp_x_2_cbp_x_2_TRST_Q : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_D_631,
      O => cbp_x_2_cbp_x_2_TRST_Q_630
    );
  cbp_x_2_cbp_x_2_TRST_D : X_XOR2
    port map (
      I0 => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D_IN0,
      I1 => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN1,
      O => cbp_x_2_cbp_x_2_TRST_D_631
    );
  cbp_x_2_cbp_x_2_TRST_D1 : X_AND2
    port map (
      I0 => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN0,
      I1 => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN1,
      O => cbp_x_2_cbp_x_2_TRST_D1_632
    );
  cbp_x_2_cbp_x_2_TRST_D2 : X_AND3
    port map (
      I0 => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0,
      I1 => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1,
      I2 => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2,
      O => cbp_x_2_cbp_x_2_TRST_D2_633
    );
  Q_OpTx_FX_DC_519_UIM : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_Q_634,
      O => Q_OpTx_FX_DC_519_UIM_310
    );
  Q_OpTx_FX_DC_519_Q : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_D_635,
      O => Q_OpTx_FX_DC_519_Q_634
    );
  Q_OpTx_FX_DC_519_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_519_D_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_519_D_IN1,
      O => Q_OpTx_FX_DC_519_D_635
    );
  Q_OpTx_FX_DC_519_D1 : X_ZERO
    port map (
      O => Q_OpTx_FX_DC_519_D1_636
    );
  Q_OpTx_FX_DC_519_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN1,
      O => Q_OpTx_FX_DC_519_D2_PT_0_638
    );
  Q_OpTx_FX_DC_519_D2_PT_1 : X_AND3
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN0,
      I1 => NlwInverterSignal_OpTx_FX_DC_519_D2_PT_1_IN1,
      I2 => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN2,
      O => Q_OpTx_FX_DC_519_D2_PT_1_639
    );
  Q_OpTx_FX_DC_519_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_519_D2_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_519_D2_IN1,
      O => Q_OpTx_FX_DC_519_D2_637
    );
  Q_OpTx_FX_DC_1244_UIM : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_Q_640,
      O => Q_OpTx_FX_DC_1244_UIM_365
    );
  Q_OpTx_FX_DC_1244_Q : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D_641,
      O => Q_OpTx_FX_DC_1244_Q_640
    );
  Q_OpTx_FX_DC_1244_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_1244_D_IN1,
      O => Q_OpTx_FX_DC_1244_D_641
    );
  Q_OpTx_FX_DC_1244_D1 : X_ZERO
    port map (
      O => Q_OpTx_FX_DC_1244_D1_642
    );
  Q_OpTx_FX_DC_1244_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN1,
      O => Q_OpTx_FX_DC_1244_D2_PT_0_644
    );
  Q_OpTx_FX_DC_1244_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN1,
      O => Q_OpTx_FX_DC_1244_D2_PT_1_645
    );
  Q_OpTx_FX_DC_1244_D2_PT_2 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN0,
      I1 => NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_2_IN1,
      O => Q_OpTx_FX_DC_1244_D2_PT_2_646
    );
  Q_OpTx_FX_DC_1244_D2_PT_3 : X_AND4
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN0,
      I1 => NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_3_IN1,
      I2 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN2,
      I3 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN3,
      O => Q_OpTx_FX_DC_1244_D2_PT_3_647
    );
  Q_OpTx_FX_DC_1244_D2_PT_4 : X_AND5
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN1,
      I2 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN2,
      I3 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN3,
      I4 => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN4,
      O => Q_OpTx_FX_DC_1244_D2_PT_4_648
    );
  Q_OpTx_FX_DC_1244_D2 : X_OR5
    port map (
      I0 => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN0,
      I1 => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN1,
      I2 => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN2,
      I3 => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN3,
      I4 => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN4,
      O => Q_OpTx_FX_DC_1244_D2_643
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_Q_649,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_Q : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_650,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_Q_649
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN0,
      I1 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN1,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_650
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D1 : X_ZERO
    port map (
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D1_651
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN0,
      I1 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN1,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_653
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN0,
      I1 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN1,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_654
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2 : X_AND2
    port map (
      I0 => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0,
      I1 => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_655
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3 : X_AND3
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN0,
      I1 => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1,
      I2 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN2,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_656
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4 : X_AND4
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN0,
      I1 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN1,
      I2 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN2,
      I3 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN3,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_657
    );
  Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2 : X_OR5
    port map (
      I0 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN0,
      I1 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN1,
      I2 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN2,
      I3 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN3,
      I4 => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN4,
      O => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_652
    );
  Q_OpTx_INV_509_UIM : X_BUF
    port map (
      I => Q_OpTx_INV_509_Q_658,
      O => Q_OpTx_INV_509_UIM_460
    );
  Q_OpTx_INV_509_Q : X_BUF
    port map (
      I => Q_OpTx_INV_509_D_659,
      O => Q_OpTx_INV_509_Q_658
    );
  Q_OpTx_INV_509_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_OpTx_INV_509_D_IN0,
      I1 => NlwBufferSignal_OpTx_INV_509_D_IN1,
      O => Q_OpTx_INV_509_D_659
    );
  Q_OpTx_INV_509_D1 : X_ZERO
    port map (
      O => Q_OpTx_INV_509_D1_660
    );
  Q_OpTx_INV_509_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN0,
      I1 => NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN1,
      O => Q_OpTx_INV_509_D2_PT_0_663
    );
  Q_OpTx_INV_509_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN0,
      I1 => NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN1,
      O => Q_OpTx_INV_509_D2_PT_1_665
    );
  Q_OpTx_INV_509_D2_PT_2 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN0,
      I1 => NlwInverterSignal_OpTx_INV_509_D2_PT_2_IN1,
      O => Q_OpTx_INV_509_D2_PT_2_666
    );
  Q_OpTx_INV_509_D2_PT_3 : X_AND3
    port map (
      I0 => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN0,
      I1 => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN1,
      I2 => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN2,
      O => Q_OpTx_INV_509_D2_PT_3_667
    );
  Q_OpTx_INV_509_D2_PT_4 : X_AND3
    port map (
      I0 => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN0,
      I1 => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN1,
      I2 => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN2,
      O => Q_OpTx_INV_509_D2_PT_4_668
    );
  Q_OpTx_INV_509_D2_PT_5 : X_AND3
    port map (
      I0 => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN0,
      I1 => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN1,
      I2 => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN2,
      O => Q_OpTx_INV_509_D2_PT_5_669
    );
  Q_OpTx_INV_509_D2_PT_6 : X_AND3
    port map (
      I0 => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN0,
      I1 => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN1,
      I2 => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN2,
      O => Q_OpTx_INV_509_D2_PT_6_670
    );
  Q_OpTx_INV_509_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_OpTx_INV_509_D2_IN0,
      I1 => NlwBufferSignal_OpTx_INV_509_D2_IN1,
      I2 => NlwBufferSignal_OpTx_INV_509_D2_IN2,
      I3 => NlwBufferSignal_OpTx_INV_509_D2_IN3,
      I4 => NlwBufferSignal_OpTx_INV_509_D2_IN4,
      I5 => NlwBufferSignal_OpTx_INV_509_D2_IN5,
      I6 => NlwBufferSignal_OpTx_INV_509_D2_IN6,
      O => Q_OpTx_INV_509_D2_661
    );
  THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_Q_671,
      O => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427
    );
  THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_Q : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_672,
      O => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_Q_671
    );
  THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN1,
      O => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_672
    );
  THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D1 : X_ZERO
    port map (
      O => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D1_673
    );
  THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2 : X_AND4
    port map (
      I0 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN1,
      I2 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN2,
      I3 => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN3,
      O => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_674
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_Q_675,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_Q : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_676,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_Q_675
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN1,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_676
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D1 : X_ZERO
    port map (
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D1_677
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN1,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_680
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1 : X_AND2
    port map (
      I0 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN1,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_682
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2 : X_AND8
    port map (
      I0 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN4,
      I5 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5,
      I6 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN6,
      I7 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_683
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3 : X_AND8
    port map (
      I0 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN4,
      I5 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5,
      I6 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN6,
      I7 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN7,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_684
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4 : X_AND8
    port map (
      I0 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN4,
      I5 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5,
      I6 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6,
      I7 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN7,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_685
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5 : X_AND8
    port map (
      I0 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN4,
      I5 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5,
      I6 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN6,
      I7 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_686
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6 : X_AND8
    port map (
      I0 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN4,
      I5 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5,
      I6 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN6,
      I7 => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_687
    );
  Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2 : X_OR7
    port map (
      I0 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN0,
      I1 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN1,
      I2 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN2,
      I3 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN3,
      I4 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN4,
      I5 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN5,
      I6 => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN6,
      O => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_678
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_Q_688,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_Q : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_689,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_Q_688
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_689
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D1 : X_ZERO
    port map (
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D1_690
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0,
      I1 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_692
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN1,
      I2 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2,
      I3 => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_693
    );
  THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2 : X_OR2
    port map (
      I0 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN0,
      I1 => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN1,
      O => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_691
    );
  N0_N0_TRST_UIM : X_BUF
    port map (
      I => N0_N0_TRST_Q_694,
      O => N0_N0_TRST_UIM_586
    );
  N0_N0_TRST_EXP : X_BUF
    port map (
      I => N0_N0_TRST_EXP_tsimrenamed_net_Q_695,
      O => N0_N0_TRST_EXP_255
    );
  N0_N0_TRST_Q : X_BUF
    port map (
      I => N0_N0_TRST_D_696,
      O => N0_N0_TRST_Q_694
    );
  N0_N0_TRST_D : X_XOR2
    port map (
      I0 => NlwBufferSignal_N0_N0_TRST_D_IN0,
      I1 => NlwBufferSignal_N0_N0_TRST_D_IN1,
      O => N0_N0_TRST_D_696
    );
  N0_N0_TRST_D1 : X_ZERO
    port map (
      O => N0_N0_TRST_D1_697
    );
  N0_N0_TRST_D2_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN0,
      I1 => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN1,
      I2 => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN2,
      O => N0_N0_TRST_D2_PT_0_699
    );
  N0_N0_TRST_D2_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN0,
      I1 => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN1,
      I2 => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN2,
      I3 => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN3,
      O => N0_N0_TRST_D2_PT_1_700
    );
  N0_N0_TRST_D2_PT_2 : X_AND5
    port map (
      I0 => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN0,
      I1 => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN1,
      I2 => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN2,
      I3 => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN3,
      I4 => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN4,
      O => N0_N0_TRST_D2_PT_2_701
    );
  N0_N0_TRST_D2 : X_OR3
    port map (
      I0 => NlwBufferSignal_N0_N0_TRST_D2_IN0,
      I1 => NlwBufferSignal_N0_N0_TRST_D2_IN1,
      I2 => NlwBufferSignal_N0_N0_TRST_D2_IN2,
      O => N0_N0_TRST_D2_698
    );
  N0_N0_TRST_EXP_tsimrenamed_net_Q : X_AND5
    port map (
      I0 => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0,
      I1 => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN2,
      I3 => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN4,
      O => N0_N0_TRST_EXP_tsimrenamed_net_Q_695
    );
  EXP14_EXP : X_BUF
    port map (
      I => EXP14_EXP_tsimrenamed_net_Q_702,
      O => EXP14_EXP_302
    );
  EXP14_EXP_PT_0 : X_AND3
    port map (
      I0 => NlwBufferSignal_EXP14_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP14_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP14_EXP_PT_0_IN2,
      O => EXP14_EXP_PT_0_703
    );
  EXP14_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP14_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP14_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP14_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP14_EXP_PT_1_IN3,
      O => EXP14_EXP_PT_1_704
    );
  EXP14_EXP_tsimrenamed_net_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN1,
      O => EXP14_EXP_tsimrenamed_net_Q_702
    );
  EXP15_EXP : X_BUF
    port map (
      I => EXP15_EXP_tsimrenamed_net_Q_705,
      O => EXP15_EXP_405
    );
  EXP15_EXP_PT_0 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP15_EXP_PT_0_IN2,
      I3 => NlwInverterSignal_EXP15_EXP_PT_0_IN3,
      I4 => NlwInverterSignal_EXP15_EXP_PT_0_IN4,
      I5 => NlwInverterSignal_EXP15_EXP_PT_0_IN5,
      I6 => NlwBufferSignal_EXP15_EXP_PT_0_IN6,
      I7 => NlwBufferSignal_EXP15_EXP_PT_0_IN7,
      O => EXP15_EXP_PT_0_706
    );
  EXP15_EXP_PT_1 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP15_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP15_EXP_PT_1_IN3,
      I4 => NlwInverterSignal_EXP15_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP15_EXP_PT_1_IN5,
      I6 => NlwBufferSignal_EXP15_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP15_EXP_PT_1_IN7,
      O => EXP15_EXP_PT_1_707
    );
  EXP15_EXP_PT_2 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP15_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP15_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP15_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP15_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP15_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP15_EXP_PT_2_IN7,
      O => EXP15_EXP_PT_2_708
    );
  EXP15_EXP_PT_3 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_PT_3_IN1,
      I2 => NlwInverterSignal_EXP15_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP15_EXP_PT_3_IN3,
      I4 => NlwInverterSignal_EXP15_EXP_PT_3_IN4,
      I5 => NlwInverterSignal_EXP15_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP15_EXP_PT_3_IN6,
      I7 => NlwBufferSignal_EXP15_EXP_PT_3_IN7,
      O => EXP15_EXP_PT_3_709
    );
  EXP15_EXP_PT_4 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP15_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP15_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP15_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP15_EXP_PT_4_IN5,
      I6 => NlwBufferSignal_EXP15_EXP_PT_4_IN6,
      I7 => NlwInverterSignal_EXP15_EXP_PT_4_IN7,
      O => EXP15_EXP_PT_4_710
    );
  EXP15_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN4,
      O => EXP15_EXP_tsimrenamed_net_Q_705
    );
  EXP16_EXP : X_BUF
    port map (
      I => EXP16_EXP_tsimrenamed_net_Q_711,
      O => EXP16_EXP_407
    );
  EXP16_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP16_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP16_EXP_PT_0_IN1,
      O => EXP16_EXP_PT_0_713
    );
  EXP16_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP16_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP16_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP16_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP16_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP16_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP16_EXP_PT_1_IN5,
      I6 => NlwInverterSignal_EXP16_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP16_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP16_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP16_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP16_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP16_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP16_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP16_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP16_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP16_EXP_PT_1_IN15,
      O => EXP16_EXP_PT_1_714
    );
  EXP16_EXP_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP16_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP16_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP16_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP16_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP16_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP16_EXP_PT_2_IN5,
      I6 => NlwInverterSignal_EXP16_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP16_EXP_PT_2_IN7,
      I8 => NlwBufferSignal_EXP16_EXP_PT_2_IN8,
      I9 => NlwBufferSignal_EXP16_EXP_PT_2_IN9,
      I10 => NlwBufferSignal_EXP16_EXP_PT_2_IN10,
      I11 => NlwBufferSignal_EXP16_EXP_PT_2_IN11,
      I12 => NlwBufferSignal_EXP16_EXP_PT_2_IN12,
      I13 => NlwBufferSignal_EXP16_EXP_PT_2_IN13,
      I14 => NlwBufferSignal_EXP16_EXP_PT_2_IN14,
      I15 => NlwBufferSignal_EXP16_EXP_PT_2_IN15,
      O => EXP16_EXP_PT_2_715
    );
  EXP16_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP16_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP16_EXP_PT_3_IN1,
      I2 => NlwInverterSignal_EXP16_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP16_EXP_PT_3_IN3,
      I4 => NlwInverterSignal_EXP16_EXP_PT_3_IN4,
      I5 => NlwInverterSignal_EXP16_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP16_EXP_PT_3_IN6,
      I7 => NlwBufferSignal_EXP16_EXP_PT_3_IN7,
      I8 => NlwInverterSignal_EXP16_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP16_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP16_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP16_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP16_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP16_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP16_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP16_EXP_PT_3_IN15,
      O => EXP16_EXP_PT_3_716
    );
  EXP16_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP16_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP16_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP16_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP16_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP16_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP16_EXP_PT_4_IN5,
      I6 => NlwInverterSignal_EXP16_EXP_PT_4_IN6,
      I7 => NlwInverterSignal_EXP16_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP16_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP16_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP16_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP16_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP16_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP16_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP16_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP16_EXP_PT_4_IN15,
      O => EXP16_EXP_PT_4_717
    );
  EXP16_EXP_PT_5 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP16_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP16_EXP_PT_5_IN1,
      I2 => NlwInverterSignal_EXP16_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP16_EXP_PT_5_IN3,
      I4 => NlwInverterSignal_EXP16_EXP_PT_5_IN4,
      I5 => NlwInverterSignal_EXP16_EXP_PT_5_IN5,
      I6 => NlwBufferSignal_EXP16_EXP_PT_5_IN6,
      I7 => NlwBufferSignal_EXP16_EXP_PT_5_IN7,
      I8 => NlwBufferSignal_EXP16_EXP_PT_5_IN8,
      I9 => NlwBufferSignal_EXP16_EXP_PT_5_IN9,
      I10 => NlwBufferSignal_EXP16_EXP_PT_5_IN10,
      I11 => NlwBufferSignal_EXP16_EXP_PT_5_IN11,
      I12 => NlwBufferSignal_EXP16_EXP_PT_5_IN12,
      I13 => NlwBufferSignal_EXP16_EXP_PT_5_IN13,
      I14 => NlwBufferSignal_EXP16_EXP_PT_5_IN14,
      I15 => NlwBufferSignal_EXP16_EXP_PT_5_IN15,
      O => EXP16_EXP_PT_5_718
    );
  EXP16_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN5,
      O => EXP16_EXP_tsimrenamed_net_Q_711
    );
  EXP17_EXP : X_BUF
    port map (
      I => EXP17_EXP_tsimrenamed_net_Q_719,
      O => EXP17_EXP_712
    );
  EXP17_EXP_PT_0 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP17_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP17_EXP_PT_0_IN1,
      I2 => NlwInverterSignal_EXP17_EXP_PT_0_IN2,
      I3 => NlwInverterSignal_EXP17_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP17_EXP_PT_0_IN4,
      I5 => NlwInverterSignal_EXP17_EXP_PT_0_IN5,
      I6 => NlwBufferSignal_EXP17_EXP_PT_0_IN6,
      I7 => NlwInverterSignal_EXP17_EXP_PT_0_IN7,
      I8 => NlwInverterSignal_EXP17_EXP_PT_0_IN8,
      I9 => NlwBufferSignal_EXP17_EXP_PT_0_IN9,
      I10 => NlwBufferSignal_EXP17_EXP_PT_0_IN10,
      I11 => NlwBufferSignal_EXP17_EXP_PT_0_IN11,
      I12 => NlwBufferSignal_EXP17_EXP_PT_0_IN12,
      I13 => NlwBufferSignal_EXP17_EXP_PT_0_IN13,
      I14 => NlwBufferSignal_EXP17_EXP_PT_0_IN14,
      I15 => NlwBufferSignal_EXP17_EXP_PT_0_IN15,
      O => EXP17_EXP_PT_0_720
    );
  EXP17_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP17_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP17_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP17_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP17_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP17_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP17_EXP_PT_1_IN5,
      I6 => NlwInverterSignal_EXP17_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP17_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP17_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP17_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP17_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP17_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP17_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP17_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP17_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP17_EXP_PT_1_IN15,
      O => EXP17_EXP_PT_1_721
    );
  EXP17_EXP_tsimrenamed_net_Q : X_OR2
    port map (
      I0 => NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN1,
      O => EXP17_EXP_tsimrenamed_net_Q_719
    );
  EXP18_EXP : X_BUF
    port map (
      I => EXP18_EXP_tsimrenamed_net_Q_722,
      O => EXP18_EXP_723
    );
  EXP18_EXP_PT_0 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP18_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP18_EXP_PT_0_IN1,
      I2 => NlwInverterSignal_EXP18_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP18_EXP_PT_0_IN3,
      I4 => NlwInverterSignal_EXP18_EXP_PT_0_IN4,
      I5 => NlwInverterSignal_EXP18_EXP_PT_0_IN5,
      I6 => NlwBufferSignal_EXP18_EXP_PT_0_IN6,
      I7 => NlwBufferSignal_EXP18_EXP_PT_0_IN7,
      O => EXP18_EXP_PT_0_724
    );
  EXP18_EXP_PT_1 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP18_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP18_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP18_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP18_EXP_PT_1_IN3,
      I4 => NlwInverterSignal_EXP18_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP18_EXP_PT_1_IN5,
      I6 => NlwBufferSignal_EXP18_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP18_EXP_PT_1_IN7,
      O => EXP18_EXP_PT_1_725
    );
  EXP18_EXP_PT_2 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP18_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP18_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP18_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP18_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP18_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP18_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP18_EXP_PT_2_IN6,
      I7 => NlwInverterSignal_EXP18_EXP_PT_2_IN7,
      O => EXP18_EXP_PT_2_726
    );
  EXP18_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP18_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP18_EXP_PT_3_IN1,
      I2 => NlwInverterSignal_EXP18_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP18_EXP_PT_3_IN3,
      I4 => NlwInverterSignal_EXP18_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP18_EXP_PT_3_IN5,
      I6 => NlwInverterSignal_EXP18_EXP_PT_3_IN6,
      I7 => NlwInverterSignal_EXP18_EXP_PT_3_IN7,
      I8 => NlwBufferSignal_EXP18_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP18_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP18_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP18_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP18_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP18_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP18_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP18_EXP_PT_3_IN15,
      O => EXP18_EXP_PT_3_727
    );
  EXP18_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP18_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP18_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP18_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP18_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP18_EXP_PT_4_IN4,
      I5 => NlwInverterSignal_EXP18_EXP_PT_4_IN5,
      I6 => NlwBufferSignal_EXP18_EXP_PT_4_IN6,
      I7 => NlwBufferSignal_EXP18_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP18_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP18_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP18_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP18_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP18_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP18_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP18_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP18_EXP_PT_4_IN15,
      O => EXP18_EXP_PT_4_728
    );
  EXP18_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN4,
      O => EXP18_EXP_tsimrenamed_net_Q_722
    );
  EXP19_EXP : X_BUF
    port map (
      I => EXP19_EXP_tsimrenamed_net_Q_729,
      O => EXP19_EXP_392
    );
  EXP19_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP19_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP19_EXP_PT_0_IN1,
      O => EXP19_EXP_PT_0_730
    );
  EXP19_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP19_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP19_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP19_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP19_EXP_PT_1_IN3,
      O => EXP19_EXP_PT_1_731
    );
  EXP19_EXP_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP19_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP19_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP19_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP19_EXP_PT_2_IN3,
      O => EXP19_EXP_PT_2_732
    );
  EXP19_EXP_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP19_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP19_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP19_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP19_EXP_PT_3_IN3,
      O => EXP19_EXP_PT_3_733
    );
  EXP19_EXP_PT_4 : X_AND5
    port map (
      I0 => NlwInverterSignal_EXP19_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP19_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP19_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP19_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP19_EXP_PT_4_IN4,
      O => EXP19_EXP_PT_4_734
    );
  EXP19_EXP_PT_5 : X_AND7
    port map (
      I0 => NlwBufferSignal_EXP19_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP19_EXP_PT_5_IN1,
      I2 => NlwInverterSignal_EXP19_EXP_PT_5_IN2,
      I3 => NlwInverterSignal_EXP19_EXP_PT_5_IN3,
      I4 => NlwInverterSignal_EXP19_EXP_PT_5_IN4,
      I5 => NlwBufferSignal_EXP19_EXP_PT_5_IN5,
      I6 => NlwBufferSignal_EXP19_EXP_PT_5_IN6,
      O => EXP19_EXP_PT_5_735
    );
  EXP19_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN5,
      O => EXP19_EXP_tsimrenamed_net_Q_729
    );
  EXP20_EXP : X_BUF
    port map (
      I => EXP20_EXP_tsimrenamed_net_Q_736,
      O => EXP20_EXP_380
    );
  EXP20_EXP_PT_0 : X_AND3
    port map (
      I0 => NlwInverterSignal_EXP20_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP20_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_PT_0_IN2,
      O => EXP20_EXP_PT_0_737
    );
  EXP20_EXP_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_EXP20_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP20_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_PT_1_IN2,
      O => EXP20_EXP_PT_1_738
    );
  EXP20_EXP_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_EXP20_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP20_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_PT_2_IN2,
      O => EXP20_EXP_PT_2_739
    );
  EXP20_EXP_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_EXP20_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP20_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP20_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP20_EXP_PT_3_IN4,
      O => EXP20_EXP_PT_3_740
    );
  EXP20_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP20_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP20_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP20_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP20_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP20_EXP_PT_4_IN5,
      O => EXP20_EXP_PT_4_741
    );
  EXP20_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN4,
      O => EXP20_EXP_tsimrenamed_net_Q_736
    );
  EXP21_EXP : X_BUF
    port map (
      I => EXP21_EXP_tsimrenamed_net_Q_742,
      O => EXP21_EXP_743
    );
  EXP21_EXP_PT_0 : X_AND6
    port map (
      I0 => NlwBufferSignal_EXP21_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP21_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_PT_0_IN4,
      I5 => NlwInverterSignal_EXP21_EXP_PT_0_IN5,
      O => EXP21_EXP_PT_0_744
    );
  EXP21_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP21_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP21_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_PT_1_IN4,
      I5 => NlwBufferSignal_EXP21_EXP_PT_1_IN5,
      I6 => NlwInverterSignal_EXP21_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP21_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP21_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP21_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP21_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP21_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP21_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP21_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP21_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP21_EXP_PT_1_IN15,
      O => EXP21_EXP_PT_1_745
    );
  EXP21_EXP_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP21_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP21_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP21_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP21_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP21_EXP_PT_2_IN7,
      I8 => NlwBufferSignal_EXP21_EXP_PT_2_IN8,
      I9 => NlwBufferSignal_EXP21_EXP_PT_2_IN9,
      I10 => NlwBufferSignal_EXP21_EXP_PT_2_IN10,
      I11 => NlwBufferSignal_EXP21_EXP_PT_2_IN11,
      I12 => NlwBufferSignal_EXP21_EXP_PT_2_IN12,
      I13 => NlwBufferSignal_EXP21_EXP_PT_2_IN13,
      I14 => NlwBufferSignal_EXP21_EXP_PT_2_IN14,
      I15 => NlwBufferSignal_EXP21_EXP_PT_2_IN15,
      O => EXP21_EXP_PT_2_746
    );
  EXP21_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP21_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP21_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_PT_3_IN4,
      I5 => NlwInverterSignal_EXP21_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP21_EXP_PT_3_IN6,
      I7 => NlwBufferSignal_EXP21_EXP_PT_3_IN7,
      I8 => NlwBufferSignal_EXP21_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP21_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP21_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP21_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP21_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP21_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP21_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP21_EXP_PT_3_IN15,
      O => EXP21_EXP_PT_3_747
    );
  EXP21_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP21_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP21_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP21_EXP_PT_4_IN5,
      I6 => NlwInverterSignal_EXP21_EXP_PT_4_IN6,
      I7 => NlwBufferSignal_EXP21_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP21_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP21_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP21_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP21_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP21_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP21_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP21_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP21_EXP_PT_4_IN15,
      O => EXP21_EXP_PT_4_748
    );
  EXP21_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN4,
      O => EXP21_EXP_tsimrenamed_net_Q_742
    );
  EXP22_EXP : X_BUF
    port map (
      I => EXP22_EXP_tsimrenamed_net_Q_749,
      O => EXP22_EXP_662
    );
  EXP22_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP22_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP22_EXP_PT_0_IN1,
      O => EXP22_EXP_PT_0_750
    );
  EXP22_EXP_PT_1 : X_AND3
    port map (
      I0 => NlwInverterSignal_EXP22_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP22_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP22_EXP_PT_1_IN2,
      O => EXP22_EXP_PT_1_751
    );
  EXP22_EXP_PT_2 : X_AND3
    port map (
      I0 => NlwInverterSignal_EXP22_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP22_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP22_EXP_PT_2_IN2,
      O => EXP22_EXP_PT_2_752
    );
  EXP22_EXP_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP22_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP22_EXP_PT_3_IN1,
      I2 => NlwInverterSignal_EXP22_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP22_EXP_PT_3_IN3,
      O => EXP22_EXP_PT_3_753
    );
  EXP22_EXP_PT_4 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP22_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP22_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP22_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP22_EXP_PT_4_IN3,
      O => EXP22_EXP_PT_4_754
    );
  EXP22_EXP_PT_5 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP22_EXP_PT_5_IN0,
      I1 => NlwInverterSignal_EXP22_EXP_PT_5_IN1,
      I2 => NlwInverterSignal_EXP22_EXP_PT_5_IN2,
      I3 => NlwInverterSignal_EXP22_EXP_PT_5_IN3,
      O => EXP22_EXP_PT_5_755
    );
  EXP22_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN5,
      O => EXP22_EXP_tsimrenamed_net_Q_749
    );
  EXP23_EXP : X_BUF
    port map (
      I => EXP23_EXP_tsimrenamed_net_Q_756,
      O => EXP23_EXP_664
    );
  EXP23_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP23_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP23_EXP_PT_0_IN1,
      O => EXP23_EXP_PT_0_758
    );
  EXP23_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP23_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP23_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP23_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP23_EXP_PT_1_IN3,
      O => EXP23_EXP_PT_1_759
    );
  EXP23_EXP_PT_2 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP23_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP23_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP23_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP23_EXP_PT_2_IN3,
      O => EXP23_EXP_PT_2_760
    );
  EXP23_EXP_PT_3 : X_AND5
    port map (
      I0 => NlwInverterSignal_EXP23_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP23_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP23_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP23_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP23_EXP_PT_3_IN4,
      O => EXP23_EXP_PT_3_761
    );
  EXP23_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP23_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP23_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP23_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP23_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP23_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP23_EXP_PT_4_IN5,
      O => EXP23_EXP_PT_4_762
    );
  EXP23_EXP_PT_5 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP23_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP23_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP23_EXP_PT_5_IN2,
      I3 => NlwInverterSignal_EXP23_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP23_EXP_PT_5_IN4,
      I5 => NlwBufferSignal_EXP23_EXP_PT_5_IN5,
      O => EXP23_EXP_PT_5_763
    );
  EXP23_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN5,
      O => EXP23_EXP_tsimrenamed_net_Q_756
    );
  EXP24_EXP : X_BUF
    port map (
      I => EXP24_EXP_tsimrenamed_net_Q_764,
      O => EXP24_EXP_757
    );
  EXP24_EXP_tsimrenamed_net_Q : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN5,
      I6 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN6,
      I7 => NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN7,
      I8 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN8,
      I9 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN9,
      I10 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN10,
      I11 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN11,
      I12 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN12,
      I13 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN13,
      I14 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN14,
      I15 => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN15,
      O => EXP24_EXP_tsimrenamed_net_Q_764
    );
  EXP25_EXP : X_BUF
    port map (
      I => EXP25_EXP_tsimrenamed_net_Q_765,
      O => EXP25_EXP_766
    );
  EXP25_EXP_PT_0 : X_AND5
    port map (
      I0 => NlwInverterSignal_EXP25_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP25_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP25_EXP_PT_0_IN2,
      I3 => NlwInverterSignal_EXP25_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP25_EXP_PT_0_IN4,
      O => EXP25_EXP_PT_0_767
    );
  EXP25_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP25_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP25_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP25_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP25_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP25_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP25_EXP_PT_1_IN5,
      O => EXP25_EXP_PT_1_768
    );
  EXP25_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP25_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP25_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP25_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP25_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP25_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP25_EXP_PT_2_IN5,
      O => EXP25_EXP_PT_2_769
    );
  EXP25_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP25_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP25_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP25_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP25_EXP_PT_3_IN3,
      I4 => NlwInverterSignal_EXP25_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP25_EXP_PT_3_IN5,
      O => EXP25_EXP_PT_3_770
    );
  EXP25_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP25_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP25_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP25_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP25_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP25_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP25_EXP_PT_4_IN5,
      O => EXP25_EXP_PT_4_771
    );
  EXP25_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN4,
      O => EXP25_EXP_tsimrenamed_net_Q_765
    );
  EXP26_EXP : X_BUF
    port map (
      I => EXP26_EXP_tsimrenamed_net_Q_772,
      O => EXP26_EXP_423
    );
  EXP26_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP26_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP26_EXP_PT_0_IN1,
      O => EXP26_EXP_PT_0_773
    );
  EXP26_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP26_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP26_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP26_EXP_PT_1_IN2,
      I3 => NlwInverterSignal_EXP26_EXP_PT_1_IN3,
      O => EXP26_EXP_PT_1_774
    );
  EXP26_EXP_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP26_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP26_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP26_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP26_EXP_PT_2_IN3,
      O => EXP26_EXP_PT_2_775
    );
  EXP26_EXP_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP26_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP26_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP26_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP26_EXP_PT_3_IN3,
      O => EXP26_EXP_PT_3_776
    );
  EXP26_EXP_PT_4 : X_AND5
    port map (
      I0 => NlwBufferSignal_EXP26_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP26_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP26_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP26_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP26_EXP_PT_4_IN4,
      O => EXP26_EXP_PT_4_777
    );
  EXP26_EXP_PT_5 : X_AND5
    port map (
      I0 => NlwBufferSignal_EXP26_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP26_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP26_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP26_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP26_EXP_PT_5_IN4,
      O => EXP26_EXP_PT_5_778
    );
  EXP26_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN5,
      O => EXP26_EXP_tsimrenamed_net_Q_772
    );
  EXP27_EXP : X_BUF
    port map (
      I => EXP27_EXP_tsimrenamed_net_Q_779,
      O => EXP27_EXP_679
    );
  EXP27_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP27_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP27_EXP_PT_0_IN1,
      O => EXP27_EXP_PT_0_780
    );
  EXP27_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP27_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP27_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP27_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP27_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP27_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP27_EXP_PT_1_IN5,
      O => EXP27_EXP_PT_1_781
    );
  EXP27_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP27_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP27_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP27_EXP_PT_2_IN2,
      I3 => NlwInverterSignal_EXP27_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP27_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP27_EXP_PT_2_IN5,
      O => EXP27_EXP_PT_2_782
    );
  EXP27_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP27_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP27_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP27_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP27_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP27_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP27_EXP_PT_3_IN5,
      O => EXP27_EXP_PT_3_783
    );
  EXP27_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP27_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP27_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP27_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP27_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP27_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP27_EXP_PT_4_IN5,
      O => EXP27_EXP_PT_4_784
    );
  EXP27_EXP_PT_5 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP27_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP27_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP27_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP27_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP27_EXP_PT_5_IN4,
      I5 => NlwBufferSignal_EXP27_EXP_PT_5_IN5,
      I6 => NlwInverterSignal_EXP27_EXP_PT_5_IN6,
      I7 => NlwBufferSignal_EXP27_EXP_PT_5_IN7,
      O => EXP27_EXP_PT_5_785
    );
  EXP27_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN5,
      O => EXP27_EXP_tsimrenamed_net_Q_779
    );
  EXP28_EXP : X_BUF
    port map (
      I => EXP28_EXP_tsimrenamed_net_Q_786,
      O => EXP28_EXP_681
    );
  EXP28_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwInverterSignal_EXP28_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP28_EXP_PT_0_IN1,
      O => EXP28_EXP_PT_0_787
    );
  EXP28_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP28_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP28_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP28_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP28_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP28_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP28_EXP_PT_1_IN5,
      O => EXP28_EXP_PT_1_788
    );
  EXP28_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP28_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP28_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP28_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP28_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP28_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP28_EXP_PT_2_IN5,
      O => EXP28_EXP_PT_2_789
    );
  EXP28_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP28_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP28_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP28_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP28_EXP_PT_3_IN3,
      I4 => NlwInverterSignal_EXP28_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP28_EXP_PT_3_IN5,
      O => EXP28_EXP_PT_3_790
    );
  EXP28_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP28_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP28_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP28_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP28_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP28_EXP_PT_4_IN4,
      I5 => NlwInverterSignal_EXP28_EXP_PT_4_IN5,
      O => EXP28_EXP_PT_4_791
    );
  EXP28_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN4,
      O => EXP28_EXP_tsimrenamed_net_Q_786
    );
  EXP29_EXP : X_BUF
    port map (
      I => EXP29_EXP_tsimrenamed_net_Q_792,
      O => EXP29_EXP_793
    );
  EXP29_EXP_PT_0 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP29_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP29_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_PT_0_IN4,
      I5 => NlwBufferSignal_EXP29_EXP_PT_0_IN5,
      I6 => NlwInverterSignal_EXP29_EXP_PT_0_IN6,
      I7 => NlwInverterSignal_EXP29_EXP_PT_0_IN7,
      I8 => NlwBufferSignal_EXP29_EXP_PT_0_IN8,
      I9 => NlwBufferSignal_EXP29_EXP_PT_0_IN9,
      I10 => NlwBufferSignal_EXP29_EXP_PT_0_IN10,
      I11 => NlwBufferSignal_EXP29_EXP_PT_0_IN11,
      I12 => NlwBufferSignal_EXP29_EXP_PT_0_IN12,
      I13 => NlwBufferSignal_EXP29_EXP_PT_0_IN13,
      I14 => NlwBufferSignal_EXP29_EXP_PT_0_IN14,
      I15 => NlwBufferSignal_EXP29_EXP_PT_0_IN15,
      O => EXP29_EXP_PT_0_794
    );
  EXP29_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP29_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP29_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP29_EXP_PT_1_IN5,
      I6 => NlwBufferSignal_EXP29_EXP_PT_1_IN6,
      I7 => NlwInverterSignal_EXP29_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP29_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP29_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP29_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP29_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP29_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP29_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP29_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP29_EXP_PT_1_IN15,
      O => EXP29_EXP_PT_1_795
    );
  EXP29_EXP_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP29_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP29_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP29_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP29_EXP_PT_2_IN6,
      I7 => NlwInverterSignal_EXP29_EXP_PT_2_IN7,
      I8 => NlwBufferSignal_EXP29_EXP_PT_2_IN8,
      I9 => NlwBufferSignal_EXP29_EXP_PT_2_IN9,
      I10 => NlwBufferSignal_EXP29_EXP_PT_2_IN10,
      I11 => NlwBufferSignal_EXP29_EXP_PT_2_IN11,
      I12 => NlwBufferSignal_EXP29_EXP_PT_2_IN12,
      I13 => NlwBufferSignal_EXP29_EXP_PT_2_IN13,
      I14 => NlwBufferSignal_EXP29_EXP_PT_2_IN14,
      I15 => NlwBufferSignal_EXP29_EXP_PT_2_IN15,
      O => EXP29_EXP_PT_2_796
    );
  EXP29_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP29_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP29_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP29_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP29_EXP_PT_3_IN6,
      I7 => NlwInverterSignal_EXP29_EXP_PT_3_IN7,
      I8 => NlwBufferSignal_EXP29_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP29_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP29_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP29_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP29_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP29_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP29_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP29_EXP_PT_3_IN15,
      O => EXP29_EXP_PT_3_797
    );
  EXP29_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP29_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP29_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP29_EXP_PT_4_IN5,
      I6 => NlwInverterSignal_EXP29_EXP_PT_4_IN6,
      I7 => NlwBufferSignal_EXP29_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP29_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP29_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP29_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP29_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP29_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP29_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP29_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP29_EXP_PT_4_IN15,
      O => EXP29_EXP_PT_4_798
    );
  EXP29_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN4,
      O => EXP29_EXP_tsimrenamed_net_Q_792
    );
  EXP30_EXP : X_BUF
    port map (
      I => EXP30_EXP_tsimrenamed_net_Q_799,
      O => EXP30_EXP_361
    );
  EXP30_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP30_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP30_EXP_PT_0_IN1,
      O => EXP30_EXP_PT_0_800
    );
  EXP30_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP30_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP30_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP30_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP30_EXP_PT_1_IN3,
      I4 => NlwInverterSignal_EXP30_EXP_PT_1_IN4,
      I5 => NlwBufferSignal_EXP30_EXP_PT_1_IN5,
      O => EXP30_EXP_PT_1_801
    );
  EXP30_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP30_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP30_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP30_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP30_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP30_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP30_EXP_PT_2_IN5,
      O => EXP30_EXP_PT_2_802
    );
  EXP30_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP30_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP30_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP30_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP30_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP30_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP30_EXP_PT_3_IN5,
      O => EXP30_EXP_PT_3_803
    );
  EXP30_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP30_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP30_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP30_EXP_PT_4_IN2,
      I3 => NlwInverterSignal_EXP30_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP30_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP30_EXP_PT_4_IN5,
      O => EXP30_EXP_PT_4_804
    );
  EXP30_EXP_PT_5 : X_AND7
    port map (
      I0 => NlwBufferSignal_EXP30_EXP_PT_5_IN0,
      I1 => NlwInverterSignal_EXP30_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP30_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP30_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP30_EXP_PT_5_IN4,
      I5 => NlwInverterSignal_EXP30_EXP_PT_5_IN5,
      I6 => NlwBufferSignal_EXP30_EXP_PT_5_IN6,
      O => EXP30_EXP_PT_5_805
    );
  EXP30_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN5,
      O => EXP30_EXP_tsimrenamed_net_Q_799
    );
  EXP31_EXP : X_BUF
    port map (
      I => EXP31_EXP_tsimrenamed_net_Q_806,
      O => EXP31_EXP_363
    );
  EXP31_EXP_PT_0 : X_AND8
    port map (
      I0 => NlwBufferSignal_EXP31_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP31_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_PT_0_IN4,
      I5 => NlwBufferSignal_EXP31_EXP_PT_0_IN5,
      I6 => NlwInverterSignal_EXP31_EXP_PT_0_IN6,
      I7 => NlwBufferSignal_EXP31_EXP_PT_0_IN7,
      O => EXP31_EXP_PT_0_807
    );
  EXP31_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP31_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP31_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP31_EXP_PT_1_IN5,
      I6 => NlwBufferSignal_EXP31_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP31_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP31_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP31_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP31_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP31_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP31_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP31_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP31_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP31_EXP_PT_1_IN15,
      O => EXP31_EXP_PT_1_808
    );
  EXP31_EXP_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP31_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP31_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP31_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP31_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP31_EXP_PT_2_IN7,
      I8 => NlwBufferSignal_EXP31_EXP_PT_2_IN8,
      I9 => NlwBufferSignal_EXP31_EXP_PT_2_IN9,
      I10 => NlwBufferSignal_EXP31_EXP_PT_2_IN10,
      I11 => NlwBufferSignal_EXP31_EXP_PT_2_IN11,
      I12 => NlwBufferSignal_EXP31_EXP_PT_2_IN12,
      I13 => NlwBufferSignal_EXP31_EXP_PT_2_IN13,
      I14 => NlwBufferSignal_EXP31_EXP_PT_2_IN14,
      I15 => NlwBufferSignal_EXP31_EXP_PT_2_IN15,
      O => EXP31_EXP_PT_2_809
    );
  EXP31_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP31_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP31_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_PT_3_IN4,
      I5 => NlwInverterSignal_EXP31_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP31_EXP_PT_3_IN6,
      I7 => NlwInverterSignal_EXP31_EXP_PT_3_IN7,
      I8 => NlwBufferSignal_EXP31_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP31_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP31_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP31_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP31_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP31_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP31_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP31_EXP_PT_3_IN15,
      O => EXP31_EXP_PT_3_810
    );
  EXP31_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP31_EXP_PT_4_IN0,
      I1 => NlwBufferSignal_EXP31_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_PT_4_IN4,
      I5 => NlwInverterSignal_EXP31_EXP_PT_4_IN5,
      I6 => NlwBufferSignal_EXP31_EXP_PT_4_IN6,
      I7 => NlwInverterSignal_EXP31_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP31_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP31_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP31_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP31_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP31_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP31_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP31_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP31_EXP_PT_4_IN15,
      O => EXP31_EXP_PT_4_811
    );
  EXP31_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN4,
      O => EXP31_EXP_tsimrenamed_net_Q_806
    );
  EXP32_EXP : X_BUF
    port map (
      I => EXP32_EXP_tsimrenamed_net_Q_812,
      O => EXP32_EXP_435
    );
  EXP32_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP32_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP32_EXP_PT_0_IN1,
      O => EXP32_EXP_PT_0_813
    );
  EXP32_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP32_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP32_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP32_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_PT_1_IN3,
      I4 => NlwInverterSignal_EXP32_EXP_PT_1_IN4,
      I5 => NlwInverterSignal_EXP32_EXP_PT_1_IN5,
      O => EXP32_EXP_PT_1_814
    );
  EXP32_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP32_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP32_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP32_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_PT_2_IN3,
      I4 => NlwInverterSignal_EXP32_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP32_EXP_PT_2_IN5,
      O => EXP32_EXP_PT_2_815
    );
  EXP32_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP32_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP32_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP32_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP32_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP32_EXP_PT_3_IN5,
      O => EXP32_EXP_PT_3_816
    );
  EXP32_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP32_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP32_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP32_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP32_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP32_EXP_PT_4_IN5,
      O => EXP32_EXP_PT_4_817
    );
  EXP32_EXP_PT_5 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP32_EXP_PT_5_IN0,
      I1 => NlwBufferSignal_EXP32_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP32_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP32_EXP_PT_5_IN4,
      I5 => NlwInverterSignal_EXP32_EXP_PT_5_IN5,
      I6 => NlwBufferSignal_EXP32_EXP_PT_5_IN6,
      I7 => NlwInverterSignal_EXP32_EXP_PT_5_IN7,
      O => EXP32_EXP_PT_5_818
    );
  EXP32_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN5,
      O => EXP32_EXP_tsimrenamed_net_Q_812
    );
  EXP33_EXP : X_BUF
    port map (
      I => EXP33_EXP_tsimrenamed_net_Q_819,
      O => EXP33_EXP_437
    );
  EXP33_EXP_PT_0 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP33_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP33_EXP_PT_0_IN1,
      I2 => NlwInverterSignal_EXP33_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP33_EXP_PT_0_IN3,
      I4 => NlwInverterSignal_EXP33_EXP_PT_0_IN4,
      I5 => NlwInverterSignal_EXP33_EXP_PT_0_IN5,
      O => EXP33_EXP_PT_0_820
    );
  EXP33_EXP_PT_1 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP33_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP33_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP33_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP33_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP33_EXP_PT_1_IN4,
      I5 => NlwBufferSignal_EXP33_EXP_PT_1_IN5,
      O => EXP33_EXP_PT_1_821
    );
  EXP33_EXP_PT_2 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP33_EXP_PT_2_IN0,
      I1 => NlwBufferSignal_EXP33_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP33_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP33_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP33_EXP_PT_2_IN4,
      I5 => NlwInverterSignal_EXP33_EXP_PT_2_IN5,
      O => EXP33_EXP_PT_2_822
    );
  EXP33_EXP_PT_3 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP33_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP33_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP33_EXP_PT_3_IN2,
      I3 => NlwInverterSignal_EXP33_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP33_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP33_EXP_PT_3_IN5,
      O => EXP33_EXP_PT_3_823
    );
  EXP33_EXP_PT_4 : X_AND6
    port map (
      I0 => NlwInverterSignal_EXP33_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP33_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP33_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP33_EXP_PT_4_IN3,
      I4 => NlwInverterSignal_EXP33_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP33_EXP_PT_4_IN5,
      O => EXP33_EXP_PT_4_824
    );
  EXP33_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN4,
      O => EXP33_EXP_tsimrenamed_net_Q_819
    );
  EXP34_EXP : X_BUF
    port map (
      I => EXP34_EXP_tsimrenamed_net_Q_825,
      O => EXP34_EXP_826
    );
  EXP34_EXP_PT_0 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP34_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP34_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_PT_0_IN4,
      I5 => NlwBufferSignal_EXP34_EXP_PT_0_IN5,
      I6 => NlwInverterSignal_EXP34_EXP_PT_0_IN6,
      O => EXP34_EXP_PT_0_827
    );
  EXP34_EXP_PT_1 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP34_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP34_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_PT_1_IN4,
      I5 => NlwBufferSignal_EXP34_EXP_PT_1_IN5,
      I6 => NlwInverterSignal_EXP34_EXP_PT_1_IN6,
      O => EXP34_EXP_PT_1_828
    );
  EXP34_EXP_PT_2 : X_AND8
    port map (
      I0 => NlwInverterSignal_EXP34_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP34_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP34_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP34_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP34_EXP_PT_2_IN7,
      O => EXP34_EXP_PT_2_829
    );
  EXP34_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP34_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP34_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP34_EXP_PT_3_IN5,
      I6 => NlwInverterSignal_EXP34_EXP_PT_3_IN6,
      I7 => NlwBufferSignal_EXP34_EXP_PT_3_IN7,
      I8 => NlwInverterSignal_EXP34_EXP_PT_3_IN8,
      I9 => NlwBufferSignal_EXP34_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP34_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP34_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP34_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP34_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP34_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP34_EXP_PT_3_IN15,
      O => EXP34_EXP_PT_3_830
    );
  EXP34_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP34_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP34_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP34_EXP_PT_4_IN5,
      I6 => NlwInverterSignal_EXP34_EXP_PT_4_IN6,
      I7 => NlwBufferSignal_EXP34_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP34_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP34_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP34_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP34_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP34_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP34_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP34_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP34_EXP_PT_4_IN15,
      O => EXP34_EXP_PT_4_831
    );
  EXP34_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN4,
      O => EXP34_EXP_tsimrenamed_net_Q_825
    );
  EXP35_EXP : X_BUF
    port map (
      I => EXP35_EXP_tsimrenamed_net_Q_832,
      O => EXP35_EXP_454
    );
  EXP35_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP35_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP35_EXP_PT_0_IN1,
      O => EXP35_EXP_PT_0_833
    );
  EXP35_EXP_PT_1 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP35_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP35_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_PT_1_IN3,
      O => EXP35_EXP_PT_1_834
    );
  EXP35_EXP_PT_2 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP35_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP35_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_PT_2_IN3,
      O => EXP35_EXP_PT_2_835
    );
  EXP35_EXP_PT_3 : X_AND4
    port map (
      I0 => NlwInverterSignal_EXP35_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP35_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_PT_3_IN3,
      O => EXP35_EXP_PT_3_836
    );
  EXP35_EXP_PT_4 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP35_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP35_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_PT_4_IN3,
      O => EXP35_EXP_PT_4_837
    );
  EXP35_EXP_PT_5 : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP35_EXP_PT_5_IN0,
      I1 => NlwInverterSignal_EXP35_EXP_PT_5_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_PT_5_IN3,
      O => EXP35_EXP_PT_5_838
    );
  EXP35_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN5,
      O => EXP35_EXP_tsimrenamed_net_Q_832
    );
  EXP36_EXP : X_BUF
    port map (
      I => EXP36_EXP_tsimrenamed_net_Q_839,
      O => EXP36_EXP_456
    );
  EXP36_EXP_PT_0 : X_AND2
    port map (
      I0 => NlwBufferSignal_EXP36_EXP_PT_0_IN0,
      I1 => NlwBufferSignal_EXP36_EXP_PT_0_IN1,
      O => EXP36_EXP_PT_0_841
    );
  EXP36_EXP_PT_1 : X_AND5
    port map (
      I0 => NlwInverterSignal_EXP36_EXP_PT_1_IN0,
      I1 => NlwBufferSignal_EXP36_EXP_PT_1_IN1,
      I2 => NlwInverterSignal_EXP36_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_PT_1_IN4,
      O => EXP36_EXP_PT_1_842
    );
  EXP36_EXP_PT_2 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP36_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP36_EXP_PT_2_IN1,
      I2 => NlwInverterSignal_EXP36_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP36_EXP_PT_2_IN5,
      I6 => NlwInverterSignal_EXP36_EXP_PT_2_IN6,
      O => EXP36_EXP_PT_2_843
    );
  EXP36_EXP_PT_3 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP36_EXP_PT_3_IN0,
      I1 => NlwInverterSignal_EXP36_EXP_PT_3_IN1,
      I2 => NlwInverterSignal_EXP36_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_PT_3_IN4,
      I5 => NlwBufferSignal_EXP36_EXP_PT_3_IN5,
      I6 => NlwInverterSignal_EXP36_EXP_PT_3_IN6,
      O => EXP36_EXP_PT_3_844
    );
  EXP36_EXP_PT_4 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP36_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP36_EXP_PT_4_IN1,
      I2 => NlwInverterSignal_EXP36_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP36_EXP_PT_4_IN5,
      I6 => NlwInverterSignal_EXP36_EXP_PT_4_IN6,
      O => EXP36_EXP_PT_4_845
    );
  EXP36_EXP_PT_5 : X_AND7
    port map (
      I0 => NlwInverterSignal_EXP36_EXP_PT_5_IN0,
      I1 => NlwInverterSignal_EXP36_EXP_PT_5_IN1,
      I2 => NlwInverterSignal_EXP36_EXP_PT_5_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_PT_5_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_PT_5_IN4,
      I5 => NlwBufferSignal_EXP36_EXP_PT_5_IN5,
      I6 => NlwInverterSignal_EXP36_EXP_PT_5_IN6,
      O => EXP36_EXP_PT_5_846
    );
  EXP36_EXP_tsimrenamed_net_Q : X_OR6
    port map (
      I0 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN4,
      I5 => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN5,
      O => EXP36_EXP_tsimrenamed_net_Q_839
    );
  EXP37_EXP : X_BUF
    port map (
      I => EXP37_EXP_tsimrenamed_net_Q_847,
      O => EXP37_EXP_840
    );
  EXP37_EXP_PT_0 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP37_EXP_PT_0_IN0,
      I1 => NlwInverterSignal_EXP37_EXP_PT_0_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_PT_0_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_PT_0_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_PT_0_IN4,
      I5 => NlwBufferSignal_EXP37_EXP_PT_0_IN5,
      I6 => NlwInverterSignal_EXP37_EXP_PT_0_IN6,
      I7 => NlwBufferSignal_EXP37_EXP_PT_0_IN7,
      I8 => NlwBufferSignal_EXP37_EXP_PT_0_IN8,
      I9 => NlwBufferSignal_EXP37_EXP_PT_0_IN9,
      I10 => NlwBufferSignal_EXP37_EXP_PT_0_IN10,
      I11 => NlwBufferSignal_EXP37_EXP_PT_0_IN11,
      I12 => NlwBufferSignal_EXP37_EXP_PT_0_IN12,
      I13 => NlwBufferSignal_EXP37_EXP_PT_0_IN13,
      I14 => NlwBufferSignal_EXP37_EXP_PT_0_IN14,
      I15 => NlwBufferSignal_EXP37_EXP_PT_0_IN15,
      O => EXP37_EXP_PT_0_848
    );
  EXP37_EXP_PT_1 : X_AND16
    port map (
      I0 => NlwBufferSignal_EXP37_EXP_PT_1_IN0,
      I1 => NlwInverterSignal_EXP37_EXP_PT_1_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_PT_1_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_PT_1_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_PT_1_IN4,
      I5 => NlwBufferSignal_EXP37_EXP_PT_1_IN5,
      I6 => NlwInverterSignal_EXP37_EXP_PT_1_IN6,
      I7 => NlwBufferSignal_EXP37_EXP_PT_1_IN7,
      I8 => NlwBufferSignal_EXP37_EXP_PT_1_IN8,
      I9 => NlwBufferSignal_EXP37_EXP_PT_1_IN9,
      I10 => NlwBufferSignal_EXP37_EXP_PT_1_IN10,
      I11 => NlwBufferSignal_EXP37_EXP_PT_1_IN11,
      I12 => NlwBufferSignal_EXP37_EXP_PT_1_IN12,
      I13 => NlwBufferSignal_EXP37_EXP_PT_1_IN13,
      I14 => NlwBufferSignal_EXP37_EXP_PT_1_IN14,
      I15 => NlwBufferSignal_EXP37_EXP_PT_1_IN15,
      O => EXP37_EXP_PT_1_849
    );
  EXP37_EXP_PT_2 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP37_EXP_PT_2_IN0,
      I1 => NlwInverterSignal_EXP37_EXP_PT_2_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_PT_2_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_PT_2_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_PT_2_IN4,
      I5 => NlwBufferSignal_EXP37_EXP_PT_2_IN5,
      I6 => NlwBufferSignal_EXP37_EXP_PT_2_IN6,
      I7 => NlwBufferSignal_EXP37_EXP_PT_2_IN7,
      I8 => NlwBufferSignal_EXP37_EXP_PT_2_IN8,
      I9 => NlwInverterSignal_EXP37_EXP_PT_2_IN9,
      I10 => NlwBufferSignal_EXP37_EXP_PT_2_IN10,
      I11 => NlwBufferSignal_EXP37_EXP_PT_2_IN11,
      I12 => NlwBufferSignal_EXP37_EXP_PT_2_IN12,
      I13 => NlwBufferSignal_EXP37_EXP_PT_2_IN13,
      I14 => NlwBufferSignal_EXP37_EXP_PT_2_IN14,
      I15 => NlwBufferSignal_EXP37_EXP_PT_2_IN15,
      O => EXP37_EXP_PT_2_850
    );
  EXP37_EXP_PT_3 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP37_EXP_PT_3_IN0,
      I1 => NlwBufferSignal_EXP37_EXP_PT_3_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_PT_3_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_PT_3_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_PT_3_IN4,
      I5 => NlwInverterSignal_EXP37_EXP_PT_3_IN5,
      I6 => NlwBufferSignal_EXP37_EXP_PT_3_IN6,
      I7 => NlwBufferSignal_EXP37_EXP_PT_3_IN7,
      I8 => NlwBufferSignal_EXP37_EXP_PT_3_IN8,
      I9 => NlwInverterSignal_EXP37_EXP_PT_3_IN9,
      I10 => NlwBufferSignal_EXP37_EXP_PT_3_IN10,
      I11 => NlwBufferSignal_EXP37_EXP_PT_3_IN11,
      I12 => NlwBufferSignal_EXP37_EXP_PT_3_IN12,
      I13 => NlwBufferSignal_EXP37_EXP_PT_3_IN13,
      I14 => NlwBufferSignal_EXP37_EXP_PT_3_IN14,
      I15 => NlwBufferSignal_EXP37_EXP_PT_3_IN15,
      O => EXP37_EXP_PT_3_851
    );
  EXP37_EXP_PT_4 : X_AND16
    port map (
      I0 => NlwInverterSignal_EXP37_EXP_PT_4_IN0,
      I1 => NlwInverterSignal_EXP37_EXP_PT_4_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_PT_4_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_PT_4_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_PT_4_IN4,
      I5 => NlwBufferSignal_EXP37_EXP_PT_4_IN5,
      I6 => NlwBufferSignal_EXP37_EXP_PT_4_IN6,
      I7 => NlwBufferSignal_EXP37_EXP_PT_4_IN7,
      I8 => NlwBufferSignal_EXP37_EXP_PT_4_IN8,
      I9 => NlwBufferSignal_EXP37_EXP_PT_4_IN9,
      I10 => NlwBufferSignal_EXP37_EXP_PT_4_IN10,
      I11 => NlwBufferSignal_EXP37_EXP_PT_4_IN11,
      I12 => NlwBufferSignal_EXP37_EXP_PT_4_IN12,
      I13 => NlwBufferSignal_EXP37_EXP_PT_4_IN13,
      I14 => NlwBufferSignal_EXP37_EXP_PT_4_IN14,
      I15 => NlwBufferSignal_EXP37_EXP_PT_4_IN15,
      O => EXP37_EXP_PT_4_852
    );
  EXP37_EXP_tsimrenamed_net_Q : X_OR5
    port map (
      I0 => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN1,
      I2 => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN3,
      I4 => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN4,
      O => EXP37_EXP_tsimrenamed_net_Q_847
    );
  EXP38_EXP : X_BUF
    port map (
      I => EXP38_EXP_tsimrenamed_net_Q_853,
      O => EXP38_EXP_277
    );
  EXP38_EXP_tsimrenamed_net_Q : X_AND4
    port map (
      I0 => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN0,
      I1 => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN1,
      I2 => NlwInverterSignal_EXP38_EXP_tsimrenamed_net_IN2,
      I3 => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN3,
      O => EXP38_EXP_tsimrenamed_net_Q_853
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_D1_163,
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nframe_x_D2_164,
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_TRST_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169,
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nframe_x_TRST_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169,
      O => NlwBufferSignal_THE_PCI_SEQ_nframe_x_TRST_IN1
    );
  NlwBufferBlock_p_nreset_x_REG_IN : X_BUF
    port map (
      I => p_nreset_x_D_172,
      O => NlwBufferSignal_p_nreset_x_REG_IN
    );
  NlwBufferBlock_p_nreset_x_REG_CLK : X_BUF
    port map (
      I => p_nreset_x_CLKF_173,
      O => NlwBufferSignal_p_nreset_x_REG_CLK
    );
  NlwBufferBlock_p_nreset_x_D_IN0 : X_BUF
    port map (
      I => p_nreset_x_D1_176,
      O => NlwBufferSignal_p_nreset_x_D_IN0
    );
  NlwBufferBlock_p_nreset_x_D_IN1 : X_BUF
    port map (
      I => p_nreset_x_D2_177,
      O => NlwBufferSignal_p_nreset_x_D_IN1
    );
  NlwBufferBlock_p_nreset_x_D2_IN0 : X_BUF
    port map (
      I => N3_3,
      O => NlwBufferSignal_p_nreset_x_D2_IN0
    );
  NlwBufferBlock_p_nreset_x_D2_IN1 : X_BUF
    port map (
      I => N3_3,
      O => NlwBufferSignal_p_nreset_x_D2_IN1
    );
  NlwBufferBlock_p_nreset_x_CLKF_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_p_nreset_x_CLKF_IN0
    );
  NlwBufferBlock_p_nreset_x_CLKF_IN1 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_p_nreset_x_CLKF_IN1
    );
  NlwBufferBlock_p_nreset_x_CLKF_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_p_nreset_x_CLKF_IN2
    );
  NlwBufferBlock_p_nreset_x_CLKF_IN3 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_p_nreset_x_CLKF_IN3
    );
  NlwBufferBlock_p_nreset_x_CE_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_p_nreset_x_CE_IN0
    );
  NlwBufferBlock_p_nreset_x_CE_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_p_nreset_x_CE_IN1
    );
  NlwBufferBlock_p_nreset_x_CE_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_p_nreset_x_CE_IN2
    );
  NlwBufferBlock_p_nreset_x_CE_IN3 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_p_nreset_x_CE_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_D_183,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_Q_179,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_xor_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_RSTF_185,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_tsimcreated_xor_Q_184,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_D1_188,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_D2_189,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_RSTF_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_EXP_PT_0_191,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_EXP_PT_1_192,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_CE_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_0_CE_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_D_197,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_Q_195,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_xor_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_RSTF_199,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_tsimcreated_xor_Q_198,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_D1_202,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_1_D2_203,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_RSTF_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_CE_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_1_CE_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_D_206,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_Q_204,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_xor_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_RSTF_208,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_tsimcreated_xor_Q_207,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_D1_211,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_D2_212,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_RSTF_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_CE_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_CE_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN1
    );
  NlwBufferBlock_pci_int_ena_x_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN0
    );
  NlwBufferBlock_pci_int_ena_x_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_pci_int_ena_x_tsimcreated_prld_IN1
    );
  NlwBufferBlock_pci_int_ena_x_REG_IN : X_BUF
    port map (
      I => pci_int_ena_x_D_218,
      O => NlwBufferSignal_pci_int_ena_x_REG_IN
    );
  NlwBufferBlock_pci_int_ena_x_REG_CLK : X_BUF
    port map (
      I => pci_int_ena_x_CLKF_219,
      O => NlwBufferSignal_pci_int_ena_x_REG_CLK
    );
  NlwBufferBlock_pci_int_ena_x_D_IN0 : X_BUF
    port map (
      I => pci_int_ena_x_D1_221,
      O => NlwBufferSignal_pci_int_ena_x_D_IN0
    );
  NlwBufferBlock_pci_int_ena_x_D_IN1 : X_BUF
    port map (
      I => pci_int_ena_x_D2_222,
      O => NlwBufferSignal_pci_int_ena_x_D_IN1
    );
  NlwBufferBlock_pci_int_ena_x_D2_IN0 : X_BUF
    port map (
      I => N2_23,
      O => NlwBufferSignal_pci_int_ena_x_D2_IN0
    );
  NlwBufferBlock_pci_int_ena_x_D2_IN1 : X_BUF
    port map (
      I => N2_23,
      O => NlwBufferSignal_pci_int_ena_x_D2_IN1
    );
  NlwBufferBlock_pci_int_ena_x_CLKF_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_pci_int_ena_x_CLKF_IN0
    );
  NlwBufferBlock_pci_int_ena_x_CLKF_IN1 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_pci_int_ena_x_CLKF_IN1
    );
  NlwBufferBlock_pci_int_ena_x_CLKF_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_pci_int_ena_x_CLKF_IN2
    );
  NlwBufferBlock_pci_int_ena_x_CLKF_IN3 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_pci_int_ena_x_CLKF_IN3
    );
  NlwBufferBlock_pci_int_ena_x_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_pci_int_ena_x_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_pci_int_ena_x_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_pci_int_ena_x_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_pci_int_ena_x_CE_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_pci_int_ena_x_CE_IN0
    );
  NlwBufferBlock_pci_int_ena_x_CE_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_pci_int_ena_x_CE_IN1
    );
  NlwBufferBlock_pci_int_ena_x_CE_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_pci_int_ena_x_CE_IN2
    );
  NlwBufferBlock_pci_int_ena_x_CE_IN3 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_pci_int_ena_x_CE_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_D_225,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_Q_223,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_xor_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_RSTF_227,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_tsimcreated_xor_Q_226,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_D1_230,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_3_D2_231,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_UIM_190,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_RSTF_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_CE_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_3_CE_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_D1_238,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_D2_239,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_D2_PT_0_240,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_D2_PT_1_241,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_TRST_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_TRST_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_UIM_169,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_TRST_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_ncfg_xx_REG_IN : X_BUF
    port map (
      I => ncfg_xx_D_243,
      O => NlwBufferSignal_ncfg_xx_REG_IN
    );
  NlwBufferBlock_ncfg_xx_REG_CLK : X_BUF
    port map (
      I => Z_NFCS_IBUF_FCLK_58,
      O => NlwBufferSignal_ncfg_xx_REG_CLK
    );
  NlwBufferBlock_ncfg_xx_D_IN0 : X_BUF
    port map (
      I => ncfg_xx_D1_245,
      O => NlwBufferSignal_ncfg_xx_D_IN0
    );
  NlwBufferBlock_ncfg_xx_D_IN1 : X_BUF
    port map (
      I => ncfg_xx_D2_246,
      O => NlwBufferSignal_ncfg_xx_D_IN1
    );
  NlwBufferBlock_ncfg_xx_D2_IN0 : X_BUF
    port map (
      I => ncfg_x_247,
      O => NlwBufferSignal_ncfg_xx_D2_IN0
    );
  NlwBufferBlock_ncfg_xx_D2_IN1 : X_BUF
    port map (
      I => ncfg_x_247,
      O => NlwBufferSignal_ncfg_xx_D2_IN1
    );
  NlwBufferBlock_cbp_x_0_D_IN0 : X_BUF
    port map (
      I => cbp_x_0_D1_252,
      O => NlwBufferSignal_cbp_x_0_D_IN0
    );
  NlwBufferBlock_cbp_x_0_D_IN1 : X_BUF
    port map (
      I => cbp_x_0_D2_253,
      O => NlwBufferSignal_cbp_x_0_D_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_0_IN0 : X_BUF
    port map (
      I => pci_int_ena_x_EXP_216,
      O => NlwBufferSignal_cbp_x_0_D2_PT_0_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_0_IN1 : X_BUF
    port map (
      I => pci_int_ena_x_EXP_216,
      O => NlwBufferSignal_cbp_x_0_D2_PT_0_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_1_IN0 : X_BUF
    port map (
      I => N0_N0_TRST_EXP_255,
      O => NlwBufferSignal_cbp_x_0_D2_PT_1_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_1_IN1 : X_BUF
    port map (
      I => N0_N0_TRST_EXP_255,
      O => NlwBufferSignal_cbp_x_0_D2_PT_1_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_0_D2_PT_2_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_cbp_x_0_D2_PT_2_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_0_D2_PT_3_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_0_D2_PT_3_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_3_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_cbp_x_0_D2_PT_3_IN2
    );
  NlwBufferBlock_cbp_x_0_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_0_D2_PT_4_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_0_D2_PT_4_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_4_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_cbp_x_0_D2_PT_4_IN2
    );
  NlwBufferBlock_cbp_x_0_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_0_D2_PT_5_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_cbp_x_0_D2_PT_5_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_PT_5_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_cbp_x_0_D2_PT_5_IN2
    );
  NlwBufferBlock_cbp_x_0_D2_IN0 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_0_254,
      O => NlwBufferSignal_cbp_x_0_D2_IN0
    );
  NlwBufferBlock_cbp_x_0_D2_IN1 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_1_256,
      O => NlwBufferSignal_cbp_x_0_D2_IN1
    );
  NlwBufferBlock_cbp_x_0_D2_IN2 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_2_257,
      O => NlwBufferSignal_cbp_x_0_D2_IN2
    );
  NlwBufferBlock_cbp_x_0_D2_IN3 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_3_258,
      O => NlwBufferSignal_cbp_x_0_D2_IN3
    );
  NlwBufferBlock_cbp_x_0_D2_IN4 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_4_259,
      O => NlwBufferSignal_cbp_x_0_D2_IN4
    );
  NlwBufferBlock_cbp_x_0_D2_IN5 : X_BUF
    port map (
      I => cbp_x_0_D2_PT_5_260,
      O => NlwBufferSignal_cbp_x_0_D2_IN5
    );
  NlwBufferBlock_cbp_x_0_TRST_IN0 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_0_TRST_IN0
    );
  NlwBufferBlock_cbp_x_0_TRST_IN1 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_0_TRST_IN1
    );
  NlwBufferBlock_cbp_x_1_D_IN0 : X_BUF
    port map (
      I => cbp_x_1_D1_266,
      O => NlwBufferSignal_cbp_x_1_D_IN0
    );
  NlwBufferBlock_cbp_x_1_D_IN1 : X_BUF
    port map (
      I => cbp_x_1_D2_267,
      O => NlwBufferSignal_cbp_x_1_D_IN1
    );
  NlwBufferBlock_cbp_x_1_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_1_D2_PT_0_IN0
    );
  NlwBufferBlock_cbp_x_1_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_1_D2_PT_0_IN1
    );
  NlwBufferBlock_cbp_x_1_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_1_D2_PT_0_IN2
    );
  NlwBufferBlock_cbp_x_1_D2_PT_0_IN3 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_cbp_x_1_D2_PT_0_IN3
    );
  NlwBufferBlock_cbp_x_1_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_1_D2_PT_1_IN0
    );
  NlwBufferBlock_cbp_x_1_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_1_D2_PT_1_IN1
    );
  NlwBufferBlock_cbp_x_1_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_cbp_x_1_D2_PT_1_IN2
    );
  NlwBufferBlock_cbp_x_1_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_1_D2_PT_1_IN3
    );
  NlwBufferBlock_cbp_x_1_D2_PT_1_IN4 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_cbp_x_1_D2_PT_1_IN4
    );
  NlwBufferBlock_cbp_x_1_D2_IN0 : X_BUF
    port map (
      I => cbp_x_1_D2_PT_0_268,
      O => NlwBufferSignal_cbp_x_1_D2_IN0
    );
  NlwBufferBlock_cbp_x_1_D2_IN1 : X_BUF
    port map (
      I => cbp_x_1_D2_PT_1_269,
      O => NlwBufferSignal_cbp_x_1_D2_IN1
    );
  NlwBufferBlock_cbp_x_1_TRST_IN0 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_1_TRST_IN0
    );
  NlwBufferBlock_cbp_x_1_TRST_IN1 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_1_TRST_IN1
    );
  NlwBufferBlock_cbp_x_2_D_IN0 : X_BUF
    port map (
      I => cbp_x_2_D1_274,
      O => NlwBufferSignal_cbp_x_2_D_IN0
    );
  NlwBufferBlock_cbp_x_2_D_IN1 : X_BUF
    port map (
      I => cbp_x_2_D2_275,
      O => NlwBufferSignal_cbp_x_2_D_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_EXP_234,
      O => NlwBufferSignal_cbp_x_2_D2_PT_0_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_EXP_234,
      O => NlwBufferSignal_cbp_x_2_D2_PT_0_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP38_EXP_277,
      O => NlwBufferSignal_cbp_x_2_D2_PT_1_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP38_EXP_277,
      O => NlwBufferSignal_cbp_x_2_D2_PT_1_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_2_D2_PT_2_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_2_IN1 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_2_D2_PT_2_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_2_IN2 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_2_D2_PT_2_IN2
    );
  NlwBufferBlock_cbp_x_2_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_2_D2_PT_3_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_2_D2_PT_3_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_3_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_2_D2_PT_3_IN2
    );
  NlwBufferBlock_cbp_x_2_D2_PT_3_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_2_D2_PT_3_IN3
    );
  NlwBufferBlock_cbp_x_2_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_2_D2_PT_4_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_2_D2_PT_4_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_4_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_2_D2_PT_4_IN2
    );
  NlwBufferBlock_cbp_x_2_D2_PT_4_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_2_D2_PT_4_IN3
    );
  NlwBufferBlock_cbp_x_2_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_2_D2_PT_5_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_cbp_x_2_D2_PT_5_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_PT_5_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_2_D2_PT_5_IN2
    );
  NlwBufferBlock_cbp_x_2_D2_PT_5_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_2_D2_PT_5_IN3
    );
  NlwBufferBlock_cbp_x_2_D2_IN0 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_0_276,
      O => NlwBufferSignal_cbp_x_2_D2_IN0
    );
  NlwBufferBlock_cbp_x_2_D2_IN1 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_1_278,
      O => NlwBufferSignal_cbp_x_2_D2_IN1
    );
  NlwBufferBlock_cbp_x_2_D2_IN2 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_2_279,
      O => NlwBufferSignal_cbp_x_2_D2_IN2
    );
  NlwBufferBlock_cbp_x_2_D2_IN3 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_3_280,
      O => NlwBufferSignal_cbp_x_2_D2_IN3
    );
  NlwBufferBlock_cbp_x_2_D2_IN4 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_4_281,
      O => NlwBufferSignal_cbp_x_2_D2_IN4
    );
  NlwBufferBlock_cbp_x_2_D2_IN5 : X_BUF
    port map (
      I => cbp_x_2_D2_PT_5_282,
      O => NlwBufferSignal_cbp_x_2_D2_IN5
    );
  NlwBufferBlock_cbp_x_2_TRST_IN0 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_2_TRST_IN0
    );
  NlwBufferBlock_cbp_x_2_TRST_IN1 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_2_TRST_IN1
    );
  NlwBufferBlock_cbp_x_3_D_IN0 : X_BUF
    port map (
      I => cbp_x_3_D1_287,
      O => NlwBufferSignal_cbp_x_3_D_IN0
    );
  NlwBufferBlock_cbp_x_3_D_IN1 : X_BUF
    port map (
      I => cbp_x_3_D2_288,
      O => NlwBufferSignal_cbp_x_3_D_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_EXP_182,
      O => NlwBufferSignal_cbp_x_3_D2_PT_0_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_0_EXP_182,
      O => NlwBufferSignal_cbp_x_3_D2_PT_0_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_1_IN0 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_290,
      O => NlwBufferSignal_cbp_x_3_D2_PT_1_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_1_IN1 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_290,
      O => NlwBufferSignal_cbp_x_3_D2_PT_1_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_3_D2_PT_2_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_2_IN1 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_3_D2_PT_2_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_2_IN2 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_3_D2_PT_2_IN2
    );
  NlwBufferBlock_cbp_x_3_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_3_D2_PT_3_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_3_IN1 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_3_D2_PT_3_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_3_IN2 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_3_D2_PT_3_IN2
    );
  NlwBufferBlock_cbp_x_3_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_3_D2_PT_4_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_3_D2_PT_4_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_4_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_3_D2_PT_4_IN2
    );
  NlwBufferBlock_cbp_x_3_D2_PT_4_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_3_D2_PT_4_IN3
    );
  NlwBufferBlock_cbp_x_3_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_3_D2_PT_5_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_3_D2_PT_5_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_PT_5_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_cbp_x_3_D2_PT_5_IN2
    );
  NlwBufferBlock_cbp_x_3_D2_PT_5_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_cbp_x_3_D2_PT_5_IN3
    );
  NlwBufferBlock_cbp_x_3_D2_IN0 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_0_289,
      O => NlwBufferSignal_cbp_x_3_D2_IN0
    );
  NlwBufferBlock_cbp_x_3_D2_IN1 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_1_291,
      O => NlwBufferSignal_cbp_x_3_D2_IN1
    );
  NlwBufferBlock_cbp_x_3_D2_IN2 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_2_292,
      O => NlwBufferSignal_cbp_x_3_D2_IN2
    );
  NlwBufferBlock_cbp_x_3_D2_IN3 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_3_293,
      O => NlwBufferSignal_cbp_x_3_D2_IN3
    );
  NlwBufferBlock_cbp_x_3_D2_IN4 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_4_294,
      O => NlwBufferSignal_cbp_x_3_D2_IN4
    );
  NlwBufferBlock_cbp_x_3_D2_IN5 : X_BUF
    port map (
      I => cbp_x_3_D2_PT_5_295,
      O => NlwBufferSignal_cbp_x_3_D2_IN5
    );
  NlwBufferBlock_cbp_x_3_TRST_IN0 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_3_TRST_IN0
    );
  NlwBufferBlock_cbp_x_3_TRST_IN1 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_UIM_261,
      O => NlwBufferSignal_cbp_x_3_TRST_IN1
    );
  NlwBufferBlock_z_ada_x_1_D_IN0 : X_BUF
    port map (
      I => z_ada_x_1_D1_300,
      O => NlwBufferSignal_z_ada_x_1_D_IN0
    );
  NlwBufferBlock_z_ada_x_1_D_IN1 : X_BUF
    port map (
      I => z_ada_x_1_D2_301,
      O => NlwBufferSignal_z_ada_x_1_D_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP14_EXP_302,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_0_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP14_EXP_302,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_0_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_1_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_EXP_304,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_1_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_1_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_EXP_304,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_1_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_2_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_2_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_2_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_3_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_3_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_3_IN1 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_3_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_4_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_4_IN1 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_4_IN2 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN2
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_5_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_5_IN1 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_PT_5_IN2 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_1_D2_PT_5_IN2
    );
  NlwBufferBlock_z_ada_x_1_D2_IN0 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_0_303,
      O => NlwBufferSignal_z_ada_x_1_D2_IN0
    );
  NlwBufferBlock_z_ada_x_1_D2_IN1 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_1_305,
      O => NlwBufferSignal_z_ada_x_1_D2_IN1
    );
  NlwBufferBlock_z_ada_x_1_D2_IN2 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_2_306,
      O => NlwBufferSignal_z_ada_x_1_D2_IN2
    );
  NlwBufferBlock_z_ada_x_1_D2_IN3 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_3_307,
      O => NlwBufferSignal_z_ada_x_1_D2_IN3
    );
  NlwBufferBlock_z_ada_x_1_D2_IN4 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_4_308,
      O => NlwBufferSignal_z_ada_x_1_D2_IN4
    );
  NlwBufferBlock_z_ada_x_1_D2_IN5 : X_BUF
    port map (
      I => z_ada_x_1_D2_PT_5_309,
      O => NlwBufferSignal_z_ada_x_1_D2_IN5
    );
  NlwBufferBlock_z_ada_x_1_TRST_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_z_ada_x_1_TRST_IN0
    );
  NlwBufferBlock_z_ada_x_1_TRST_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_z_ada_x_1_TRST_IN1
    );
  NlwBufferBlock_z_ada_x_1_TRST_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_z_ada_x_1_TRST_IN2
    );
  NlwBufferBlock_z_ada_x_1_TRST_IN3 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_z_ada_x_1_TRST_IN3
    );
  NlwBufferBlock_z_ada_x_1_TRST_IN4 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_UIM_310,
      O => NlwBufferSignal_z_ada_x_1_TRST_IN4
    );
  NlwBufferBlock_z_ada_x_2_D_IN0 : X_BUF
    port map (
      I => z_ada_x_2_D1_315,
      O => NlwBufferSignal_z_ada_x_2_D_IN0
    );
  NlwBufferBlock_z_ada_x_2_D_IN1 : X_BUF
    port map (
      I => z_ada_x_2_D2_316,
      O => NlwBufferSignal_z_ada_x_2_D_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_0_IN0
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_0_IN1 : X_BUF
    port map (
      I => pci_int_ena_x_214,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_0_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN0
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN2
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN3 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN3
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN4 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN4
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_1_IN5 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN5
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN0
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN2
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN3 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN3
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN4 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN4
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN5 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN5
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_2_IN6 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN6
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN0
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN2 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN2
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN3 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN3
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN4 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN4
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN5 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN5
    );
  NlwBufferBlock_z_ada_x_2_D2_PT_3_IN6 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN6
    );
  NlwBufferBlock_z_ada_x_2_D2_IN0 : X_BUF
    port map (
      I => z_ada_x_2_D2_PT_0_317,
      O => NlwBufferSignal_z_ada_x_2_D2_IN0
    );
  NlwBufferBlock_z_ada_x_2_D2_IN1 : X_BUF
    port map (
      I => z_ada_x_2_D2_PT_1_318,
      O => NlwBufferSignal_z_ada_x_2_D2_IN1
    );
  NlwBufferBlock_z_ada_x_2_D2_IN2 : X_BUF
    port map (
      I => z_ada_x_2_D2_PT_2_319,
      O => NlwBufferSignal_z_ada_x_2_D2_IN2
    );
  NlwBufferBlock_z_ada_x_2_D2_IN3 : X_BUF
    port map (
      I => z_ada_x_2_D2_PT_3_320,
      O => NlwBufferSignal_z_ada_x_2_D2_IN3
    );
  NlwBufferBlock_z_ada_x_2_TRST_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_z_ada_x_2_TRST_IN0
    );
  NlwBufferBlock_z_ada_x_2_TRST_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_z_ada_x_2_TRST_IN1
    );
  NlwBufferBlock_z_ada_x_2_TRST_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_z_ada_x_2_TRST_IN2
    );
  NlwBufferBlock_z_ada_x_2_TRST_IN3 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_z_ada_x_2_TRST_IN3
    );
  NlwBufferBlock_z_ada_x_2_TRST_IN4 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_UIM_310,
      O => NlwBufferSignal_z_ada_x_2_TRST_IN4
    );
  NlwBufferBlock_z_ada_x_3_D_IN0 : X_BUF
    port map (
      I => z_ada_x_3_D1_325,
      O => NlwBufferSignal_z_ada_x_3_D_IN0
    );
  NlwBufferBlock_z_ada_x_3_D_IN1 : X_BUF
    port map (
      I => z_ada_x_3_D2_326,
      O => NlwBufferSignal_z_ada_x_3_D_IN1
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_0_IN0
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_0_IN1 : X_BUF
    port map (
      I => p_nreset_x_171,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_0_IN1
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_1_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN0
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN1
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN2
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_1_IN3 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN3
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_1_IN4 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN4
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN0
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN1
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN2
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN3 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN3
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN4 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN4
    );
  NlwBufferBlock_z_ada_x_3_D2_PT_2_IN5 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN5
    );
  NlwBufferBlock_z_ada_x_3_D2_IN0 : X_BUF
    port map (
      I => z_ada_x_3_D2_PT_0_327,
      O => NlwBufferSignal_z_ada_x_3_D2_IN0
    );
  NlwBufferBlock_z_ada_x_3_D2_IN1 : X_BUF
    port map (
      I => z_ada_x_3_D2_PT_1_328,
      O => NlwBufferSignal_z_ada_x_3_D2_IN1
    );
  NlwBufferBlock_z_ada_x_3_D2_IN2 : X_BUF
    port map (
      I => z_ada_x_3_D2_PT_2_329,
      O => NlwBufferSignal_z_ada_x_3_D2_IN2
    );
  NlwBufferBlock_z_ada_x_3_TRST_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_z_ada_x_3_TRST_IN0
    );
  NlwBufferBlock_z_ada_x_3_TRST_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_z_ada_x_3_TRST_IN1
    );
  NlwBufferBlock_z_ada_x_3_TRST_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_z_ada_x_3_TRST_IN2
    );
  NlwBufferBlock_z_ada_x_3_TRST_IN3 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_z_ada_x_3_TRST_IN3
    );
  NlwBufferBlock_z_ada_x_3_TRST_IN4 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_UIM_310,
      O => NlwBufferSignal_z_ada_x_3_TRST_IN4
    );
  NlwBufferBlock_p_par_x_D_IN0 : X_BUF
    port map (
      I => p_par_x_D1_336,
      O => NlwBufferSignal_p_par_x_D_IN0
    );
  NlwBufferBlock_p_par_x_D_IN1 : X_BUF
    port map (
      I => p_par_x_D2_337,
      O => NlwBufferSignal_p_par_x_D_IN1
    );
  NlwBufferBlock_p_par_x_D1_IN0 : X_BUF
    port map (
      I => cbe_p_338,
      O => NlwBufferSignal_p_par_x_D1_IN0
    );
  NlwBufferBlock_p_par_x_D1_IN1 : X_BUF
    port map (
      I => cbe_p_338,
      O => NlwBufferSignal_p_par_x_D1_IN1
    );
  NlwBufferBlock_p_par_x_D2_IN0 : X_BUF
    port map (
      I => dat_p_339,
      O => NlwBufferSignal_p_par_x_D2_IN0
    );
  NlwBufferBlock_p_par_x_D2_IN1 : X_BUF
    port map (
      I => dat_p_339,
      O => NlwBufferSignal_p_par_x_D2_IN1
    );
  NlwBufferBlock_p_par_x_TRST_IN0 : X_BUF
    port map (
      I => p_par_ena_340,
      O => NlwBufferSignal_p_par_x_TRST_IN0
    );
  NlwBufferBlock_p_par_x_TRST_IN1 : X_BUF
    port map (
      I => p_par_ena_340,
      O => NlwBufferSignal_p_par_x_TRST_IN1
    );
  NlwBufferBlock_p_par_x_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_x_EXP_PT_0_IN0
    );
  NlwBufferBlock_p_par_x_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_p_par_x_EXP_PT_0_IN1
    );
  NlwBufferBlock_p_par_x_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_x_EXP_PT_1_IN0
    );
  NlwBufferBlock_p_par_x_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_p_par_x_EXP_PT_1_IN1
    );
  NlwBufferBlock_p_par_x_EXP_PT_1_IN2 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_p_par_x_EXP_PT_1_IN2
    );
  NlwBufferBlock_p_par_x_EXP_PT_1_IN3 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_p_par_x_EXP_PT_1_IN3
    );
  NlwBufferBlock_p_par_x_EXP_PT_1_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_p_par_x_EXP_PT_1_IN4
    );
  NlwBufferBlock_p_par_x_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => p_par_x_EXP_PT_0_341,
      O => NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_p_par_x_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => p_par_x_EXP_PT_1_343,
      O => NlwBufferSignal_p_par_x_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_z_ada_x_0_D_IN0 : X_BUF
    port map (
      I => z_ada_x_0_D1_348,
      O => NlwBufferSignal_z_ada_x_0_D_IN0
    );
  NlwBufferBlock_z_ada_x_0_D_IN1 : X_BUF
    port map (
      I => z_ada_x_0_D2_349,
      O => NlwBufferSignal_z_ada_x_0_D_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_0_IN0
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_0_IN1 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_0_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_1_IN0 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN0
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN2
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_1_IN3 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN3
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_1_IN4 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN4
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_2_IN0 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN0
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN2
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_2_IN3 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN3
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_2_IN4 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN4
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN0 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN0
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN1 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN2 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN2
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN3 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN3
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN4 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN4
    );
  NlwBufferBlock_z_ada_x_0_D2_PT_3_IN5 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN5
    );
  NlwBufferBlock_z_ada_x_0_D2_IN0 : X_BUF
    port map (
      I => z_ada_x_0_D2_PT_0_350,
      O => NlwBufferSignal_z_ada_x_0_D2_IN0
    );
  NlwBufferBlock_z_ada_x_0_D2_IN1 : X_BUF
    port map (
      I => z_ada_x_0_D2_PT_1_351,
      O => NlwBufferSignal_z_ada_x_0_D2_IN1
    );
  NlwBufferBlock_z_ada_x_0_D2_IN2 : X_BUF
    port map (
      I => z_ada_x_0_D2_PT_2_352,
      O => NlwBufferSignal_z_ada_x_0_D2_IN2
    );
  NlwBufferBlock_z_ada_x_0_D2_IN3 : X_BUF
    port map (
      I => z_ada_x_0_D2_PT_3_353,
      O => NlwBufferSignal_z_ada_x_0_D2_IN3
    );
  NlwBufferBlock_z_ada_x_0_TRST_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_z_ada_x_0_TRST_IN0
    );
  NlwBufferBlock_z_ada_x_0_TRST_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_z_ada_x_0_TRST_IN1
    );
  NlwBufferBlock_z_ada_x_0_TRST_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_z_ada_x_0_TRST_IN2
    );
  NlwBufferBlock_z_ada_x_0_TRST_IN3 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_z_ada_x_0_TRST_IN3
    );
  NlwBufferBlock_z_ada_x_0_TRST_IN4 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_UIM_310,
      O => NlwBufferSignal_z_ada_x_0_TRST_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D_356,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_Q_354,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_tsimcreated_xor_Q_357,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D1_359,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_360,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP30_EXP_361,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP30_EXP_361,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP31_EXP_363,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP31_EXP_363,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_0_362,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_1_364,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_366,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_368,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_369,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_370,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_371,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D_374,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D1_375,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_376,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_378,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_378,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN0 : X_BUF
    port map (
      I => EXP20_EXP_380,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN1 : X_BUF
    port map (
      I => EXP20_EXP_380,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_0_377,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_1_379,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_2_381,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_382,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_4_383,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN5 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_384,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN5
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN6 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_385,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D_389,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D1_390,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D2_391,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP19_EXP_392,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP19_EXP_392,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_0_393,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_394,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_395,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_396,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_397,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_399,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D_402,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D1_403,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_404,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP15_EXP_405,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP15_EXP_405,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP16_EXP_407,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP16_EXP_407,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4 : X_BUF
    port map (
      I => P_NTRDY_IBUF_41,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4 : X_BUF
    port map (
      I => P_NSTOP_IBUF_43,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN4 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN5 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN5
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN3 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN7
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_0_406,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_1_408,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_409,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_410,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_411,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN4
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN5 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_414,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN5
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN6 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_415,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D_420,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D1_421,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_422,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP26_EXP_423,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP26_EXP_423,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN0 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_0_424,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_1_425,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_426,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_428,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_429,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D_432,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D1_433,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_434,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP32_EXP_435,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP32_EXP_435,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP33_EXP_437,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP33_EXP_437,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN7 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN7
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN7
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN7
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN5 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_0_436,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_1_438,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_439,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_440,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_441,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_442,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_443,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_3_D_446,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_3_D1_447,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE_3_D2_448,
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => FSR_IO_0_6,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_REG_IN : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D_451,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_IN
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_REG_CLK
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D1_452,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_453,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP35_EXP_454,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP35_EXP_454,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP36_EXP_456,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP36_EXP_456,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_0_455,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_1_457,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_459,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_461,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_462,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN4
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_463,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN5
    );
  NlwBufferBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_464,
      O => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_RSTF_466,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_D_468,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_D1_469,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_D2_470,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(1),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(1),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_RSTF_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_1_RSTF_473,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN1 : X_BUF
    port map (
      I => Gnd_174,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_tsimcreated_prld_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_REG_IN : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_1_D_475,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_IN
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_REG_CLK
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_1_D1_476,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_1_D2_477,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(0),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x(0),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_UIM_471,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_RSTF_IN1
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D_IN0 : X_BUF
    port map (
      I => P_NGNT_1_OBUF_D1_480,
      O => NlwBufferSignal_P_NGNT_1_OBUF_D_IN0
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D_IN1 : X_BUF
    port map (
      I => P_NGNT_1_OBUF_D2_481,
      O => NlwBufferSignal_P_NGNT_1_OBUF_D_IN1
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN0
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN1
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN2
    );
  NlwBufferBlock_P_NGNT_1_OBUF_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN3
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D_IN0 : X_BUF
    port map (
      I => P_NGNT_2_OBUF_D1_484,
      O => NlwBufferSignal_P_NGNT_2_OBUF_D_IN0
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D_IN1 : X_BUF
    port map (
      I => P_NGNT_2_OBUF_D2_485,
      O => NlwBufferSignal_P_NGNT_2_OBUF_D_IN1
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN0
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN1
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN2
    );
  NlwBufferBlock_P_NGNT_2_OBUF_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN3
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D_IN0 : X_BUF
    port map (
      I => P_NGNT_3_OBUF_D1_488,
      O => NlwBufferSignal_P_NGNT_3_OBUF_D_IN0
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D_IN1 : X_BUF
    port map (
      I => P_NGNT_3_OBUF_D2_489,
      O => NlwBufferSignal_P_NGNT_3_OBUF_D_IN1
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN0
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN1
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN2
    );
  NlwBufferBlock_P_NGNT_3_OBUF_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN3
    );
  NlwBufferBlock_I_DATA_OBUF_D_IN0 : X_BUF
    port map (
      I => I_DATA_OBUF_D1_492,
      O => NlwBufferSignal_I_DATA_OBUF_D_IN0
    );
  NlwBufferBlock_I_DATA_OBUF_D_IN1 : X_BUF
    port map (
      I => I_DATA_OBUF_D2_493,
      O => NlwBufferSignal_I_DATA_OBUF_D_IN1
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN3 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN3
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN4 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN4
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_0_IN5 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN5
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN4 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN4
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_1_IN5 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN5
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_DOE_IBUF_12,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN4 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN4
    );
  NlwBufferBlock_I_DATA_OBUF_D2_PT_2_IN5 : X_BUF
    port map (
      I => Z_NBERR_IBUF_60,
      O => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN5
    );
  NlwBufferBlock_I_DATA_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_DATA_OBUF_D2_PT_0_494,
      O => NlwBufferSignal_I_DATA_OBUF_D2_IN0
    );
  NlwBufferBlock_I_DATA_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_DATA_OBUF_D2_PT_1_495,
      O => NlwBufferSignal_I_DATA_OBUF_D2_IN1
    );
  NlwBufferBlock_I_DATA_OBUF_D2_IN2 : X_BUF
    port map (
      I => I_DATA_OBUF_D2_PT_2_496,
      O => NlwBufferSignal_I_DATA_OBUF_D2_IN2
    );
  NlwBufferBlock_I_DAOUT_OBUF_D_IN0 : X_BUF
    port map (
      I => I_DAOUT_OBUF_D1_499,
      O => NlwBufferSignal_I_DAOUT_OBUF_D_IN0
    );
  NlwBufferBlock_I_DAOUT_OBUF_D_IN1 : X_BUF
    port map (
      I => I_DAOUT_OBUF_D2_500,
      O => NlwBufferSignal_I_DAOUT_OBUF_D_IN1
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_DAOUT_OBUF_D2_PT_0_501,
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_IN0
    );
  NlwBufferBlock_I_DAOUT_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_DAOUT_OBUF_D2_PT_1_502,
      O => NlwBufferSignal_I_DAOUT_OBUF_D2_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D_IN0 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D1_505,
      O => NlwBufferSignal_I_PCIENA_OBUF_D_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D_IN1 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D2_506,
      O => NlwBufferSignal_I_PCIENA_OBUF_D_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN2
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN3
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D2_PT_0_507,
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_IN0
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D2_PT_1_508,
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_IN1
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_IN2 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D2_PT_2_509,
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_IN2
    );
  NlwBufferBlock_I_PCIENA_OBUF_D2_IN3 : X_BUF
    port map (
      I => I_PCIENA_OBUF_D2_PT_3_510,
      O => NlwBufferSignal_I_PCIENA_OBUF_D2_IN3
    );
  NlwBufferBlock_I_CFLT_OBUF_D_IN0 : X_BUF
    port map (
      I => I_CFLT_OBUF_D1_513,
      O => NlwBufferSignal_I_CFLT_OBUF_D_IN0
    );
  NlwBufferBlock_I_CFLT_OBUF_D_IN1 : X_BUF
    port map (
      I => I_CFLT_OBUF_D2_514,
      O => NlwBufferSignal_I_CFLT_OBUF_D_IN1
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN0
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN1 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN1
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN2 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN2
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN3 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN3
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN4 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN4
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN5 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN5
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN6 : X_BUF
    port map (
      I => ncfg_x_247,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN6
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN7 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN7
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN8 : X_BUF
    port map (
      I => Z_AA_7_IBUF_72,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN8
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN9
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN10
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN11
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN12
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN13
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN14
    );
  NlwBufferBlock_I_CFLT_OBUF_D2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_I_CFLT_OBUF_D2_IN15
    );
  NlwBufferBlock_cycend_x_REG_IN : X_BUF
    port map (
      I => cycend_x_D_516,
      O => NlwBufferSignal_cycend_x_REG_IN
    );
  NlwBufferBlock_cycend_x_REG_CLK : X_BUF
    port map (
      I => cycend_x_CLKF_517,
      O => NlwBufferSignal_cycend_x_REG_CLK
    );
  NlwBufferBlock_cycend_x_D_IN0 : X_BUF
    port map (
      I => cycend_x_D1_519,
      O => NlwBufferSignal_cycend_x_D_IN0
    );
  NlwBufferBlock_cycend_x_D_IN1 : X_BUF
    port map (
      I => cycend_x_D2_520,
      O => NlwBufferSignal_cycend_x_D_IN1
    );
  NlwBufferBlock_cycend_x_CLKF_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cycend_x_CLKF_IN0
    );
  NlwBufferBlock_cycend_x_CLKF_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cycend_x_CLKF_IN1
    );
  NlwBufferBlock_cycend_x_CLKF_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_cycend_x_CLKF_IN2
    );
  NlwBufferBlock_cycend_x_CLKF_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cycend_x_CLKF_IN3
    );
  NlwBufferBlock_cycend_x_SETF_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_cycend_x_SETF_IN0
    );
  NlwBufferBlock_cycend_x_SETF_IN1 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_cycend_x_SETF_IN1
    );
  NlwBufferBlock_ncfg_x_REG_IN : X_BUF
    port map (
      I => ncfg_x_D_522,
      O => NlwBufferSignal_ncfg_x_REG_IN
    );
  NlwBufferBlock_ncfg_x_REG_CLK : X_BUF
    port map (
      I => ncfg_x_CLKF_523,
      O => NlwBufferSignal_ncfg_x_REG_CLK
    );
  NlwBufferBlock_ncfg_x_D_IN0 : X_BUF
    port map (
      I => ncfg_x_D1_524,
      O => NlwBufferSignal_ncfg_x_D_IN0
    );
  NlwBufferBlock_ncfg_x_D_IN1 : X_BUF
    port map (
      I => ncfg_x_D2_525,
      O => NlwBufferSignal_ncfg_x_D_IN1
    );
  NlwBufferBlock_ncfg_x_CLKF_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_ncfg_x_CLKF_IN0
    );
  NlwBufferBlock_ncfg_x_CLKF_IN1 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_ncfg_x_CLKF_IN1
    );
  NlwBufferBlock_ncfg_x_CLKF_IN2 : X_BUF
    port map (
      I => Z_AA_6_IBUF_45,
      O => NlwBufferSignal_ncfg_x_CLKF_IN2
    );
  NlwBufferBlock_ncfg_x_CLKF_IN3 : X_BUF
    port map (
      I => Z_AA_5_IBUF_51,
      O => NlwBufferSignal_ncfg_x_CLKF_IN3
    );
  NlwBufferBlock_ncfg_x_CLKF_IN4 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_ncfg_x_CLKF_IN4
    );
  NlwBufferBlock_ncfg_x_CLKF_IN5 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_ncfg_x_CLKF_IN5
    );
  NlwBufferBlock_ncfg_x_CLKF_IN6 : X_BUF
    port map (
      I => ncfg_x_247,
      O => NlwBufferSignal_ncfg_x_CLKF_IN6
    );
  NlwBufferBlock_ncfg_x_CLKF_IN7 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_ncfg_x_CLKF_IN7
    );
  NlwBufferBlock_ncfg_x_CLKF_IN8 : X_BUF
    port map (
      I => Z_AA_7_IBUF_72,
      O => NlwBufferSignal_ncfg_x_CLKF_IN8
    );
  NlwBufferBlock_ncfg_x_CLKF_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN9
    );
  NlwBufferBlock_ncfg_x_CLKF_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN10
    );
  NlwBufferBlock_ncfg_x_CLKF_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN11
    );
  NlwBufferBlock_ncfg_x_CLKF_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN12
    );
  NlwBufferBlock_ncfg_x_CLKF_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN13
    );
  NlwBufferBlock_ncfg_x_CLKF_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN14
    );
  NlwBufferBlock_ncfg_x_CLKF_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_ncfg_x_CLKF_IN15
    );
  NlwBufferBlock_cbe_p_REG_IN : X_BUF
    port map (
      I => cbe_p_D_527,
      O => NlwBufferSignal_cbe_p_REG_IN
    );
  NlwBufferBlock_cbe_p_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_cbe_p_REG_CLK
    );
  NlwBufferBlock_cbe_p_D_IN0 : X_BUF
    port map (
      I => cbe_p_D1_528,
      O => NlwBufferSignal_cbe_p_D_IN0
    );
  NlwBufferBlock_cbe_p_D_IN1 : X_BUF
    port map (
      I => cbe_p_D2_529,
      O => NlwBufferSignal_cbe_p_D_IN1
    );
  NlwBufferBlock_cbe_p_D1_IN0 : X_BUF
    port map (
      I => N4_82,
      O => NlwBufferSignal_cbe_p_D1_IN0
    );
  NlwBufferBlock_cbe_p_D1_IN1 : X_BUF
    port map (
      I => N4_82,
      O => NlwBufferSignal_cbe_p_D1_IN1
    );
  NlwBufferBlock_cbe_p_D2_PT_0_IN0 : X_BUF
    port map (
      I => N7_76,
      O => NlwBufferSignal_cbe_p_D2_PT_0_IN0
    );
  NlwBufferBlock_cbe_p_D2_PT_0_IN1 : X_BUF
    port map (
      I => N6_78,
      O => NlwBufferSignal_cbe_p_D2_PT_0_IN1
    );
  NlwBufferBlock_cbe_p_D2_PT_0_IN2 : X_BUF
    port map (
      I => N5_80,
      O => NlwBufferSignal_cbe_p_D2_PT_0_IN2
    );
  NlwBufferBlock_cbe_p_D2_PT_1_IN0 : X_BUF
    port map (
      I => N7_76,
      O => NlwBufferSignal_cbe_p_D2_PT_1_IN0
    );
  NlwBufferBlock_cbe_p_D2_PT_1_IN1 : X_BUF
    port map (
      I => N6_78,
      O => NlwBufferSignal_cbe_p_D2_PT_1_IN1
    );
  NlwBufferBlock_cbe_p_D2_PT_1_IN2 : X_BUF
    port map (
      I => N5_80,
      O => NlwBufferSignal_cbe_p_D2_PT_1_IN2
    );
  NlwBufferBlock_cbe_p_D2_PT_2_IN0 : X_BUF
    port map (
      I => N7_76,
      O => NlwBufferSignal_cbe_p_D2_PT_2_IN0
    );
  NlwBufferBlock_cbe_p_D2_PT_2_IN1 : X_BUF
    port map (
      I => N6_78,
      O => NlwBufferSignal_cbe_p_D2_PT_2_IN1
    );
  NlwBufferBlock_cbe_p_D2_PT_2_IN2 : X_BUF
    port map (
      I => N5_80,
      O => NlwBufferSignal_cbe_p_D2_PT_2_IN2
    );
  NlwBufferBlock_cbe_p_D2_PT_3_IN0 : X_BUF
    port map (
      I => N7_76,
      O => NlwBufferSignal_cbe_p_D2_PT_3_IN0
    );
  NlwBufferBlock_cbe_p_D2_PT_3_IN1 : X_BUF
    port map (
      I => N6_78,
      O => NlwBufferSignal_cbe_p_D2_PT_3_IN1
    );
  NlwBufferBlock_cbe_p_D2_PT_3_IN2 : X_BUF
    port map (
      I => N5_80,
      O => NlwBufferSignal_cbe_p_D2_PT_3_IN2
    );
  NlwBufferBlock_cbe_p_D2_IN0 : X_BUF
    port map (
      I => cbe_p_D2_PT_0_530,
      O => NlwBufferSignal_cbe_p_D2_IN0
    );
  NlwBufferBlock_cbe_p_D2_IN1 : X_BUF
    port map (
      I => cbe_p_D2_PT_1_531,
      O => NlwBufferSignal_cbe_p_D2_IN1
    );
  NlwBufferBlock_cbe_p_D2_IN2 : X_BUF
    port map (
      I => cbe_p_D2_PT_2_532,
      O => NlwBufferSignal_cbe_p_D2_IN2
    );
  NlwBufferBlock_cbe_p_D2_IN3 : X_BUF
    port map (
      I => cbe_p_D2_PT_3_533,
      O => NlwBufferSignal_cbe_p_D2_IN3
    );
  NlwBufferBlock_dat_p_REG_IN : X_BUF
    port map (
      I => dat_p_D_535,
      O => NlwBufferSignal_dat_p_REG_IN
    );
  NlwBufferBlock_dat_p_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_Q_21,
      O => NlwBufferSignal_dat_p_REG_CLK
    );
  NlwBufferBlock_dat_p_D_IN0 : X_BUF
    port map (
      I => dat_p_D1_536,
      O => NlwBufferSignal_dat_p_D_IN0
    );
  NlwBufferBlock_dat_p_D_IN1 : X_BUF
    port map (
      I => dat_p_D2_537,
      O => NlwBufferSignal_dat_p_D_IN1
    );
  NlwBufferBlock_dat_p_D1_IN0 : X_BUF
    port map (
      I => I_DATPAR_1_IBUF_86,
      O => NlwBufferSignal_dat_p_D1_IN0
    );
  NlwBufferBlock_dat_p_D1_IN1 : X_BUF
    port map (
      I => I_DATPAR_1_IBUF_86,
      O => NlwBufferSignal_dat_p_D1_IN1
    );
  NlwBufferBlock_dat_p_D2_IN0 : X_BUF
    port map (
      I => I_DATPAR_0_IBUF_84,
      O => NlwBufferSignal_dat_p_D2_IN0
    );
  NlwBufferBlock_dat_p_D2_IN1 : X_BUF
    port map (
      I => I_DATPAR_0_IBUF_84,
      O => NlwBufferSignal_dat_p_D2_IN1
    );
  NlwBufferBlock_p_par_ena_REG_IN : X_BUF
    port map (
      I => p_par_ena_D_539,
      O => NlwBufferSignal_p_par_ena_REG_IN
    );
  NlwBufferBlock_p_par_ena_REG_CLK : X_BUF
    port map (
      I => I_PCICLK2_IBUF_FCLK_20,
      O => NlwBufferSignal_p_par_ena_REG_CLK
    );
  NlwBufferBlock_p_par_ena_D_IN0 : X_BUF
    port map (
      I => p_par_ena_D1_540,
      O => NlwBufferSignal_p_par_ena_D_IN0
    );
  NlwBufferBlock_p_par_ena_D_IN1 : X_BUF
    port map (
      I => p_par_ena_D2_541,
      O => NlwBufferSignal_p_par_ena_D_IN1
    );
  NlwBufferBlock_p_par_ena_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_p_par_ena_D2_PT_0_IN0
    );
  NlwBufferBlock_p_par_ena_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_p_par_ena_D2_PT_0_IN1
    );
  NlwBufferBlock_p_par_ena_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_ena_D2_PT_0_IN2
    );
  NlwBufferBlock_p_par_ena_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_p_par_ena_D2_PT_1_IN0
    );
  NlwBufferBlock_p_par_ena_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_p_par_ena_D2_PT_1_IN1
    );
  NlwBufferBlock_p_par_ena_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_ena_D2_PT_1_IN2
    );
  NlwBufferBlock_p_par_ena_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_p_par_ena_D2_PT_2_IN0
    );
  NlwBufferBlock_p_par_ena_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_ena_D2_PT_2_IN1
    );
  NlwBufferBlock_p_par_ena_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_p_par_ena_D2_PT_2_IN2
    );
  NlwBufferBlock_p_par_ena_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_p_par_ena_D2_PT_3_IN0
    );
  NlwBufferBlock_p_par_ena_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_p_par_ena_D2_PT_3_IN1
    );
  NlwBufferBlock_p_par_ena_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_p_par_ena_D2_PT_3_IN2
    );
  NlwBufferBlock_p_par_ena_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_p_par_ena_D2_PT_3_IN3
    );
  NlwBufferBlock_p_par_ena_D2_IN0 : X_BUF
    port map (
      I => p_par_ena_D2_PT_0_542,
      O => NlwBufferSignal_p_par_ena_D2_IN0
    );
  NlwBufferBlock_p_par_ena_D2_IN1 : X_BUF
    port map (
      I => p_par_ena_D2_PT_1_543,
      O => NlwBufferSignal_p_par_ena_D2_IN1
    );
  NlwBufferBlock_p_par_ena_D2_IN2 : X_BUF
    port map (
      I => p_par_ena_D2_PT_2_544,
      O => NlwBufferSignal_p_par_ena_D2_IN2
    );
  NlwBufferBlock_p_par_ena_D2_IN3 : X_BUF
    port map (
      I => p_par_ena_D2_PT_3_545,
      O => NlwBufferSignal_p_par_ena_D2_IN3
    );
  NlwBufferBlock_I_NINT2_OBUF_D_IN0 : X_BUF
    port map (
      I => I_NINT2_OBUF_D1_548,
      O => NlwBufferSignal_I_NINT2_OBUF_D_IN0
    );
  NlwBufferBlock_I_NINT2_OBUF_D_IN1 : X_BUF
    port map (
      I => I_NINT2_OBUF_D2_549,
      O => NlwBufferSignal_I_NINT2_OBUF_D_IN1
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => pci_int_ena_x_214,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => pci_int_ena_x_214,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => P_NINTD_IBUF_31,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => P_NINTC_IBUF_33,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => P_NINTB_IBUF_35,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => P_NINTA_IBUF_37,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_NINT2_OBUF_D2_PT_0_550,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_IN0
    );
  NlwBufferBlock_I_NINT2_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_NINT2_OBUF_D2_PT_1_551,
      O => NlwBufferSignal_I_NINT2_OBUF_D2_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D_IN0 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_D1_555,
      O => NlwBufferSignal_P_NGNT_0_OBUF_D_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D_IN1 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_D2_556,
      O => NlwBufferSignal_P_NGNT_0_OBUF_D_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN3
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_0_IN3 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN3
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_1_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_1_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_2_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_2_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_PT_3_IN4 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN4
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_PT_0_557,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_PT_1_558,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_PT_2_559,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => P_NGNT_0_OBUF_EXP_PT_3_560,
      O => NlwBufferSignal_P_NGNT_0_OBUF_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_I_PCIDL_OBUF_D_IN0 : X_BUF
    port map (
      I => I_PCIDL_OBUF_D1_563,
      O => NlwBufferSignal_I_PCIDL_OBUF_D_IN0
    );
  NlwBufferBlock_I_PCIDL_OBUF_D_IN1 : X_BUF
    port map (
      I => I_PCIDL_OBUF_D2_564,
      O => NlwBufferSignal_I_PCIDL_OBUF_D_IN1
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN3
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_0_IN4 : X_BUF
    port map (
      I => P_NTRDY_IBUF_41,
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN4
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_PT_1_IN4 : X_BUF
    port map (
      I => P_NTRDY_IBUF_41,
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN4
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_PCIDL_OBUF_D2_PT_0_565,
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_IN0
    );
  NlwBufferBlock_I_PCIDL_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_PCIDL_OBUF_D2_PT_1_566,
      O => NlwBufferSignal_I_PCIDL_OBUF_D2_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D_IN0 : X_BUF
    port map (
      I => I_PLA_0_OBUF_D1_569,
      O => NlwBufferSignal_I_PLA_0_OBUF_D_IN0
    );
  NlwBufferBlock_I_PLA_0_OBUF_D_IN1 : X_BUF
    port map (
      I => I_PLA_0_OBUF_D2_570,
      O => NlwBufferSignal_I_PLA_0_OBUF_D_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_2_IN0 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN0
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_2_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_2_IN2 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN2
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_PT_2_IN3 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN3
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_PLA_0_OBUF_D2_PT_0_571,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_IN0
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_PLA_0_OBUF_D2_PT_1_572,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_IN1
    );
  NlwBufferBlock_I_PLA_0_OBUF_D2_IN2 : X_BUF
    port map (
      I => I_PLA_0_OBUF_D2_PT_2_573,
      O => NlwBufferSignal_I_PLA_0_OBUF_D2_IN2
    );
  NlwBufferBlock_I_PLA_1_OBUF_D_IN0 : X_BUF
    port map (
      I => I_PLA_1_OBUF_D1_576,
      O => NlwBufferSignal_I_PLA_1_OBUF_D_IN0
    );
  NlwBufferBlock_I_PLA_1_OBUF_D_IN1 : X_BUF
    port map (
      I => I_PLA_1_OBUF_D2_577,
      O => NlwBufferSignal_I_PLA_1_OBUF_D_IN1
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_0_IN0 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN0
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_0_IN1 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN1
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_0_IN2 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN2
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_0_IN3 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN3
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_0_IN4 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN4
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_1_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN0
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_1_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN1
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_1_IN2 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN2
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_1_IN3 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN3
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_PT_1_IN4 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN4
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_PLA_1_OBUF_D2_PT_0_578,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_IN0
    );
  NlwBufferBlock_I_PLA_1_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_PLA_1_OBUF_D2_PT_1_579,
      O => NlwBufferSignal_I_PLA_1_OBUF_D2_IN1
    );
  NlwBufferBlock_N0_D_IN0 : X_BUF
    port map (
      I => N0_D1_584,
      O => NlwBufferSignal_N0_D_IN0
    );
  NlwBufferBlock_N0_D_IN1 : X_BUF
    port map (
      I => N0_D2_585,
      O => NlwBufferSignal_N0_D_IN1
    );
  NlwBufferBlock_N0_TRST_IN0 : X_BUF
    port map (
      I => N0_N0_TRST_UIM_586,
      O => NlwBufferSignal_N0_TRST_IN0
    );
  NlwBufferBlock_N0_TRST_IN1 : X_BUF
    port map (
      I => N0_N0_TRST_UIM_586,
      O => NlwBufferSignal_N0_TRST_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_D_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_D1_589,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_D_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_D2_590,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_D_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_D2_IN0 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_D2_IN1 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF0_D_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF0_D1_593,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF0_D_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF0_D2_594,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF0_D2_IN0 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF0_D2_IN1 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF1_D_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF1_D1_597,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF1_D_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF1_D2_598,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF1_D2_IN0 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF1_D2_IN1 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF2_D_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF2_D1_601,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF2_D_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF2_D2_602,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF2_D2_IN0 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF2_D2_IN1 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_D_IN0 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_D1_606,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_D_IN1 : X_BUF
    port map (
      I => P_CLKOUT_0_OBUF_BUF3_D2_607,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_D2_IN0 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_D2_IN1 : X_BUF
    port map (
      I => I_33M_IBUF_88,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => P_NINTD_IBUF_31,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => P_NINTC_IBUF_33,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => P_NINTB_IBUF_35,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => P_NINTA_IBUF_37,
      O => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_I_NINT6_OBUF_D_IN0 : X_BUF
    port map (
      I => I_NINT6_OBUF_D1_610,
      O => NlwBufferSignal_I_NINT6_OBUF_D_IN0
    );
  NlwBufferBlock_I_NINT6_OBUF_D_IN1 : X_BUF
    port map (
      I => I_NINT6_OBUF_D2_611,
      O => NlwBufferSignal_I_NINT6_OBUF_D_IN1
    );
  NlwBufferBlock_I_NINT6_OBUF_BUF0_D_IN0 : X_BUF
    port map (
      I => I_NINT6_OBUF_BUF0_D1_614,
      O => NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN0
    );
  NlwBufferBlock_I_NINT6_OBUF_BUF0_D_IN1 : X_BUF
    port map (
      I => I_NINT6_OBUF_BUF0_D2_615,
      O => NlwBufferSignal_I_NINT6_OBUF_BUF0_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D1_618,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_619,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_620,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_621,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_622,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_623,
      O => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_IN3
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D1_626,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_627,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0 : X_BUF
    port map (
      I => Z_NIORST_IBUF_5,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1 : X_BUF
    port map (
      I => Z_NIORST_IBUF_5,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_628,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_629,
      O => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_IN1
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D_IN0 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_D1_632,
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN0
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D_IN1 : X_BUF
    port map (
      I => cbp_x_2_cbp_x_2_TRST_D2_633,
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN1
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN0
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D1_IN1
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1
    );
  NlwBufferBlock_cbp_x_2_cbp_x_2_TRST_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2
    );
  NlwBufferBlock_OpTx_FX_DC_519_D_IN0 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_D1_636,
      O => NlwBufferSignal_OpTx_FX_DC_519_D_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_519_D_IN1 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_D2_637,
      O => NlwBufferSignal_OpTx_FX_DC_519_D_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_PT_0_IN1 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_0_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_PT_1_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_PT_1_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_PT_1_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN2
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_IN0 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_D2_PT_0_638,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_519_D2_IN1 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_519_D2_PT_1_639,
      O => NlwBufferSignal_OpTx_FX_DC_519_D2_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D_IN0 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D1_642,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D_IN1 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_643,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_0_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_0_IN1 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_0_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_1_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_1_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_2_IN0 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_2_IN1 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_3_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_3_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_3_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN2
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN3
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_4_IN0 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_4_IN1 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_4_IN2 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN2
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_4_IN3 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN3
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_PT_4_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_4_IN4
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_IN0 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_PT_0_644,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN0
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_IN1 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_PT_1_645,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN1
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_PT_2_646,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN2
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_IN3 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_PT_3_647,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN3
    );
  NlwBufferBlock_OpTx_FX_DC_1244_D2_IN4 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_D2_PT_4_648,
      O => NlwBufferSignal_OpTx_FX_DC_1244_D2_IN4
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN0 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D1_651,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_652,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN1 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN1 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN2
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN0 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN1 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN2 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN2
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN3 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_IN3
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN0 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_0_653,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN0
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_1_654,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN1
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_655,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN2
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_656,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN3
    );
  NlwBufferBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_4_657,
      O => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_IN4
    );
  NlwBufferBlock_OpTx_INV_509_D_IN0 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D1_660,
      O => NlwBufferSignal_OpTx_INV_509_D_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D_IN1 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_661,
      O => NlwBufferSignal_OpTx_INV_509_D_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP22_EXP_662,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP22_EXP_662,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_0_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP23_EXP_664,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP23_EXP_664,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_1_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN2
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN2
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_5_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN2
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_6_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_PT_6_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN2
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN0 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_0_663,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN0
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN1 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_1_665,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN1
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN2 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_2_666,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN2
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN3 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_3_667,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN3
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN4 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_4_668,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN4
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN5 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_5_669,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN5
    );
  NlwBufferBlock_OpTx_INV_509_D2_IN6 : X_BUF
    port map (
      I => Q_OpTx_INV_509_D2_PT_6_670,
      O => NlwBufferSignal_OpTx_INV_509_D2_IN6
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D1_673,
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_674,
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN0
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN1
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN2
    );
  NlwBufferBlock_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_D2_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN0 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D1_677,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN1 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_678,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN0 : X_BUF
    port map (
      I => EXP27_EXP_679,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN1 : X_BUF
    port map (
      I => EXP27_EXP_679,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN0 : X_BUF
    port map (
      I => EXP28_EXP_681,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN1 : X_BUF
    port map (
      I => EXP28_EXP_681,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN6
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN6
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN7
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN7 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN7
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN6
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN6
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN0 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_0_680,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN0
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN1 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_1_682,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN1
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN2 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_683,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN2
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_684,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN3
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN4 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_685,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN4
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN5 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_686,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN5
    );
  NlwBufferBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN6 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_687,
      O => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_IN6
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D1_690,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_691,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0 : X_BUF
    port map (
      I => P_NDEVSEL_IBUF_74,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1 : X_BUF
    port map (
      I => P_NDEVSEL_IBUF_74,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN1
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_692,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN0
    );
  NlwBufferBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_693,
      O => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D_IN0 : X_BUF
    port map (
      I => N0_N0_TRST_D1_697,
      O => NlwBufferSignal_N0_N0_TRST_D_IN0
    );
  NlwBufferBlock_N0_N0_TRST_D_IN1 : X_BUF
    port map (
      I => N0_N0_TRST_D2_698,
      O => NlwBufferSignal_N0_N0_TRST_D_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN0
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_0_IN1 : X_BUF
    port map (
      I => Z_NFCS_IBUF_57,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_0_IN2 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN2
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_1_IN0 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN0
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_1_IN1 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_1_IN2 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN2
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_1_IN3 : X_BUF
    port map (
      I => Z_NFCS_IBUF_57,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN3
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_2_IN0 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN0
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_2_IN1 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_2_IN2 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN2
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_2_IN3 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN3
    );
  NlwBufferBlock_N0_N0_TRST_D2_PT_2_IN4 : X_BUF
    port map (
      I => Z_NFCS_IBUF_57,
      O => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN4
    );
  NlwBufferBlock_N0_N0_TRST_D2_IN0 : X_BUF
    port map (
      I => N0_N0_TRST_D2_PT_0_699,
      O => NlwBufferSignal_N0_N0_TRST_D2_IN0
    );
  NlwBufferBlock_N0_N0_TRST_D2_IN1 : X_BUF
    port map (
      I => N0_N0_TRST_D2_PT_1_700,
      O => NlwBufferSignal_N0_N0_TRST_D2_IN1
    );
  NlwBufferBlock_N0_N0_TRST_D2_IN2 : X_BUF
    port map (
      I => N0_N0_TRST_D2_PT_2_701,
      O => NlwBufferSignal_N0_N0_TRST_D2_IN2
    );
  NlwBufferBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP14_EXP_PT_0_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_EXP14_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP14_EXP_PT_0_IN1 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_EXP14_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP14_EXP_PT_0_IN2 : X_BUF
    port map (
      I => Z_AA_3_IBUF_55,
      O => NlwBufferSignal_EXP14_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP14_EXP_PT_1_IN0 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_EXP14_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP14_EXP_PT_1_IN1 : X_BUF
    port map (
      I => Z_AA_4_IBUF_53,
      O => NlwBufferSignal_EXP14_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP14_EXP_PT_1_IN2 : X_BUF
    port map (
      I => Z_AA_2_IBUF_62,
      O => NlwBufferSignal_EXP14_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP14_EXP_PT_1_IN3 : X_BUF
    port map (
      I => I_ZLA_IBUF_64,
      O => NlwBufferSignal_EXP14_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP14_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP14_EXP_PT_0_703,
      O => NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP14_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP14_EXP_PT_1_704,
      O => NlwBufferSignal_EXP14_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP15_EXP_PT_0_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP15_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP15_EXP_PT_1_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP15_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN5 : X_BUF
    port map (
      I => P_NTRDY_IBUF_41,
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP15_EXP_PT_2_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP15_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN5 : X_BUF
    port map (
      I => P_NSTOP_IBUF_43,
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP15_EXP_PT_3_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP15_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN5 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN6 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP15_EXP_PT_4_IN7 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_EXP15_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP15_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP15_EXP_PT_0_706,
      O => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP15_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP15_EXP_PT_1_707,
      O => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP15_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP15_EXP_PT_2_708,
      O => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP15_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP15_EXP_PT_3_709,
      O => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP15_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP15_EXP_PT_4_710,
      O => NlwBufferSignal_EXP15_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP17_EXP_712,
      O => NlwBufferSignal_EXP16_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP17_EXP_712,
      O => NlwBufferSignal_EXP16_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN4 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN7 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN8 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP16_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN4 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN7 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN8 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN8
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN9
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN10
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN11
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN12
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN13
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN14
    );
  NlwBufferBlock_EXP16_EXP_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_2_IN15
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN8 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP16_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN3 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN4 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN5 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN8 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN9 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP16_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN3 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN6 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN7 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN7
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN8 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN8
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN9 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN9
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN10 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN10
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN11
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN12
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN13
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN14
    );
  NlwBufferBlock_EXP16_EXP_PT_5_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP16_EXP_PT_5_IN15
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP16_EXP_PT_0_713,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP16_EXP_PT_1_714,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP16_EXP_PT_2_715,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP16_EXP_PT_3_716,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP16_EXP_PT_4_717,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP16_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP16_EXP_PT_5_718,
      O => NlwBufferSignal_EXP16_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN4 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN5 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN6 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN8
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN9 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN9
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN10 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN10
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN11
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN12
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN13
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN14
    );
  NlwBufferBlock_EXP17_EXP_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_0_IN15
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN4 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN7 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN8 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN9 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN10 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN11 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP17_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP17_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP17_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP17_EXP_PT_0_720,
      O => NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP17_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP17_EXP_PT_1_721,
      O => NlwBufferSignal_EXP17_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN3 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP18_EXP_PT_0_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP18_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN3 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN6 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP18_EXP_PT_1_IN7 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP18_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN5 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN6 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP18_EXP_PT_2_IN7 : X_BUF
    port map (
      I => cycend_x_398,
      O => NlwBufferSignal_EXP18_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN3 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN4 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN5 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN8 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN9 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP18_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN6 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN7 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN8 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN9 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN10 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP18_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP18_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP18_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP18_EXP_PT_0_724,
      O => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP18_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP18_EXP_PT_1_725,
      O => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP18_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP18_EXP_PT_2_726,
      O => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP18_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP18_EXP_PT_3_727,
      O => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP18_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP18_EXP_PT_4_728,
      O => NlwBufferSignal_EXP18_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP19_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP18_EXP_723,
      O => NlwBufferSignal_EXP19_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP18_EXP_723,
      O => NlwBufferSignal_EXP19_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP19_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP19_EXP_PT_1_IN3 : X_BUF
    port map (
      I => P_NTRDY_IBUF_41,
      O => NlwBufferSignal_EXP19_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP19_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP19_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP19_EXP_PT_2_IN3 : X_BUF
    port map (
      I => P_NSTOP_IBUF_43,
      O => NlwBufferSignal_EXP19_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP19_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP19_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP19_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP19_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP19_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP19_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP19_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP19_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP19_EXP_PT_4_IN4 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_EXP19_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN5 : X_BUF
    port map (
      I => N1_70,
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP19_EXP_PT_5_IN6 : X_BUF
    port map (
      I => N01_68,
      O => NlwBufferSignal_EXP19_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP19_EXP_PT_0_730,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP19_EXP_PT_1_731,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP19_EXP_PT_2_732,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP19_EXP_PT_3_733,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP19_EXP_PT_4_734,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP19_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP19_EXP_PT_5_735,
      O => NlwBufferSignal_EXP19_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP20_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP20_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP20_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP20_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP20_EXP_PT_0_IN2 : X_BUF
    port map (
      I => Z_READ_IBUF_10,
      O => NlwBufferSignal_EXP20_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP20_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP20_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP20_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP20_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP20_EXP_PT_1_IN2 : X_BUF
    port map (
      I => Z_NSLAVE_IBUF_1,
      O => NlwBufferSignal_EXP20_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP20_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP20_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP20_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP20_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP20_EXP_PT_2_IN2 : X_BUF
    port map (
      I => ncfg_xx_178,
      O => NlwBufferSignal_EXP20_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP20_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP20_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP20_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP20_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP20_EXP_PT_3_IN2 : X_BUF
    port map (
      I => I_ACC_0_IBUF_14,
      O => NlwBufferSignal_EXP20_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP20_EXP_PT_3_IN3 : X_BUF
    port map (
      I => I_ACC_1_IBUF_16,
      O => NlwBufferSignal_EXP20_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP20_EXP_PT_3_IN4 : X_BUF
    port map (
      I => I_ZMA_IBUF_18,
      O => NlwBufferSignal_EXP20_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN2 : X_BUF
    port map (
      I => Z_NDS_3_IBUF_8,
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Z_NDS_2_IBUF_25,
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN4 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP20_EXP_PT_4_IN5 : X_BUF
    port map (
      I => Z_NDS_0_IBUF_29,
      O => NlwBufferSignal_EXP20_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP20_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP20_EXP_PT_0_737,
      O => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP20_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP20_EXP_PT_1_738,
      O => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP20_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP20_EXP_PT_2_739,
      O => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP20_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP20_EXP_PT_3_740,
      O => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP20_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP20_EXP_PT_4_741,
      O => NlwBufferSignal_EXP20_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_0_IN5 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP21_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP21_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN6 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN7 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN8
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN9
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN10
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN11
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN12
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN13
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN14
    );
  NlwBufferBlock_EXP21_EXP_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_2_IN15
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP21_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN5 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN6 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP21_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP21_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP21_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP21_EXP_PT_0_744,
      O => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP21_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP21_EXP_PT_1_745,
      O => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP21_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP21_EXP_PT_2_746,
      O => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP21_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP21_EXP_PT_3_747,
      O => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP21_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP21_EXP_PT_4_748,
      O => NlwBufferSignal_EXP21_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP22_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP21_EXP_743,
      O => NlwBufferSignal_EXP22_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP21_EXP_743,
      O => NlwBufferSignal_EXP22_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP22_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_1_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP22_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP22_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP22_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP22_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP22_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_2_IN2 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP22_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP22_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP22_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP22_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP22_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP22_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP22_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP22_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP22_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP22_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP22_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP22_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP22_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP22_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP22_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP22_EXP_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP22_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP22_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP22_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP22_EXP_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP22_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP22_EXP_PT_0_750,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP22_EXP_PT_1_751,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP22_EXP_PT_2_752,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP22_EXP_PT_3_753,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP22_EXP_PT_4_754,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP22_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP22_EXP_PT_5_755,
      O => NlwBufferSignal_EXP22_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP23_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP24_EXP_757,
      O => NlwBufferSignal_EXP23_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP24_EXP_757,
      O => NlwBufferSignal_EXP23_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP23_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP23_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP23_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP23_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP23_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP23_EXP_PT_2_IN0 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP23_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP23_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_2_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP23_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP23_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP23_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP23_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP23_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP23_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_3_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP23_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP23_EXP_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP23_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP23_EXP_PT_3_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP23_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP23_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP23_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP23_EXP_PT_5_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP23_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP23_EXP_PT_0_758,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP23_EXP_PT_1_759,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP23_EXP_PT_2_760,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP23_EXP_PT_3_761,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP23_EXP_PT_4_762,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP23_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP23_EXP_PT_5_763,
      O => NlwBufferSignal_EXP23_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN6
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN7
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN8
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN9
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN10
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN11
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN12
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN13
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN14
    );
  NlwBufferBlock_EXP24_EXP_tsimrenamed_net_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN15
    );
  NlwBufferBlock_EXP25_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP25_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP25_EXP_PT_0_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP25_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP25_EXP_PT_0_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP25_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP25_EXP_PT_0_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP25_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP25_EXP_PT_0_IN4 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP25_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP25_EXP_PT_1_IN5 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP25_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP25_EXP_PT_2_IN5 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP25_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP25_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP25_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP25_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP25_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP25_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP25_EXP_PT_0_767,
      O => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP25_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP25_EXP_PT_1_768,
      O => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP25_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP25_EXP_PT_2_769,
      O => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP25_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP25_EXP_PT_3_770,
      O => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP25_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP25_EXP_PT_4_771,
      O => NlwBufferSignal_EXP25_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP26_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP25_EXP_766,
      O => NlwBufferSignal_EXP26_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP25_EXP_766,
      O => NlwBufferSignal_EXP26_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_1_IN0 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP26_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_1_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP26_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP26_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP26_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP26_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP26_EXP_PT_2_IN0 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP26_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP26_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP26_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP26_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP26_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP26_EXP_PT_3_IN0 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP26_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP26_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP26_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP26_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP26_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP26_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP26_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP26_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP26_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP26_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP26_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP26_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_pcitout_x_THE_PCI_ARB_pcitout_x_D2_UIM_427,
      O => NlwBufferSignal_EXP26_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP26_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP26_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP26_EXP_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP26_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP26_EXP_PT_5_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP26_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP26_EXP_PT_5_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP26_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP26_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP26_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP26_EXP_PT_0_773,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP26_EXP_PT_1_774,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP26_EXP_PT_2_775,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP26_EXP_PT_3_776,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP26_EXP_PT_4_777,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP26_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP26_EXP_PT_5_778,
      O => NlwBufferSignal_EXP26_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_EXP_418,
      O => NlwBufferSignal_EXP27_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE_0_EXP_418,
      O => NlwBufferSignal_EXP27_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP27_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP27_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP27_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP27_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP27_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP27_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP27_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP27_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN5 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN6 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP27_EXP_PT_5_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP27_EXP_PT_5_IN7
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP27_EXP_PT_0_780,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP27_EXP_PT_1_781,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP27_EXP_PT_2_782,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP27_EXP_PT_3_783,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP27_EXP_PT_4_784,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP27_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP27_EXP_PT_5_785,
      O => NlwBufferSignal_EXP27_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP28_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP28_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP28_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP28_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP28_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP28_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP28_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP28_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP28_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP28_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP28_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP28_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP28_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP28_EXP_PT_0_787,
      O => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP28_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP28_EXP_PT_1_788,
      O => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP28_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP28_EXP_PT_2_789,
      O => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP28_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP28_EXP_PT_3_790,
      O => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP28_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP28_EXP_PT_4_791,
      O => NlwBufferSignal_EXP28_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN8 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN8
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN9
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN10
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN11
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN12
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN13
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN14
    );
  NlwBufferBlock_EXP29_EXP_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_0_IN15
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN5 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP29_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN5 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN8 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN8
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN9
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN10
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN11
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN12
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN13
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN14
    );
  NlwBufferBlock_EXP29_EXP_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_2_IN15
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP29_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN5 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN6 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP29_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP29_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP29_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP29_EXP_PT_0_794,
      O => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP29_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP29_EXP_PT_1_795,
      O => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP29_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP29_EXP_PT_2_796,
      O => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP29_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP29_EXP_PT_3_797,
      O => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP29_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP29_EXP_PT_4_798,
      O => NlwBufferSignal_EXP29_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP29_EXP_793,
      O => NlwBufferSignal_EXP30_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP29_EXP_793,
      O => NlwBufferSignal_EXP30_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_1_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP30_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP30_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_3_IN5 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP30_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP30_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN5 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP30_EXP_PT_5_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP30_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP30_EXP_PT_0_800,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP30_EXP_PT_1_801,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP30_EXP_PT_2_802,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP30_EXP_PT_3_803,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP30_EXP_PT_4_804,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP30_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP30_EXP_PT_5_805,
      O => NlwBufferSignal_EXP30_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP31_EXP_PT_0_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP31_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN6 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN7 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP31_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN8
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN9
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN10
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN11
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN12
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN13
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN14
    );
  NlwBufferBlock_EXP31_EXP_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_2_IN15
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP31_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN8 : X_BUF
    port map (
      I => Q_OpTx_FX_DC_1244_UIM_365,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP31_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP31_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP31_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP31_EXP_PT_0_807,
      O => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP31_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP31_EXP_PT_1_808,
      O => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP31_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP31_EXP_PT_2_809,
      O => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP31_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP31_EXP_PT_3_810,
      O => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP31_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP31_EXP_PT_4_811,
      O => NlwBufferSignal_EXP31_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_0_IN0 : X_BUF
    port map (
      I => p_par_x_EXP_332,
      O => NlwBufferSignal_EXP32_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_0_IN1 : X_BUF
    port map (
      I => p_par_x_EXP_332,
      O => NlwBufferSignal_EXP32_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP32_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP32_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP32_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP32_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN5 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP32_EXP_PT_5_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP32_EXP_PT_5_IN7
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP32_EXP_PT_0_813,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP32_EXP_PT_1_814,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP32_EXP_PT_2_815,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP32_EXP_PT_3_816,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP32_EXP_PT_4_817,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP32_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP32_EXP_PT_5_818,
      O => NlwBufferSignal_EXP32_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP33_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP33_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP33_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP33_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP33_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP33_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP33_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP33_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN3 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP33_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP33_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP33_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP33_EXP_PT_0_820,
      O => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP33_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP33_EXP_PT_1_821,
      O => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP33_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP33_EXP_PT_2_822,
      O => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP33_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP33_EXP_PT_3_823,
      O => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP33_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP33_EXP_PT_4_824,
      O => NlwBufferSignal_EXP33_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP34_EXP_PT_0_IN6 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP34_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN5 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP34_EXP_PT_1_IN6 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP34_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN4 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP34_EXP_PT_2_IN7 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP34_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN6 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN8 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP34_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP34_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP34_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP34_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP34_EXP_PT_0_827,
      O => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP34_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP34_EXP_PT_1_828,
      O => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP34_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP34_EXP_PT_2_829,
      O => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP34_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP34_EXP_PT_3_830,
      O => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP34_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP34_EXP_PT_4_831,
      O => NlwBufferSignal_EXP34_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP35_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP34_EXP_826,
      O => NlwBufferSignal_EXP35_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP34_EXP_826,
      O => NlwBufferSignal_EXP35_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP35_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_1_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP35_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_1_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP35_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP35_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP35_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP35_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP35_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_2_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP35_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_2_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP35_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP35_EXP_PT_2_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP35_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP35_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP35_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_3_IN1 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP35_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_3_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP35_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP35_EXP_PT_3_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP35_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP35_EXP_PT_4_IN0 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP35_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_4_IN1 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP35_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_4_IN2 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP35_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP35_EXP_PT_4_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP35_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP35_EXP_PT_5_IN0 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP35_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP35_EXP_PT_5_IN1 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP35_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP35_EXP_PT_5_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP35_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP35_EXP_PT_5_IN3 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP35_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP35_EXP_PT_0_833,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP35_EXP_PT_1_834,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP35_EXP_PT_2_835,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP35_EXP_PT_3_836,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP35_EXP_PT_4_837,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP35_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP35_EXP_PT_5_838,
      O => NlwBufferSignal_EXP35_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP36_EXP_PT_0_IN0 : X_BUF
    port map (
      I => EXP37_EXP_840,
      O => NlwBufferSignal_EXP36_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_0_IN1 : X_BUF
    port map (
      I => EXP37_EXP_840,
      O => NlwBufferSignal_EXP36_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP36_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_1_IN1 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP36_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_1_IN2 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP36_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP36_EXP_PT_1_IN3 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP36_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP36_EXP_PT_1_IN4 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP36_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP36_EXP_PT_2_IN6 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP36_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP36_EXP_PT_3_IN6 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP36_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP36_EXP_PT_4_IN6 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP36_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN0
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN1
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN2 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN2
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN3 : X_BUF
    port map (
      I => P_NREQ_3_IBUF_49,
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN3
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN4 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN4
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN5
    );
  NlwBufferBlock_EXP36_EXP_PT_5_IN6 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP36_EXP_PT_5_IN6
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP36_EXP_PT_0_841,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP36_EXP_PT_1_842,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP36_EXP_PT_2_843,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP36_EXP_PT_3_844,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP36_EXP_PT_4_845,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP36_EXP_tsimrenamed_net_IN5 : X_BUF
    port map (
      I => EXP36_EXP_PT_5_846,
      O => NlwBufferSignal_EXP36_EXP_tsimrenamed_net_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN0
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN1
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN2
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN3
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN4
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN6 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN6
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN7
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN8
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN9 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN9
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN10
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN11
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN12
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN13
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN14
    );
  NlwBufferBlock_EXP37_EXP_PT_0_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_0_IN15
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN0
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN1
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN2
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN3
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN4
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN6 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN6
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN7
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN8
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN9 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN9
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN10
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN11
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN12
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN13
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN14
    );
  NlwBufferBlock_EXP37_EXP_PT_1_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_1_IN15
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN0
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN1
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN2
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN3
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN4
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN6 : X_BUF
    port map (
      I => P_NREQ_2_IBUF_47,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN6
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN7 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN7
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN8
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN9 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN9
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN10
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN11
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN12
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN13
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN14
    );
  NlwBufferBlock_EXP37_EXP_PT_2_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_2_IN15
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN0
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN1
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN2
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN3
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN4
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN5 : X_BUF
    port map (
      I => P_NREQ_0_IBUF_39,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN6 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN6
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN7 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN7
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN8 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN8
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN9 : X_BUF
    port map (
      I => Q_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_UIM_458,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN9
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN10 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN10
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN11
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN12
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN13
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN14
    );
  NlwBufferBlock_EXP37_EXP_PT_3_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_3_IN15
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN0 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN0
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN1 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(2),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN1
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN2 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(0),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN2
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN3 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(1),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN3
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN4 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(2),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN4
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN5 : X_BUF
    port map (
      I => THE_PCI_ARB_toc_x(3),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN5
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN6 : X_BUF
    port map (
      I => Q_OpTx_reqz3_x_reqz3_x_D2_INV_1538_UIM_342,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN6
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN7 : X_BUF
    port map (
      I => P_NREQ_1_IBUF_66,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN7
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN8 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN8
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN9 : X_BUF
    port map (
      I => THE_PCI_ARB_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN9
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN10 : X_BUF
    port map (
      I => Q_OpTx_INV_509_UIM_460,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN10
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN11 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN11
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN12 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN12
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN13 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN13
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN14 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN14
    );
  NlwBufferBlock_EXP37_EXP_PT_4_IN15 : X_BUF
    port map (
      I => Vcc_244,
      O => NlwBufferSignal_EXP37_EXP_PT_4_IN15
    );
  NlwBufferBlock_EXP37_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => EXP37_EXP_PT_0_848,
      O => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP37_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => EXP37_EXP_PT_1_849,
      O => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP37_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => EXP37_EXP_PT_2_850,
      O => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP37_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => EXP37_EXP_PT_3_851,
      O => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN3
    );
  NlwBufferBlock_EXP37_EXP_tsimrenamed_net_IN4 : X_BUF
    port map (
      I => EXP37_EXP_PT_4_852,
      O => NlwBufferSignal_EXP37_EXP_tsimrenamed_net_IN4
    );
  NlwBufferBlock_EXP38_EXP_tsimrenamed_net_IN0 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(0),
      O => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN0
    );
  NlwBufferBlock_EXP38_EXP_tsimrenamed_net_IN1 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(1),
      O => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN1
    );
  NlwBufferBlock_EXP38_EXP_tsimrenamed_net_IN2 : X_BUF
    port map (
      I => THE_PCI_SEQ_CURRENT_STATE(3),
      O => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN2
    );
  NlwBufferBlock_EXP38_EXP_tsimrenamed_net_IN3 : X_BUF
    port map (
      I => Z_NDS_1_IBUF_27,
      O => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_nframe_x_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nframe_x_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nframe_x_D2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_nframe_x_D2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nframe_x_D2_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_nframe_x_D2_IN3
    );
  NlwInverterBlock_p_nreset_x_CLKF_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p_nreset_x_CLKF_IN0,
      O => NlwInverterSignal_p_nreset_x_CLKF_IN0
    );
  NlwInverterBlock_p_nreset_x_CLKF_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_nreset_x_CLKF_IN1,
      O => NlwInverterSignal_p_nreset_x_CLKF_IN1
    );
  NlwInverterBlock_p_nreset_x_CLKF_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p_nreset_x_CLKF_IN2,
      O => NlwInverterSignal_p_nreset_x_CLKF_IN2
    );
  NlwInverterBlock_p_nreset_x_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_nreset_x_CE_IN1,
      O => NlwInverterSignal_p_nreset_x_CE_IN1
    );
  NlwInverterBlock_p_nreset_x_CE_IN3 : X_INV
    port map (
      I => NlwBufferSignal_p_nreset_x_CE_IN3,
      O => NlwInverterSignal_p_nreset_x_CE_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_0_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_EXP_PT_1_IN2
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_0_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_0_CE_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_0_CE_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_1_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_1_CE_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_1_CE_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_2_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_2_CE_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_2_CE_IN1
    );
  NlwInverterBlock_pci_int_ena_x_CLKF_IN0 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_CLKF_IN0,
      O => NlwInverterSignal_pci_int_ena_x_CLKF_IN0
    );
  NlwInverterBlock_pci_int_ena_x_CLKF_IN1 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_CLKF_IN1,
      O => NlwInverterSignal_pci_int_ena_x_CLKF_IN1
    );
  NlwInverterBlock_pci_int_ena_x_CLKF_IN2 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_CLKF_IN2,
      O => NlwInverterSignal_pci_int_ena_x_CLKF_IN2
    );
  NlwInverterBlock_pci_int_ena_x_EXP_tsimrenamed_net_IN2 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2,
      O => NlwInverterSignal_pci_int_ena_x_EXP_tsimrenamed_net_IN2
    );
  NlwInverterBlock_pci_int_ena_x_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_CE_IN1,
      O => NlwInverterSignal_pci_int_ena_x_CE_IN1
    );
  NlwInverterBlock_pci_int_ena_x_CE_IN3 : X_INV
    port map (
      I => NlwBufferSignal_pci_int_ena_x_CE_IN3,
      O => NlwInverterSignal_pci_int_ena_x_CE_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_3_CE_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_3_CE_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_3_CE_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_0_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_D2_PT_1_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_EXP_tsimrenamed_net_IN3
    );
  NlwInverterBlock_cbp_x_0_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_2_IN1,
      O => NlwInverterSignal_cbp_x_0_D2_PT_2_IN1
    );
  NlwInverterBlock_cbp_x_0_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_3_IN1,
      O => NlwInverterSignal_cbp_x_0_D2_PT_3_IN1
    );
  NlwInverterBlock_cbp_x_0_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_3_IN2,
      O => NlwInverterSignal_cbp_x_0_D2_PT_3_IN2
    );
  NlwInverterBlock_cbp_x_0_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_4_IN0,
      O => NlwInverterSignal_cbp_x_0_D2_PT_4_IN0
    );
  NlwInverterBlock_cbp_x_0_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_4_IN2,
      O => NlwInverterSignal_cbp_x_0_D2_PT_4_IN2
    );
  NlwInverterBlock_cbp_x_0_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_5_IN0,
      O => NlwInverterSignal_cbp_x_0_D2_PT_5_IN0
    );
  NlwInverterBlock_cbp_x_0_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_5_IN1,
      O => NlwInverterSignal_cbp_x_0_D2_PT_5_IN1
    );
  NlwInverterBlock_cbp_x_0_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_0_D2_PT_5_IN2,
      O => NlwInverterSignal_cbp_x_0_D2_PT_5_IN2
    );
  NlwInverterBlock_cbp_x_1_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D_IN0,
      O => NlwInverterSignal_cbp_x_1_D_IN0
    );
  NlwInverterBlock_cbp_x_1_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_0_IN2,
      O => NlwInverterSignal_cbp_x_1_D2_PT_0_IN2
    );
  NlwInverterBlock_cbp_x_1_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_0_IN3,
      O => NlwInverterSignal_cbp_x_1_D2_PT_0_IN3
    );
  NlwInverterBlock_cbp_x_1_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_1_IN0,
      O => NlwInverterSignal_cbp_x_1_D2_PT_1_IN0
    );
  NlwInverterBlock_cbp_x_1_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_1_IN1,
      O => NlwInverterSignal_cbp_x_1_D2_PT_1_IN1
    );
  NlwInverterBlock_cbp_x_1_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_1_IN3,
      O => NlwInverterSignal_cbp_x_1_D2_PT_1_IN3
    );
  NlwInverterBlock_cbp_x_1_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_1_D2_PT_1_IN4,
      O => NlwInverterSignal_cbp_x_1_D2_PT_1_IN4
    );
  NlwInverterBlock_cbp_x_2_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_2_IN1,
      O => NlwInverterSignal_cbp_x_2_D2_PT_2_IN1
    );
  NlwInverterBlock_cbp_x_2_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_2_IN2,
      O => NlwInverterSignal_cbp_x_2_D2_PT_2_IN2
    );
  NlwInverterBlock_cbp_x_2_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_3_IN1,
      O => NlwInverterSignal_cbp_x_2_D2_PT_3_IN1
    );
  NlwInverterBlock_cbp_x_2_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_3_IN2,
      O => NlwInverterSignal_cbp_x_2_D2_PT_3_IN2
    );
  NlwInverterBlock_cbp_x_2_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_3_IN3,
      O => NlwInverterSignal_cbp_x_2_D2_PT_3_IN3
    );
  NlwInverterBlock_cbp_x_2_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_4_IN0,
      O => NlwInverterSignal_cbp_x_2_D2_PT_4_IN0
    );
  NlwInverterBlock_cbp_x_2_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_4_IN2,
      O => NlwInverterSignal_cbp_x_2_D2_PT_4_IN2
    );
  NlwInverterBlock_cbp_x_2_D2_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_4_IN3,
      O => NlwInverterSignal_cbp_x_2_D2_PT_4_IN3
    );
  NlwInverterBlock_cbp_x_2_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_5_IN0,
      O => NlwInverterSignal_cbp_x_2_D2_PT_5_IN0
    );
  NlwInverterBlock_cbp_x_2_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_5_IN1,
      O => NlwInverterSignal_cbp_x_2_D2_PT_5_IN1
    );
  NlwInverterBlock_cbp_x_2_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_5_IN2,
      O => NlwInverterSignal_cbp_x_2_D2_PT_5_IN2
    );
  NlwInverterBlock_cbp_x_2_D2_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_D2_PT_5_IN3,
      O => NlwInverterSignal_cbp_x_2_D2_PT_5_IN3
    );
  NlwInverterBlock_cbp_x_3_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_2_IN2,
      O => NlwInverterSignal_cbp_x_3_D2_PT_2_IN2
    );
  NlwInverterBlock_cbp_x_3_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_3_IN1,
      O => NlwInverterSignal_cbp_x_3_D2_PT_3_IN1
    );
  NlwInverterBlock_cbp_x_3_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_4_IN1,
      O => NlwInverterSignal_cbp_x_3_D2_PT_4_IN1
    );
  NlwInverterBlock_cbp_x_3_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_4_IN2,
      O => NlwInverterSignal_cbp_x_3_D2_PT_4_IN2
    );
  NlwInverterBlock_cbp_x_3_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_5_IN0,
      O => NlwInverterSignal_cbp_x_3_D2_PT_5_IN0
    );
  NlwInverterBlock_cbp_x_3_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_3_D2_PT_5_IN2,
      O => NlwInverterSignal_cbp_x_3_D2_PT_5_IN2
    );
  NlwInverterBlock_z_ada_x_1_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_1_D2_PT_4_IN1,
      O => NlwInverterSignal_z_ada_x_1_D2_PT_4_IN1
    );
  NlwInverterBlock_z_ada_x_1_TRST_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_1_TRST_IN0,
      O => NlwInverterSignal_z_ada_x_1_TRST_IN0
    );
  NlwInverterBlock_z_ada_x_2_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D_IN0,
      O => NlwInverterSignal_z_ada_x_2_D_IN0
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_0_IN0,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_0_IN0
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_0_IN1,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_0_IN1
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN1,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN1
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN2,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN2
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN3,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN3
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN4,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN4
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_1_IN5,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_1_IN5
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN1,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_2_IN1
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_2_IN3,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_2_IN3
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN1,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN1
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN2,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN2
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN4,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN4
    );
  NlwInverterBlock_z_ada_x_2_D2_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_D2_PT_3_IN5,
      O => NlwInverterSignal_z_ada_x_2_D2_PT_3_IN5
    );
  NlwInverterBlock_z_ada_x_2_TRST_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_2_TRST_IN0,
      O => NlwInverterSignal_z_ada_x_2_TRST_IN0
    );
  NlwInverterBlock_z_ada_x_3_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D_IN0,
      O => NlwInverterSignal_z_ada_x_3_D_IN0
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_0_IN0,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_0_IN0
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_0_IN1,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_0_IN1
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN1,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN1
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN2,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN2
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_1_IN3,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_1_IN3
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN1,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN1
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN2,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN2
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN3,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN3
    );
  NlwInverterBlock_z_ada_x_3_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_D2_PT_2_IN4,
      O => NlwInverterSignal_z_ada_x_3_D2_PT_2_IN4
    );
  NlwInverterBlock_z_ada_x_3_TRST_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_3_TRST_IN0,
      O => NlwInverterSignal_z_ada_x_3_TRST_IN0
    );
  NlwInverterBlock_p_par_x_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p_par_x_EXP_PT_0_IN0,
      O => NlwInverterSignal_p_par_x_EXP_PT_0_IN0
    );
  NlwInverterBlock_p_par_x_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_par_x_EXP_PT_0_IN1,
      O => NlwInverterSignal_p_par_x_EXP_PT_0_IN1
    );
  NlwInverterBlock_p_par_x_EXP_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_p_par_x_EXP_PT_1_IN4,
      O => NlwInverterSignal_p_par_x_EXP_PT_1_IN4
    );
  NlwInverterBlock_z_ada_x_0_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D_IN0,
      O => NlwInverterSignal_z_ada_x_0_D_IN0
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_0_IN0,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_0_IN0
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_0_IN1,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_0_IN1
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN0,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN0
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN1,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN1
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_1_IN3,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_1_IN3
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN0,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN0
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN1,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN1
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN2,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN2
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN3,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN3
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_2_IN4,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_2_IN4
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN0,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_3_IN0
    );
  NlwInverterBlock_z_ada_x_0_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_D2_PT_3_IN2,
      O => NlwInverterSignal_z_ada_x_0_D2_PT_3_IN2
    );
  NlwInverterBlock_z_ada_x_0_TRST_IN0 : X_INV
    port map (
      I => NlwBufferSignal_z_ada_x_0_TRST_IN0,
      O => NlwInverterSignal_z_ada_x_0_TRST_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_2_IN4
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN2
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_3_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN2
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_4_IN4
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_5_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_1_D2_PT_6_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_3_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_5_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_0_D2_PT_6_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_1_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_D2_PT_2_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_0_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_1_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_1_EXP_PT_2_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_2_IN4
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_3_IN4
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_4_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_5_IN3
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN4
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_2_D2_PT_6_IN5
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_2_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_3_IN2
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_D2_PT_4_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_0_EXP_tsimrenamed_net_IN4
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN5
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_2_IN6
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_3_IN5
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_4_IN5
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN5
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_5_IN7
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN6
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_3_D2_PT_6_IN7
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_CURRENT_STATE_3_D2_IN3
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_2_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_3_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_4_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_5_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2,
      O => NlwInverterSignal_THE_PCI_ARB_CURRENT_STATE_2_D2_PT_6_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_1_D2_IN1
    );
  NlwInverterBlock_P_NGNT_1_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_1_OBUF_D_IN0,
      O => NlwInverterSignal_P_NGNT_1_OBUF_D_IN0
    );
  NlwInverterBlock_P_NGNT_1_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN1,
      O => NlwInverterSignal_P_NGNT_1_OBUF_D2_IN1
    );
  NlwInverterBlock_P_NGNT_1_OBUF_D2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_1_OBUF_D2_IN2,
      O => NlwInverterSignal_P_NGNT_1_OBUF_D2_IN2
    );
  NlwInverterBlock_P_NGNT_2_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_2_OBUF_D_IN0,
      O => NlwInverterSignal_P_NGNT_2_OBUF_D_IN0
    );
  NlwInverterBlock_P_NGNT_2_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN1,
      O => NlwInverterSignal_P_NGNT_2_OBUF_D2_IN1
    );
  NlwInverterBlock_P_NGNT_2_OBUF_D2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_2_OBUF_D2_IN3,
      O => NlwInverterSignal_P_NGNT_2_OBUF_D2_IN3
    );
  NlwInverterBlock_P_NGNT_3_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_3_OBUF_D_IN0,
      O => NlwInverterSignal_P_NGNT_3_OBUF_D_IN0
    );
  NlwInverterBlock_P_NGNT_3_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_3_OBUF_D2_IN1,
      O => NlwInverterSignal_P_NGNT_3_OBUF_D2_IN1
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN3,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN3
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_0_IN4,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_0_IN4
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_1_IN4,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_1_IN4
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN3,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN3
    );
  NlwInverterBlock_I_DATA_OBUF_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_DATA_OBUF_D2_PT_2_IN4,
      O => NlwInverterSignal_I_DATA_OBUF_D2_PT_2_IN4
    );
  NlwInverterBlock_I_DAOUT_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_0_IN2,
      O => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_I_DAOUT_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_I_DAOUT_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_I_DAOUT_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_DAOUT_OBUF_D2_PT_1_IN3,
      O => NlwInverterSignal_I_DAOUT_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN1,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_0_IN2,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN1,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN1
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_2_IN2,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_2_IN2
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN0,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN0
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN1,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN1
    );
  NlwInverterBlock_I_PCIENA_OBUF_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIENA_OBUF_D2_PT_3_IN2,
      O => NlwInverterSignal_I_PCIENA_OBUF_D2_PT_3_IN2
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN0,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN0
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN1,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN1
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN3,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN3
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN4,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN4
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN5,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN5
    );
  NlwInverterBlock_I_CFLT_OBUF_D2_IN8 : X_INV
    port map (
      I => NlwBufferSignal_I_CFLT_OBUF_D2_IN8,
      O => NlwInverterSignal_I_CFLT_OBUF_D2_IN8
    );
  NlwInverterBlock_cycend_x_CLKF_IN3 : X_INV
    port map (
      I => NlwBufferSignal_cycend_x_CLKF_IN3,
      O => NlwInverterSignal_cycend_x_CLKF_IN3
    );
  NlwInverterBlock_ncfg_x_CLKF_IN0 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN0,
      O => NlwInverterSignal_ncfg_x_CLKF_IN0
    );
  NlwInverterBlock_ncfg_x_CLKF_IN1 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN1,
      O => NlwInverterSignal_ncfg_x_CLKF_IN1
    );
  NlwInverterBlock_ncfg_x_CLKF_IN3 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN3,
      O => NlwInverterSignal_ncfg_x_CLKF_IN3
    );
  NlwInverterBlock_ncfg_x_CLKF_IN4 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN4,
      O => NlwInverterSignal_ncfg_x_CLKF_IN4
    );
  NlwInverterBlock_ncfg_x_CLKF_IN5 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN5,
      O => NlwInverterSignal_ncfg_x_CLKF_IN5
    );
  NlwInverterBlock_ncfg_x_CLKF_IN8 : X_INV
    port map (
      I => NlwBufferSignal_ncfg_x_CLKF_IN8,
      O => NlwInverterSignal_ncfg_x_CLKF_IN8
    );
  NlwInverterBlock_cbe_p_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D_IN0,
      O => NlwInverterSignal_cbe_p_D_IN0
    );
  NlwInverterBlock_cbe_p_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_0_IN2,
      O => NlwInverterSignal_cbe_p_D2_PT_0_IN2
    );
  NlwInverterBlock_cbe_p_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_1_IN1,
      O => NlwInverterSignal_cbe_p_D2_PT_1_IN1
    );
  NlwInverterBlock_cbe_p_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_2_IN0,
      O => NlwInverterSignal_cbe_p_D2_PT_2_IN0
    );
  NlwInverterBlock_cbe_p_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_3_IN0,
      O => NlwInverterSignal_cbe_p_D2_PT_3_IN0
    );
  NlwInverterBlock_cbe_p_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_3_IN1,
      O => NlwInverterSignal_cbe_p_D2_PT_3_IN1
    );
  NlwInverterBlock_cbe_p_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbe_p_D2_PT_3_IN2,
      O => NlwInverterSignal_cbe_p_D2_PT_3_IN2
    );
  NlwInverterBlock_p_par_ena_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_0_IN1,
      O => NlwInverterSignal_p_par_ena_D2_PT_0_IN1
    );
  NlwInverterBlock_p_par_ena_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_0_IN2,
      O => NlwInverterSignal_p_par_ena_D2_PT_0_IN2
    );
  NlwInverterBlock_p_par_ena_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_1_IN0,
      O => NlwInverterSignal_p_par_ena_D2_PT_1_IN0
    );
  NlwInverterBlock_p_par_ena_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_1_IN2,
      O => NlwInverterSignal_p_par_ena_D2_PT_1_IN2
    );
  NlwInverterBlock_p_par_ena_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_2_IN1,
      O => NlwInverterSignal_p_par_ena_D2_PT_2_IN1
    );
  NlwInverterBlock_p_par_ena_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_2_IN2,
      O => NlwInverterSignal_p_par_ena_D2_PT_2_IN2
    );
  NlwInverterBlock_p_par_ena_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_3_IN0,
      O => NlwInverterSignal_p_par_ena_D2_PT_3_IN0
    );
  NlwInverterBlock_p_par_ena_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_3_IN1,
      O => NlwInverterSignal_p_par_ena_D2_PT_3_IN1
    );
  NlwInverterBlock_p_par_ena_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_p_par_ena_D2_PT_3_IN2,
      O => NlwInverterSignal_p_par_ena_D2_PT_3_IN2
    );
  NlwInverterBlock_I_NINT2_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_I_NINT2_OBUF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_NINT2_OBUF_D2_PT_0_IN1,
      O => NlwInverterSignal_I_NINT2_OBUF_D2_PT_0_IN1
    );
  NlwInverterBlock_P_NGNT_0_OBUF_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_D_IN0,
      O => NlwInverterSignal_P_NGNT_0_OBUF_D_IN0
    );
  NlwInverterBlock_P_NGNT_0_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN1,
      O => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN1
    );
  NlwInverterBlock_P_NGNT_0_OBUF_D2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN2,
      O => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN2
    );
  NlwInverterBlock_P_NGNT_0_OBUF_D2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_D2_IN3,
      O => NlwInverterSignal_P_NGNT_0_OBUF_D2_IN3
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_0_IN2
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN1
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_1_IN3
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN0
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN1
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_2_IN3
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN0
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN1
    );
  NlwInverterBlock_P_NGNT_0_OBUF_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3,
      O => NlwInverterSignal_P_NGNT_0_OBUF_EXP_PT_3_IN3
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN2,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN2
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN3,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN3
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_0_IN4,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_0_IN4
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN0,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN0
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN3,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN3
    );
  NlwInverterBlock_I_PCIDL_OBUF_D2_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_I_PCIDL_OBUF_D2_PT_1_IN4,
      O => NlwInverterSignal_I_PCIDL_OBUF_D2_PT_1_IN4
    );
  NlwInverterBlock_I_PLA_0_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_I_PLA_0_OBUF_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_1_IN1,
      O => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_1_IN1
    );
  NlwInverterBlock_I_PLA_0_OBUF_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PLA_0_OBUF_D2_PT_2_IN0,
      O => NlwInverterSignal_I_PLA_0_OBUF_D2_PT_2_IN0
    );
  NlwInverterBlock_I_PLA_1_OBUF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_0_IN0,
      O => NlwInverterSignal_I_PLA_1_OBUF_D2_PT_0_IN0
    );
  NlwInverterBlock_I_PLA_1_OBUF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_I_PLA_1_OBUF_D2_PT_1_IN2,
      O => NlwInverterSignal_I_PLA_1_OBUF_D2_PT_1_IN2
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN0
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_D2_IN1,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_D2_IN1
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF0_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN0
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF0_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF0_D2_IN1
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF1_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN0
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF1_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF1_D2_IN1
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF2_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN0
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF2_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF2_D2_IN1
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF3_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN0
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF3_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_D2_IN1
    );
  NlwInverterBlock_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => NlwBufferSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0,
      O => NlwInverterSignal_P_CLKOUT_0_OBUF_BUF3_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_0_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_1_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_2_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_nirdy_x_THE_PCI_SEQ_nirdy_x_TRST_D2_PT_3_IN2
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN0
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_0_IN1
    );
  NlwInverterBlock_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0,
      O => NlwInverterSignal_THE_PCI_ARB_toc_x_2_THE_PCI_ARB_toc_x_2_RSTF_D2_PT_1_IN0
    );
  NlwInverterBlock_cbp_x_2_cbp_x_2_TRST_D_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D_IN0,
      O => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D_IN0
    );
  NlwInverterBlock_cbp_x_2_cbp_x_2_TRST_D2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0,
      O => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN0
    );
  NlwInverterBlock_cbp_x_2_cbp_x_2_TRST_D2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1,
      O => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN1
    );
  NlwInverterBlock_cbp_x_2_cbp_x_2_TRST_D2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2,
      O => NlwInverterSignal_cbp_x_2_cbp_x_2_TRST_D2_IN2
    );
  NlwInverterBlock_OpTx_FX_DC_519_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_FX_DC_519_D2_PT_1_IN1,
      O => NlwInverterSignal_OpTx_FX_DC_519_D2_PT_1_IN1
    );
  NlwInverterBlock_OpTx_FX_DC_1244_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_2_IN1,
      O => NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_2_IN1
    );
  NlwInverterBlock_OpTx_FX_DC_1244_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_FX_DC_1244_D2_PT_3_IN1,
      O => NlwInverterSignal_OpTx_FX_DC_1244_D2_PT_3_IN1
    );
  NlwInverterBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0,
      O => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN0
    );
  NlwInverterBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1,
      O => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_2_IN1
    );
  NlwInverterBlock_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1,
      O => NlwInverterSignal_OpTx_reqz3_x_reqz3_x_D2_INV_1538_D2_PT_3_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_2_IN1,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_2_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN0,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN0
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN1,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_3_IN2,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_3_IN2
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN0,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN0
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN1,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_4_IN2,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_4_IN2
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN0,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN0
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN1,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_5_IN2,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_5_IN2
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN0,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN0
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_6_IN1 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN1,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN1
    );
  NlwInverterBlock_OpTx_INV_509_D2_PT_6_IN2 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_INV_509_D2_PT_6_IN2,
      O => NlwInverterSignal_OpTx_INV_509_D2_PT_6_IN2
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN0
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN5
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_2_IN7
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN0
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_3_IN5
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN0
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN5
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_4_IN6
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN0
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN5
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_5_IN7
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN0
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN5
    );
  NlwInverterBlock_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7 : X_INV
    port map (
      I => NlwBufferSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7,
      O => NlwInverterSignal_OpTx_BUF_THE_PCI_ARB_CURRENT_STATE_3_INT_INV_1537_D2_PT_6_IN7
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_0_IN1
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN0
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN2
    );
  NlwInverterBlock_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3,
      O => NlwInverterSignal_THE_PCI_SEQ_toc_ctr_x_0_THE_PCI_SEQ_toc_ctr_x_0_RSTF_D2_PT_1_IN3
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN0,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN0
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN1,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN1
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_0_IN2,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_0_IN2
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN0,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN0
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN1,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN1
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_1_IN3,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_1_IN3
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN1,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN1
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN3,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN3
    );
  NlwInverterBlock_N0_N0_TRST_D2_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_D2_PT_2_IN4,
      O => NlwInverterSignal_N0_N0_TRST_D2_PT_2_IN4
    );
  NlwInverterBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0,
      O => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN1 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1,
      O => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN1
    );
  NlwInverterBlock_N0_N0_TRST_EXP_tsimrenamed_net_IN3 : X_INV
    port map (
      I => NlwBufferSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3,
      O => NlwInverterSignal_N0_N0_TRST_EXP_tsimrenamed_net_IN3
    );
  NlwInverterBlock_EXP14_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP14_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP14_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP14_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP14_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP14_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP15_EXP_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_0_IN3,
      O => NlwInverterSignal_EXP15_EXP_PT_0_IN3
    );
  NlwInverterBlock_EXP15_EXP_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_0_IN4,
      O => NlwInverterSignal_EXP15_EXP_PT_0_IN4
    );
  NlwInverterBlock_EXP15_EXP_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_0_IN5,
      O => NlwInverterSignal_EXP15_EXP_PT_0_IN5
    );
  NlwInverterBlock_EXP15_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP15_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP15_EXP_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_1_IN4,
      O => NlwInverterSignal_EXP15_EXP_PT_1_IN4
    );
  NlwInverterBlock_EXP15_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP15_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP15_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP15_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP15_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP15_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP15_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP15_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP15_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP15_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP15_EXP_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_3_IN2,
      O => NlwInverterSignal_EXP15_EXP_PT_3_IN2
    );
  NlwInverterBlock_EXP15_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP15_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP15_EXP_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_3_IN4,
      O => NlwInverterSignal_EXP15_EXP_PT_3_IN4
    );
  NlwInverterBlock_EXP15_EXP_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_3_IN5,
      O => NlwInverterSignal_EXP15_EXP_PT_3_IN5
    );
  NlwInverterBlock_EXP15_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP15_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP15_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP15_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP15_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP15_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP15_EXP_PT_4_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP15_EXP_PT_4_IN7,
      O => NlwInverterSignal_EXP15_EXP_PT_4_IN7
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP16_EXP_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_1_IN6,
      O => NlwInverterSignal_EXP16_EXP_PT_1_IN6
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP16_EXP_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_2_IN6,
      O => NlwInverterSignal_EXP16_EXP_PT_2_IN6
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN2,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN2
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN4,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN4
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN5,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN5
    );
  NlwInverterBlock_EXP16_EXP_PT_3_IN8 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_3_IN8,
      O => NlwInverterSignal_EXP16_EXP_PT_3_IN8
    );
  NlwInverterBlock_EXP16_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP16_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP16_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP16_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP16_EXP_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_4_IN6,
      O => NlwInverterSignal_EXP16_EXP_PT_4_IN6
    );
  NlwInverterBlock_EXP16_EXP_PT_4_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_4_IN7,
      O => NlwInverterSignal_EXP16_EXP_PT_4_IN7
    );
  NlwInverterBlock_EXP16_EXP_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_5_IN2,
      O => NlwInverterSignal_EXP16_EXP_PT_5_IN2
    );
  NlwInverterBlock_EXP16_EXP_PT_5_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_5_IN4,
      O => NlwInverterSignal_EXP16_EXP_PT_5_IN4
    );
  NlwInverterBlock_EXP16_EXP_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP16_EXP_PT_5_IN5,
      O => NlwInverterSignal_EXP16_EXP_PT_5_IN5
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN2,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN2
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN3,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN3
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN5,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN5
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN7,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN7
    );
  NlwInverterBlock_EXP17_EXP_PT_0_IN8 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_0_IN8,
      O => NlwInverterSignal_EXP17_EXP_PT_0_IN8
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP17_EXP_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP17_EXP_PT_1_IN6,
      O => NlwInverterSignal_EXP17_EXP_PT_1_IN6
    );
  NlwInverterBlock_EXP18_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP18_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP18_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP18_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP18_EXP_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_0_IN2,
      O => NlwInverterSignal_EXP18_EXP_PT_0_IN2
    );
  NlwInverterBlock_EXP18_EXP_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_0_IN4,
      O => NlwInverterSignal_EXP18_EXP_PT_0_IN4
    );
  NlwInverterBlock_EXP18_EXP_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_0_IN5,
      O => NlwInverterSignal_EXP18_EXP_PT_0_IN5
    );
  NlwInverterBlock_EXP18_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP18_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP18_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP18_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP18_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP18_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP18_EXP_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_1_IN4,
      O => NlwInverterSignal_EXP18_EXP_PT_1_IN4
    );
  NlwInverterBlock_EXP18_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP18_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP18_EXP_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_2_IN7,
      O => NlwInverterSignal_EXP18_EXP_PT_2_IN7
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN2,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN2
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN4,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN4
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN6,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN6
    );
  NlwInverterBlock_EXP18_EXP_PT_3_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_3_IN7,
      O => NlwInverterSignal_EXP18_EXP_PT_3_IN7
    );
  NlwInverterBlock_EXP18_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP18_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP18_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP18_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP18_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP18_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP18_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP18_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP18_EXP_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP18_EXP_PT_4_IN5,
      O => NlwInverterSignal_EXP18_EXP_PT_4_IN5
    );
  NlwInverterBlock_EXP19_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP19_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP19_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP19_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP19_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP19_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP19_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP19_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP19_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP19_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP19_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP19_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP19_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP19_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP19_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP19_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP19_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP19_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP19_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP19_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP19_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP19_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP19_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP19_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP19_EXP_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_5_IN2,
      O => NlwInverterSignal_EXP19_EXP_PT_5_IN2
    );
  NlwInverterBlock_EXP19_EXP_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_5_IN3,
      O => NlwInverterSignal_EXP19_EXP_PT_5_IN3
    );
  NlwInverterBlock_EXP19_EXP_PT_5_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP19_EXP_PT_5_IN4,
      O => NlwInverterSignal_EXP19_EXP_PT_5_IN4
    );
  NlwInverterBlock_EXP20_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP20_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP20_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP20_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP20_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP20_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP20_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP20_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP20_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP20_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP20_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP20_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP20_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP20_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP20_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP20_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP20_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP20_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP20_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP20_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP20_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP21_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP21_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP21_EXP_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_0_IN5,
      O => NlwInverterSignal_EXP21_EXP_PT_0_IN5
    );
  NlwInverterBlock_EXP21_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP21_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP21_EXP_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_1_IN6,
      O => NlwInverterSignal_EXP21_EXP_PT_1_IN6
    );
  NlwInverterBlock_EXP21_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP21_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP21_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP21_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP21_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP21_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP21_EXP_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_3_IN5,
      O => NlwInverterSignal_EXP21_EXP_PT_3_IN5
    );
  NlwInverterBlock_EXP21_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP21_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP21_EXP_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP21_EXP_PT_4_IN6,
      O => NlwInverterSignal_EXP21_EXP_PT_4_IN6
    );
  NlwInverterBlock_EXP22_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP22_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP22_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP22_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP22_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP22_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP22_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP22_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP22_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP22_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP22_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP22_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP22_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP22_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP22_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP22_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP22_EXP_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_3_IN2,
      O => NlwInverterSignal_EXP22_EXP_PT_3_IN2
    );
  NlwInverterBlock_EXP22_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP22_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP22_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP22_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP22_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP22_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP22_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP22_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP22_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP22_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP22_EXP_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_5_IN0,
      O => NlwInverterSignal_EXP22_EXP_PT_5_IN0
    );
  NlwInverterBlock_EXP22_EXP_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_5_IN1,
      O => NlwInverterSignal_EXP22_EXP_PT_5_IN1
    );
  NlwInverterBlock_EXP22_EXP_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_5_IN2,
      O => NlwInverterSignal_EXP22_EXP_PT_5_IN2
    );
  NlwInverterBlock_EXP22_EXP_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP22_EXP_PT_5_IN3,
      O => NlwInverterSignal_EXP22_EXP_PT_5_IN3
    );
  NlwInverterBlock_EXP23_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP23_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP23_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP23_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP23_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP23_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP23_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP23_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP23_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP23_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP23_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP23_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP23_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP23_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP23_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP23_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP23_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP23_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP23_EXP_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_5_IN0,
      O => NlwInverterSignal_EXP23_EXP_PT_5_IN0
    );
  NlwInverterBlock_EXP23_EXP_PT_5_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP23_EXP_PT_5_IN3,
      O => NlwInverterSignal_EXP23_EXP_PT_5_IN3
    );
  NlwInverterBlock_EXP24_EXP_tsimrenamed_net_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN0,
      O => NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN0
    );
  NlwInverterBlock_EXP24_EXP_tsimrenamed_net_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP24_EXP_tsimrenamed_net_IN7,
      O => NlwInverterSignal_EXP24_EXP_tsimrenamed_net_IN7
    );
  NlwInverterBlock_EXP25_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP25_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP25_EXP_PT_0_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_0_IN3,
      O => NlwInverterSignal_EXP25_EXP_PT_0_IN3
    );
  NlwInverterBlock_EXP25_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP25_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP25_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP25_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP25_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP25_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP25_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP25_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP25_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP25_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP25_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP25_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP25_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP25_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP25_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP25_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP25_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP25_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP25_EXP_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_3_IN4,
      O => NlwInverterSignal_EXP25_EXP_PT_3_IN4
    );
  NlwInverterBlock_EXP25_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP25_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP25_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP25_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP25_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP25_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP25_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP25_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP25_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP26_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP26_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP26_EXP_PT_1_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_1_IN3,
      O => NlwInverterSignal_EXP26_EXP_PT_1_IN3
    );
  NlwInverterBlock_EXP26_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP26_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP26_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP26_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP26_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP26_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP26_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP26_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP26_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP26_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP26_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP26_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP26_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP26_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP26_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP26_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP26_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP27_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP27_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP27_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP27_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP27_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP27_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP27_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP27_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP27_EXP_PT_2_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_2_IN3,
      O => NlwInverterSignal_EXP27_EXP_PT_2_IN3
    );
  NlwInverterBlock_EXP27_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP27_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP27_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP27_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP27_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP27_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP27_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP27_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP27_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP27_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP27_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP27_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP27_EXP_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_5_IN0,
      O => NlwInverterSignal_EXP27_EXP_PT_5_IN0
    );
  NlwInverterBlock_EXP27_EXP_PT_5_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP27_EXP_PT_5_IN6,
      O => NlwInverterSignal_EXP27_EXP_PT_5_IN6
    );
  NlwInverterBlock_EXP28_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP28_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP28_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP28_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP28_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP28_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP28_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP28_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP28_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP28_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP28_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP28_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP28_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP28_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP28_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP28_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP28_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP28_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP28_EXP_PT_3_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_3_IN4,
      O => NlwInverterSignal_EXP28_EXP_PT_3_IN4
    );
  NlwInverterBlock_EXP28_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP28_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP28_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP28_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP28_EXP_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP28_EXP_PT_4_IN5,
      O => NlwInverterSignal_EXP28_EXP_PT_4_IN5
    );
  NlwInverterBlock_EXP29_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP29_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP29_EXP_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_0_IN6,
      O => NlwInverterSignal_EXP29_EXP_PT_0_IN6
    );
  NlwInverterBlock_EXP29_EXP_PT_0_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_0_IN7,
      O => NlwInverterSignal_EXP29_EXP_PT_0_IN7
    );
  NlwInverterBlock_EXP29_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP29_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP29_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP29_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP29_EXP_PT_1_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_1_IN7,
      O => NlwInverterSignal_EXP29_EXP_PT_1_IN7
    );
  NlwInverterBlock_EXP29_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP29_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP29_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP29_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP29_EXP_PT_2_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_2_IN7,
      O => NlwInverterSignal_EXP29_EXP_PT_2_IN7
    );
  NlwInverterBlock_EXP29_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP29_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP29_EXP_PT_3_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_3_IN7,
      O => NlwInverterSignal_EXP29_EXP_PT_3_IN7
    );
  NlwInverterBlock_EXP29_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP29_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP29_EXP_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP29_EXP_PT_4_IN6,
      O => NlwInverterSignal_EXP29_EXP_PT_4_IN6
    );
  NlwInverterBlock_EXP30_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP30_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP30_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP30_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP30_EXP_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_1_IN4,
      O => NlwInverterSignal_EXP30_EXP_PT_1_IN4
    );
  NlwInverterBlock_EXP30_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP30_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP30_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP30_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP30_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP30_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP30_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP30_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP30_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP30_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP30_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP30_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP30_EXP_PT_4_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_4_IN3,
      O => NlwInverterSignal_EXP30_EXP_PT_4_IN3
    );
  NlwInverterBlock_EXP30_EXP_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_5_IN1,
      O => NlwInverterSignal_EXP30_EXP_PT_5_IN1
    );
  NlwInverterBlock_EXP30_EXP_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP30_EXP_PT_5_IN5,
      O => NlwInverterSignal_EXP30_EXP_PT_5_IN5
    );
  NlwInverterBlock_EXP31_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP31_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP31_EXP_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_0_IN6,
      O => NlwInverterSignal_EXP31_EXP_PT_0_IN6
    );
  NlwInverterBlock_EXP31_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP31_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP31_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP31_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP31_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP31_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP31_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP31_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP31_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP31_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP31_EXP_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_3_IN5,
      O => NlwInverterSignal_EXP31_EXP_PT_3_IN5
    );
  NlwInverterBlock_EXP31_EXP_PT_3_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_3_IN7,
      O => NlwInverterSignal_EXP31_EXP_PT_3_IN7
    );
  NlwInverterBlock_EXP31_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP31_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP31_EXP_PT_4_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_4_IN5,
      O => NlwInverterSignal_EXP31_EXP_PT_4_IN5
    );
  NlwInverterBlock_EXP31_EXP_PT_4_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP31_EXP_PT_4_IN7,
      O => NlwInverterSignal_EXP31_EXP_PT_4_IN7
    );
  NlwInverterBlock_EXP32_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP32_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP32_EXP_PT_1_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_1_IN4,
      O => NlwInverterSignal_EXP32_EXP_PT_1_IN4
    );
  NlwInverterBlock_EXP32_EXP_PT_1_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_1_IN5,
      O => NlwInverterSignal_EXP32_EXP_PT_1_IN5
    );
  NlwInverterBlock_EXP32_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP32_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP32_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP32_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP32_EXP_PT_2_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_2_IN4,
      O => NlwInverterSignal_EXP32_EXP_PT_2_IN4
    );
  NlwInverterBlock_EXP32_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP32_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP32_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP32_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP32_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP32_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP32_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP32_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP32_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP32_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP32_EXP_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_5_IN0,
      O => NlwInverterSignal_EXP32_EXP_PT_5_IN0
    );
  NlwInverterBlock_EXP32_EXP_PT_5_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_5_IN5,
      O => NlwInverterSignal_EXP32_EXP_PT_5_IN5
    );
  NlwInverterBlock_EXP32_EXP_PT_5_IN7 : X_INV
    port map (
      I => NlwBufferSignal_EXP32_EXP_PT_5_IN7,
      O => NlwInverterSignal_EXP32_EXP_PT_5_IN7
    );
  NlwInverterBlock_EXP33_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP33_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP33_EXP_PT_0_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_0_IN2,
      O => NlwInverterSignal_EXP33_EXP_PT_0_IN2
    );
  NlwInverterBlock_EXP33_EXP_PT_0_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_0_IN4,
      O => NlwInverterSignal_EXP33_EXP_PT_0_IN4
    );
  NlwInverterBlock_EXP33_EXP_PT_0_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_0_IN5,
      O => NlwInverterSignal_EXP33_EXP_PT_0_IN5
    );
  NlwInverterBlock_EXP33_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP33_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP33_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP33_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP33_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP33_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP33_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP33_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP33_EXP_PT_2_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_2_IN5,
      O => NlwInverterSignal_EXP33_EXP_PT_2_IN5
    );
  NlwInverterBlock_EXP33_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP33_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP33_EXP_PT_3_IN3 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_3_IN3,
      O => NlwInverterSignal_EXP33_EXP_PT_3_IN3
    );
  NlwInverterBlock_EXP33_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP33_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP33_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP33_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP33_EXP_PT_4_IN4 : X_INV
    port map (
      I => NlwBufferSignal_EXP33_EXP_PT_4_IN4,
      O => NlwInverterSignal_EXP33_EXP_PT_4_IN4
    );
  NlwInverterBlock_EXP34_EXP_PT_0_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_0_IN0,
      O => NlwInverterSignal_EXP34_EXP_PT_0_IN0
    );
  NlwInverterBlock_EXP34_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP34_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP34_EXP_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_0_IN6,
      O => NlwInverterSignal_EXP34_EXP_PT_0_IN6
    );
  NlwInverterBlock_EXP34_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP34_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP34_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP34_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP34_EXP_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_1_IN6,
      O => NlwInverterSignal_EXP34_EXP_PT_1_IN6
    );
  NlwInverterBlock_EXP34_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP34_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP34_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP34_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP34_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP34_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP34_EXP_PT_3_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_3_IN6,
      O => NlwInverterSignal_EXP34_EXP_PT_3_IN6
    );
  NlwInverterBlock_EXP34_EXP_PT_3_IN8 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_3_IN8,
      O => NlwInverterSignal_EXP34_EXP_PT_3_IN8
    );
  NlwInverterBlock_EXP34_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP34_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP34_EXP_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP34_EXP_PT_4_IN6,
      O => NlwInverterSignal_EXP34_EXP_PT_4_IN6
    );
  NlwInverterBlock_EXP35_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP35_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP35_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP35_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP35_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP35_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP35_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP35_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP35_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP35_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP35_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP35_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP35_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP35_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP35_EXP_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP35_EXP_PT_5_IN1,
      O => NlwInverterSignal_EXP35_EXP_PT_5_IN1
    );
  NlwInverterBlock_EXP36_EXP_PT_1_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_1_IN0,
      O => NlwInverterSignal_EXP36_EXP_PT_1_IN0
    );
  NlwInverterBlock_EXP36_EXP_PT_1_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_1_IN2,
      O => NlwInverterSignal_EXP36_EXP_PT_1_IN2
    );
  NlwInverterBlock_EXP36_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP36_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP36_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP36_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP36_EXP_PT_2_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_2_IN2,
      O => NlwInverterSignal_EXP36_EXP_PT_2_IN2
    );
  NlwInverterBlock_EXP36_EXP_PT_2_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_2_IN6,
      O => NlwInverterSignal_EXP36_EXP_PT_2_IN6
    );
  NlwInverterBlock_EXP36_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP36_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP36_EXP_PT_3_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_3_IN1,
      O => NlwInverterSignal_EXP36_EXP_PT_3_IN1
    );
  NlwInverterBlock_EXP36_EXP_PT_3_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_3_IN2,
      O => NlwInverterSignal_EXP36_EXP_PT_3_IN2
    );
  NlwInverterBlock_EXP36_EXP_PT_3_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_3_IN6,
      O => NlwInverterSignal_EXP36_EXP_PT_3_IN6
    );
  NlwInverterBlock_EXP36_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP36_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP36_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP36_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP36_EXP_PT_4_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_4_IN2,
      O => NlwInverterSignal_EXP36_EXP_PT_4_IN2
    );
  NlwInverterBlock_EXP36_EXP_PT_4_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_4_IN6,
      O => NlwInverterSignal_EXP36_EXP_PT_4_IN6
    );
  NlwInverterBlock_EXP36_EXP_PT_5_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_5_IN0,
      O => NlwInverterSignal_EXP36_EXP_PT_5_IN0
    );
  NlwInverterBlock_EXP36_EXP_PT_5_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_5_IN1,
      O => NlwInverterSignal_EXP36_EXP_PT_5_IN1
    );
  NlwInverterBlock_EXP36_EXP_PT_5_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_5_IN2,
      O => NlwInverterSignal_EXP36_EXP_PT_5_IN2
    );
  NlwInverterBlock_EXP36_EXP_PT_5_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP36_EXP_PT_5_IN6,
      O => NlwInverterSignal_EXP36_EXP_PT_5_IN6
    );
  NlwInverterBlock_EXP37_EXP_PT_0_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_0_IN1,
      O => NlwInverterSignal_EXP37_EXP_PT_0_IN1
    );
  NlwInverterBlock_EXP37_EXP_PT_0_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_0_IN6,
      O => NlwInverterSignal_EXP37_EXP_PT_0_IN6
    );
  NlwInverterBlock_EXP37_EXP_PT_1_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_1_IN1,
      O => NlwInverterSignal_EXP37_EXP_PT_1_IN1
    );
  NlwInverterBlock_EXP37_EXP_PT_1_IN6 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_1_IN6,
      O => NlwInverterSignal_EXP37_EXP_PT_1_IN6
    );
  NlwInverterBlock_EXP37_EXP_PT_2_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_2_IN0,
      O => NlwInverterSignal_EXP37_EXP_PT_2_IN0
    );
  NlwInverterBlock_EXP37_EXP_PT_2_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_2_IN1,
      O => NlwInverterSignal_EXP37_EXP_PT_2_IN1
    );
  NlwInverterBlock_EXP37_EXP_PT_2_IN9 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_2_IN9,
      O => NlwInverterSignal_EXP37_EXP_PT_2_IN9
    );
  NlwInverterBlock_EXP37_EXP_PT_3_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_3_IN0,
      O => NlwInverterSignal_EXP37_EXP_PT_3_IN0
    );
  NlwInverterBlock_EXP37_EXP_PT_3_IN5 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_3_IN5,
      O => NlwInverterSignal_EXP37_EXP_PT_3_IN5
    );
  NlwInverterBlock_EXP37_EXP_PT_3_IN9 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_3_IN9,
      O => NlwInverterSignal_EXP37_EXP_PT_3_IN9
    );
  NlwInverterBlock_EXP37_EXP_PT_4_IN0 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_4_IN0,
      O => NlwInverterSignal_EXP37_EXP_PT_4_IN0
    );
  NlwInverterBlock_EXP37_EXP_PT_4_IN1 : X_INV
    port map (
      I => NlwBufferSignal_EXP37_EXP_PT_4_IN1,
      O => NlwInverterSignal_EXP37_EXP_PT_4_IN1
    );
  NlwInverterBlock_EXP38_EXP_tsimrenamed_net_IN2 : X_INV
    port map (
      I => NlwBufferSignal_EXP38_EXP_tsimrenamed_net_IN2,
      O => NlwInverterSignal_EXP38_EXP_tsimrenamed_net_IN2
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => PRLD);

end Structure;

