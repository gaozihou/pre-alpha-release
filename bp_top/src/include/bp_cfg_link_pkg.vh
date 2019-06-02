
package bp_cfg_link_pkg;

  `include "bp_cfg_link_defines.vh"

  // The overall memory map of the config link is:
  //   16'h0000 - 16'h001f: chip level config
  //   16'h0020 - 16'h003f: fe config
  //   16'h0040 - 16'h005f: be config
  //   16'h0060 - 16'h007f: me config
  //   16'h0080 - 16'h00ff: reserved
  //   16'h8000 - 16'h8fff: cce ucode
  // Specific cfg registers
  //   16'h0000      = clk_osc
  //   16'h0001      = reset
  //   16'h0002      = freeze
  //   16'h0040      = start_pc low  32 bits
  //   16'h0041      = start_pc high 32 bits
  //   16'h0060      = cce_mode
  //   16'h8000-8fff = cce ucode

  localparam bp_cfg_link_core_width_gp = 8;
  localparam bp_cfg_link_addr_width_gp = 16;
  localparam bp_cfg_link_data_width_gp = 32;

  localparam bp_cfg_base_addr_gp          = 32'h0100_0000;
  localparam bp_cfg_reg_clk_osc_gp        = 16'h0000;
  localparam bp_cfg_reg_reset_gp          = 16'h0001;
  localparam bp_cfg_reg_freeze_gp         = 16'h0002;
  localparam bp_cfg_reg_start_pc_lo_gp    = 16'h0040;
  localparam bp_cfg_reg_start_pc_hi_gp    = 16'h0041;
  localparam bp_cfg_reg_cce_mode_gp       = 16'h0060;
  localparam bp_cfg_mem_base_cce_ucode_gp = 16'h8000;

endpackage

