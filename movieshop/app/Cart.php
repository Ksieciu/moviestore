<?php

namespace App;

class Cart
{
    
   public $items;
   public $totalQty = 0;
   public $totalPrice = 0;

    // upon object creation we check if there is already a cart in session - if true, then write it's info to variables
   public function __construct($oldCart){
       if($oldCart){
           $this->items = $oldCart->items;
           $this->totalQty = $oldCart->totalQty;
           $this->totalPrice = $oldCart->totalPrice;
       }
   }

   // adding item to cart
   public function add($item, $id){
       $storedItem = ['qty' => 0, 'price' => $item->price, 'item' => $item];
       // if there is already data in items(which implies that there was oldCart) then check if there is a movie with given id
       // if there is, then overwrite storedItem with existing movie info
       if($this->items){
           if(array_key_exists($id, $this->items)){
               $storedItem = $this->items[$id];
           }
       }
       // increase number of item in cart by one, then count total price of given number of item
       $storedItem['qty']++;
       $storedItem['price'] = $item->price * $storedItem['qty'];
       // saving storeditem data to variables to pass it later to Session data
       $this->items[$id] = $storedItem;
       $this->totalQty++;
       $this->totalPrice += $item->price;
   }

    function removeItem($id){
        $this->totalQty -= $this->items[$id]['qty'];
        $this->totalPrice -= $this->items[$id]['price'];
        unset($this->items[$id]);
    }

}
