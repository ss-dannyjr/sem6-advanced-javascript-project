<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart - QuickBuy</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
             background: linear-gradient(to bottom right, #ecf6f7, #daf6f6);

        .top-bar {
            background: #000;
            color: #fff;
            text-align: center;
            padding: 5px;
            font-size: 14px;
        }

        .top-bar a {
            color: #fff;
            text-decoration: underline;
            margin-left: 5px;
        }

        header {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 15px 40px;
            background: white;
        }

        .logo {
            font-weight: bold;
            font-size: 22px;
        }

        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: black;
        }

        .search {
            display: flex;
            align-items: center;
        }

        .search input {
            padding: 5px 10px;
            border: 1px solid #ccc;
        }

        .search .icon {
            margin-left: -30px;
        }

        .icons {
            font-size: 18px;
        }

        .lang {
            font-size: 14px;
        }

        .breadcrumb {
            padding: 20px 40px;
            font-size: 14px;
            color: #888;
        }

        .cart {
            padding: 20px 40px;
        }

        .cart-table {
            background: white;
            padding: 10px;
            border-radius: 5px;
        }

        .table-header {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr 1fr;
            font-weight: bold;
            padding: 10px 0;
        }

        .cart-item {
            display: grid;
            grid-template-columns: 0.2fr 0.6fr 1fr 1fr 1fr;
            align-items: center;
            padding: 10px 0;
            border-top: 1px solid #eee;
        }

        .cart-item img {
            width: 50px;
        }

        .cart-item select {
            padding: 5px;
        }

        .remove {
            color: red;
            cursor: pointer;
        }

        .cart-actions {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn-return,
        .btn-update {
            padding: 10px 20px;
            border: 1px solid #aaa;
            background: #f8f2ef;
            cursor: pointer;
        }

        .coupon-checkout {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }

        .coupon input {
            padding: 10px;
            width: 200px;
            border: 1px solid #aaa;
        }

        .coupon button {
            padding: 10px 20px;
            background: #be2b1a;
            color: white;
            border: none;
            margin-left: 10px;
            cursor: pointer;
        }

        .cart-total {
            background: white;
            padding: 20px;
            border: 1px solid black;
            border-radius: 5px;
        }

        .cart-total h3 {
            margin-bottom: 10px;
        }

        .cart-total p {
            display: flex;
            justify-content: space-between;
            margin: 10px 0;
        }

        .btn-checkout {
            width: 100%;
            padding: 12px;
            background: #be2b1a;
            color: white;
            border: none;
            margin-top: 15px;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="top-bar">
        <p>Summer Sale For All Swim Suits And Free Express Delivery - OFF 50%! <a href="#">ShopNow</a></p>
    </div>

    <header>
        <div class="logo">EarBudshub</div>
        <nav>
            <a href="home.jsp">Home</a>
            <a href="Contact.jsp">Contact</a>
            <a href="About.jsp">About</a>
            <a href="Sinup.jsp">Sign Up</a>
        </nav>
       
    </header>

    <section class="breadcrumb">
        Home / <span>Cart</span>
    </section>

    <section class="cart">
        <div class="cart-table">
            <div class="table-header">
                <span>Product</span>
                <span>Price</span>
                <span>Quantity</span>
                <span>Subtotal</span>
            </div>

            <div class="cart-item">
                <span class="remove">❌</span>
                <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhMSEBMVFhUVGBcTFhgSExUVFRYWFRUXGBcSFRcYHSggGBomGxUXITEiJyktMC4uFx8zODMtNygtLisBCgoKDg0OFw0PFjcZFSUrNy0rNystLTEtKywvNTA3Nys3LS0uOCstKzgxKywwLSsrODgtMisrKzgrLi0tKy0tK//AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcDBAUIAgH/xAA/EAABAwIDBQYCCAMIAwAAAAABAAIDBBEFITEGEkFRYQcTInGBkTKhFCNCYnKCscEzUtFDg5KissLw8VNjc//EABYBAQEBAAAAAAAAAAAAAAAAAAABAv/EABgRAQEBAQEAAAAAAAAAAAAAAAABEQJh/9oADAMBAAIRAxEAPwC8UREBERAREQEREBEUOxjtLw+neYzLvuGR3C3duNQHOcA70ugmKLk4FtHT1bA+CQci11g4Hy4+YuF1kBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERBz9oGF1PI0EjeG7kbGziARfhe9vVeetm8aoYqSoiqoD3sjH77g0Oe/euO7aT/D3dANMr6q/Nqnu7nu2ktLzmRqGN8TiPYD8y847dUQjqBURj6uoBflkBIDaVmX3s/wAyDNQR90X00bi7fhZU0/eNAeN9ocYXjMB3l0Kk/Z32hTMeI3uc5mhjeSbc+7Jza4ctD8xVsFY5krZQfE0h3tlbytku9VRiOqZNF/DntMy3An42+js/zIPVUEzXta9hu1wDgRxBFwVkUe2DnL6Rl/sue0eW9f8A3W9FIUBERAREQEREBERAREQEREBERAREQEREBERAREQEREEZ2oxFgc6P7QikI87suB7j3VGNH0mOoozm9t6mn/EwfWRj8Tc/RWF2sMkjjZVxXIikkjlA/klcLO8ri3qFT0uLmOWOoiPjY4PHC9tQfMXHqg4rgpJs88TQuhd8ULu+j/D/AGjf3WDayia2USw/wahoni6B+bmebXXC5uFVhgmZKPsnPq05OHsg9WbGURhooGvFnFveOB1BkJfunqA4D0XbXF2QxYVNNG+9yAGuPMgCzvUEH1XaQEREBERAREQEREBERAREQEREBERAREQEREBERAREQRzanCXyNe6JoeHtLZI3W8Yta4ByOWRB1VA12w8rZ/DTVO6T/DEch8hexNv+XXqFEFBY/sXPHhgMkW4Y3OkibcFzWkXkYQMhcXcBf7J0Vbx0m8yR4cwbm7cOcA52+beBpzdbjbQZr1zi1EJonxm2YyvoHDMX6X16XXlfabCzTVEsdiAHGwOrfuO6j5ixVnqVY3YbtFZxpnn7o+ZYfe7fUK7l5o7IqKSSvZ3YJ3S1zyNGta8OLnHh8NhzJXpdRRERAREQEXy94AJJAA1JNgPNfEFSx4vG9rhza4OHyQZUREBERAREQEREBERAREQEREBERAREQEREBcLH9j6GtcHVdMyRwy3jdrrDgXNIJHQruog0MHwanpGd3SwsiZqRG0C50u46uPUrfREBERARFoY7ijaWnlnfpG0utzOjWjqSQPVBW/bBjZcHU7D4It1z88nSHxNaRxAFjbmT/KFB+zHaV7a0OcQ1v2iMhu3zBA1C5u2OJPDdyRxdI8uklJP25DvEdAL2twzUYwNr3St3SWtv4nDLLiPM/ug9b4Zj1NUEtp54pHAXLWPaXW57utl0V5+2QbTTVQhe4xzOB+jTMO6+ORud2875ZHIgEEWV37O4g6enZI8ASDejlA0EsTzHIB032Ot0sg6SIiAiIgIiICIiAiIgIiICIiAiIgIiICItbEa5kDDJIbAcsyTwa0cSg2UVE7bdrkm+6OB5YBcFsNi7yfKdD+HRV7UbcVMhuXyk/enkcf1QeuEXnfZ3EaiWMPgrpmO+0zff4TytvadV3GbbYnTfHLHM377B+rQ0/MoLsVa9qOMgyMpwfBCBUTci85QxH/URyssOFdrzHWbPTkHS8Lw4ezrW9yq623xV9nb5+tmcZpOhd8Efk1th6oIXi9U6aUnUk+5JU0x7AfodNCBru3cebrXJUJwSxqoQ7Qyxg/4wVcPam8dzG0ZngBmTysEFS4XiTmVVK9pzZMx3+cC3tdeqdmdaxo0FU+3544nn/M9y87YRhMVKWPqmh0tw4Md8Mf4h9p/TQeeat/ZnGLneidmcyCcndCP3QWKixU0we0OHH5HiFlQEREBERAREQEREBERAREQEREBERAVH9uW17mH6PC6xddtwc2tGT3DkSfCDyaVds791rncgT7C68i9odYZa+Yk33d1g9Ggn/M53ugjrWrYpBmT0WFZIHWKg6mF1To37zHFp6FSiaske29t7yyPtoVDInWcpVhsuQQbOyuGjfkqZm2ay+TsjZticjzJa2/V3JRzHK0zzPcTfMlTba15pqRkej5Rvu5huYY0+5d+YKFYJQiVxDvhAu6xIuTo249/RUaUEzAwANtI074drdwNxnqArX2HkNcfpU58MP1cYP/k3fE48w0HLqeihLsDgGjD/AI3/ANVI9msWFM3ubAMuSLX1Ot7koPvtDw9sdnNNy7QfuuXsZjLongyGzRqf26noujj1QyQhxOWnNc6LCpKmVkVIxziXEANyDQLXe48MzrwAQXxsXizKmJ7496wfu2cACDui/HyUhXF2QwBtDTMgB3nZvkd/M91rkdMgB0AXaQEREBERAREQEREBERAREQEREBERBq4ofqZf/m//AElePNqnXrKk/wDsd+q9jVrN6ORvNrh7grx1tW21ZUfjJ98/3Qc1q/QUYF9GNQfbXqQ4RU8FF72W9h9TYoJRieHvnse9IHJw3reWYW9Q0TYWbjfMk6k8ytKjq7hbonQfb1gej5lgfMEB7QfCSQDyNrdVbPZHWhgMBDQTcEgAEvYAQTbW7OPNhVOzTKdbCYjaSN/Rjz/dvDXe4c5UXqiIgIiICIiAiIgIiICIiAiIgIiim2u28VANxo72ci4jBsG30dIfsjpqfmglTnAC5yA5rXgr4nndZLG48mvaT7AryZtftxWV73d/M7cubRsu2IfkGvmbnqo3FIWkOaS0jMFpIIPMEaIPcC8k9qWHmDEp2njZw8gNz/YT6rp7Ndr2JUlmvkFRGLDdqLudbpIPFfzJ8lr9ou1MGKFlTHG6KYeF8bvECCMyx4GYBaNQD4ighsTlnEgWml1MGxKAfNYWkgr5ul1R16CusuzFV3USj87Lp0zX8PF5a+yg7j51qyzrT+kcDcHkcisb5UGd86luxs2UY5tl9rvP+1QVzichmdABmSTwCm+CQmGeOF3xRwkuHJxaS4e7lR6WhddrTzAPuF9rHTCzGjk0D5LIgIiICIiAiIgIiICIiAiLnbRYwyjppqqUEsiYXkN1PANHUkgeqDS2xx76HBvNsZX+GMHnxeegHzIHFUpV0xkc57nFznHec5xuSTqSV0qfEKvE2S181ixh3AxnwwsJOTeeYF3HM3GgFhiAQQfG9mR4pGuDOLt7Jnnfgoi4KZ7ZRTSTNjsRGGhzf5XH7RPUaW4eq+KfBYgxv0gtbe+5vEgkgXsCNP0QQ5ZYySpHTbMd4d+xazzJB6MuAbdT/wBbkuDACzRYBBFDfiL+f9dVhcy3T5qSPwk8lwcQhLJCD5oNdfi+2LLuDiPZBgBW3TVJasD4uRv55H+nzWNBI4MUDhaRocPvAFb9HSUkjhvNc3nuvI/W6h4es8NSRoUFzbO0GGUo72OPelAu10ri8tPNoOQPW11H9nD9JxSW2YcWR/43MH7O9lDoMVeG5kqzOwLBnSzSVTx4WEkE8XEENHpd59GoL4REQEREBERAREQEREBERAXN2iaDA4OALSWBwIBBBe0EEHULpLUxanMkMjBqWnd/EM2/MBBUW1tM/CHRTYT9VHOXNmicO8p3uABb9W74bgu+EjTks+EYRJW0zaiOIRSne34CSGOANu9p3O1Yf5Tobi+l+xVmOtpjE82OTgTqx7dD+oPQlRuqwcgRgvkiliJMckLy0tLrX3eDmndFwRnZBinpSCWSMsRq17c/UFYzRty8IyzFxex5i+i3X7STNAZikInYMhU0zd2QDnLHw82m3RbEUUcjd+mkbKzpk8fiabfsoOYae6wy0YOoA6rrMaDkNRqNCPMJJShwIOhBB6giyCtMVxgOJbFkwZX4v6+XRc2pweWWPvQLkaDi4WuQ0cSLXt5qVSbGvbI0jxsGQsQHW+8OJ8ltVGBzyOMZZGI2ODo3OaAW5WN87u9hrqmivcLoN9y7s+BWGQU9o8BZEwtGZObnOGbjzPTotbE8G7xhZvPaPuEA+9jkgqqujDTYkX5LRAuclOpti4mXc50hH3nNA9wFNdgNkIGOErmBzhm0HMN6m+p/RUQOm7O6l1KaqUdywNuA8eN/UM+yOpt0B1UODbEg8Ml6f23ma2kk3iAN3UqqOzXYCPFpZnzOfHDEW3MYG9IXlx3Ln4bAA3sdUEU2W2dqMRnbT0zb6F7j8EbeL3ngOnHQL1ZsvgEVBTR00I8LBmTq91s3nqbewAX3s/s/TUMQhpImxs1Ns3OP8z3HNx6ldNAREQEREBERAREQEREBERAREQVXt7QPopzUxg9xMbm2jJDqDyDtR1uOS51NjQkbY5+at6tpGTRuilaHseN1zXaEKo8a2Rkw2bv2MM9IDc5nfY03Ba+3AA5P0yztxz3bJsHy8g/CfQ/1Wg1vcv7xjQDyt4T1IH6ixUUrtpXRStBaSx32m3uDxy4+S69HjbZBdrg4dDf5cE5uzRJH4hSzgB7nU8g0L7yRE9JG+NmeeYdbmtWu+lU7DLZk8A1kje17QOZez4fzBcWfddpktSKlYSRIW7vEEXB9LKjswbYUx/ib0Z8t9voW3PyW+zH6V2lRF6vDT7FRXGZqbuTFHCx333MA3erON+uXqoRNT7h8DiOjswqLflx6lbrUR+jw4+zVwsT25ibcQMdIebgWMHv4j7DzVfMqCPiafNuY+S/RWRoJJTVctTIHSuvnk0ZNb5D/AIVa2DVUdNB3kzg1rRcklUvQY1uH6uMuPDLJb8ramrINQ8tjGjeA8hxKDo7VbSy4nJuR3ZTtzz4j+d37BXZ2ZYEKShjbu7rpPrXA/EA4eEO67tieRJCrvs42XFVMDu2poCC+/wDayDNsfXgT0sOKvBAREQEREBERAREQEREBERAREQEREBCERBAdrezGCp3n01oJDmW7t4Xn7zPs+bfYqltpNj6iif8AWsfCb2EjSXRP8nj9Dn0XqdY6iBr2lkjWua4WLXAOaRyIORQeX2VvW/8AzVfZqbq2NpeyKnmu+iead+u4bvhJ6DVnobDkqr2h2Sr6G/fwuLB/aRXki8y4Dw/mAUwc+plXIqFldPdYJHKjEAtiEnn75/qsIKyMeg69I5SPZnBZa+YQQ5NFjLJa7Y28+rjnYcfIEjW2J2NqsRcCwGOC/imeDu24iMf2jvLIcTwXoHZ7AoaKEQ07bNGbic3Pdxe88T/0LBBnwfDIqWFkEDd1jBYcyeLnHi4nMlbiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICFEQRjHNgMOqyXS0zQ8/bivE+/Mllt71uoZiHYZA6/cVczOQlYyUDp4dw/NW0iCloewc38dfl92msfQmUgexUrwDsjw6mIdI19Q8Z3qHAsH920Bp9QVPkQfLGBoAaAAMgALADkAvpEQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQf//Z" alt="Product Image">
                <span>$120</span>
                <select>
                    <option selected>01</option>
                </select>
                <span>$140</span>
            </div>

           
            </div>
        </div>

        <div class="cart-actions">
            <button class="btn-return">Return To Shop</button>
            <button class="btn-update">Update Cart</button>
        </div>

        <div class="coupon-checkout">
            <div class="coupon">
                <input type="text" placeholder="Coupon Code">
                <button>Apply Coupon</button>
            </div>
            <div class="cart-total">
                <h3>Cart Total</h3>
                <p>Subtotal: <span>$420</span></p>
                <p>Shipping: <span>Free</span></p>
                <p>Total: <span>$420</span></p>
               <a href="checkout.jsp" class="btn btn-danger w-100">Proceed to Checkout</a>
            </div>
        </div>
    </section>
</body>
</html>
