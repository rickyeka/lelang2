

<div class="men"> 
	<div class="container"> 
	    <div class="register"> 
			   <div class="col-md-6 login-left"> 
			  	 <h3>DETAIL PELELANG</h3> 
				   <table class="table-responsive table  table-bordered table-hover table-striped" id="datatables">
			    <thead>
			    <tr>
			        <th >No</th>
					<th >Nama Pelelang</th>
					<th >Username</th>
					<th >Password</th>
					<th >Alamat</th>
					<th >No Hp</th>
			        <th >Status</th>
					<th >Pilihan</th>
			    </tr>
			    </thead>
			    <tbody>
				<?php 
				$no=1;
				foreach ($data->result() as $row) {
				?>
				<tr>
				<td><?php echo $no++ ; ?></td>
				<td><?php echo $row->nama_pelelang ; ?></td>
				<td><?php echo $row->username ; ?></td>
				<td><?php echo $row->password ; ?></td>
				<td><?php echo $row->alamat ; ?></td>
				<td><?php echo $row->no_hp ; ?></td>
				<td>
					<?php if($row->status == 0){
						?>
						Pending
						<?php
						}else{
							?>
							Terkonfirmasi
							<?php
							} ?>
				</td>
				
							<td>
      						<a  href="<?php echo base_url() ?>index.php/web_admin/konfirmasi_pelelang/<?php echo $row->id_pelelang ; ?>" class="btn btn-success btn-small" 
      						>
      						&nbsp;Konfirmasi</a>
							
							<a href="<?php echo base_url() ?>index.php/web_admin/hapus_pelelang/<?php echo $row->id_pelelang ; ?>" >
								<button type="button" class="btn btn-danger btn-sm">
									</span>Hapus
								</button>
							</a> 
							</td>
						</tr>
						
						<?php } ?>
						</tbody>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	 
<script type="text/javascript">
function confirm_modal(delete_url)
{
	$('#modal_delete').modal('show', {backdrop: 'static'});
	document.getElementById('delete_link').setAttribute('href' , delete_url);
}
</script>