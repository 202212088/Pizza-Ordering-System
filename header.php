<!-- NAVBAR -->
<?php
session_start();
?>

<header>
      <nav class="flex flex-wrap items-center justify-between w-full py-4 text-lg text-gray-700 bg-white">
        <div>
           <a href="#">
             <img src="images/PizzaWala.png" class="-mt-6 ml-20 w-48 pt-3 hover:scale-110">
           </a>
         </div>
        
          <img src="images/three.png" id="menu-button" class="w-10 md:hidden lg:hidden">
        
        <div class="w-full md:flex md:items-center md:w-auto" id="menu">
           <ul class="pt-4 text-gray-700 font-bold md:flex md:justify-between md:pt-0">
             <li>
               <a class="md:p-4 py-2 pl-24 block hover:scale-105 " href="#">About Us</a>
             </li>
             <li>
               <a class="md:p-4 py-2 pl-24 block hover:scale-105 " href="#">Contact Us</a>
             </li>
             <?php
        if (isset($_SESSION['isLoggedIn'])) {
          echo "<li class='cursor-pointer mt-14 font-bold text-xl hover:scale-110'><a href='logout.php'>Log Out</a></li>";
        } else {
          echo "<li class='cursor-pointer mt-14 font-bold text-xl hover:scale-110'><a href='login.php'>Log In</a></li>";
        }
        ?>
           </ul>
         </div>
     </nav>
   </header>

<!-- <nav class="flex justify-between bg-#F6E7D0">
    

      <a href="index.php"> <img src="./images/PizzaWala.png" class="-mt-6 ml-20 w-48 pt-3 hover:scale-110"></a>
      <ul class="px-28 py-4 flex space-x-11 justify-end">
      <li class="cursor-pointer mt-14 font-bold text-xl hover:scale-110"><a href="menu.php">Menu</a></li>
        <li class="cursor-pointer mt-14 font-bold text-xl hover:scale-110"><a href="index.php#about">About Us</a></li>
        <li class="cursor-pointer mt-14 font-bold text-xl hover:scale-110"><a href="index.php#contact">Contact Us</a></li>
        <li class="cursor-pointer mt-14 font-bold text-xl hover:scale-110"><a href="cart.php">Cart</a></li>
        

      </ul>
</nav> -->