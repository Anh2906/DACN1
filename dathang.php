 
<form id="form1" name="form1" method="post" action="">

  <table width="500" border="1" cellspacing="0" cellpadding="4">
    <caption>
      THONG TIN MUA HANG
    </caption>
    <tr>
      <th scope="col">TenNguoiNhan</th>
      <th align="left" scope="col"><input name="TenNguoiNhan" type="text" id="TenNguoiNhan" value="<? echo $_SESSION['kt_HoTen']; ?>" /></th>
    </tr>

    <tr>
      <td>ThoiDiemGiaoHang</td>
      <td align="left"><input type="text" name="ThoiDiemGiaoHang" id="ThoiDiemGiaoHang" /></td>
    </tr>
    <tr>
      <td>DiaDiemGiaoHang</td>
      <td align="left"><input type="text" name="DiaDiemGiaoHang" id="DiaDiemGiaoHang" /></td>
    </tr>
    <tr>
      <td>GhiChu</td>
      <td align="left"><input type="text" name="GhiChu" id="GhiChu" /></td>
    </tr>
    <tr>
      <td>TinhTrang</td>
      <td align="left"><label>
        <input type="text" name="TinhTrang" id="TinhTrang" />
      </label></td>
    </tr>
  </table>
  <p>
    <label>
    <input type="submit" name="btnMua" id="btnMua" value="MuaHang" />
    </label>
</p>
  <p>
    <input name="idUser" type="hidden" id="idUser" value=" />
    <input name="ThoiDiemDatHang" type="hidden" id="ThoiDiemDatHang" />
  </p>
</form>

