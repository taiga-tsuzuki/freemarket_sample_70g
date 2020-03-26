$(function() {

  $('#item_price').on('keyup', function() {
    var input = $("#item_price").val();
    fee = Math.floor(input * 0.1);
    profit = input - fee
    if(30 <=fee && fee <= 9999999){
      $('.sales-commission-calc').text('¥' + fee);
      $('.sales-profit-calc').text('¥' + profit);
    }else{
      $('.sales-commission-calc').text('-');
      $('.sales-profit-calc').text('-');
    }
  })
});