1 `ifndef FIFO_BFM_96b_WR_INCR_ALLIGNED_TEST_awlen_2_INCLUDED_
  2 `define FIFO_BFM_96b_WR_INCR_ALLIGNED_TEST_awlen_2_INCLUDED_
  3
  4 class fifo_bfm_96b_wr_incr_alligned_test_awlen_2 extends fifo_base_test;
  5   `uvm_component_utils(fifo_bfm_96b_wr_incr_alligned_test_awlen_2)
  6
  7    fifo_bfm_96b_wr_incr_alligned_seq_awlen_2 fifo_bfm_96b_wr_incr_alligned_seq_awlen_2_h;
  8   function new(string name="fifo_bfm_96b_wr_incr_alligned_test_awlen_2",uvm_component parent=null);
  9     super.new(name,parent);
 10   endfunction
 11
 12   function void build_phase(uvm_phase phase);
 13     super.build_phase(phase);
 14   endfunction
 15
 16   task run_phase(uvm_phase phase);
 17      super.run_phase(phase);
 18      fifo_bfm_96b_wr_incr_alligned_seq_awlen_2_h = fifo_bfm_96b_wr_incr_alligned_seq_awlen_2::type_id::create("fifo_bfm_96b_wr_incr_alligned_seq_awlen_2_h");
 19     `uvm_info(get_type_name(),$sformatf("fifo_bfm_96b_wr_incr_alligned_test_awlen_2"),UVM_LOW);
 20
 21     phase.raise_objection(this);
 22     fifo_bfm_96b_wr_incr_alligned_seq_awlen_2_h.start(env_h.write_fifo_agent_h.fifo_bfm_96b_wr_incr_alligned_seq_awlen_2_h);
 23     phase.drop_objection(this);
 24
 25   endtask
 26 endclass
 27 `endif
