import { Component } from '@angular/core';
import { faAngleDoubleRight, faCheckCircle} from '@fortawesome/free-solid-svg-icons';
import { AuthService } from '../auth/auth.service';
import { CartService } from '../cart/cart.service';
import { NgForm,NgModel } from '@angular/forms';
import { Router } from '@angular/router';
import { map } from 'rxjs/operators';
@Component({
  selector: 'app-checkout',
  templateUrl: './checkout.component.html',
  styleUrls: ['./checkout.component.scss']
})
export class CheckoutComponent {
  currentUser: any;
  cartData: any;
  isSubmitted = false;
  orderData:any;
  faAngleDoubleRight=faAngleDoubleRight;
userName:string;
emailId:string;
phoneNumberPattern = "^((\\+91-?)|0)?[0-9]{10}$"; 
faCheckCircle=faCheckCircle;
countries = [
  {
    id: 'in',
    name: 'India'
  },
  {
    id: 'us',
    name: 'United States'
  },
  {
    id: 'uk',
    name: 'United Kingdom'
  },
  {
    id: 'ca',
    name: 'Canada'
  }
];
country = 'in';
countryName:string = "India";
payment = "cod"
orderDate = new Date();
delivaryDate = new Date();
delivaryExpectedDate = this.delivaryDate.setDate( this.orderDate.getDate() + 7 );
orderId;
products: any;
total:number;
  constructor(private _route: Router,private _auth: AuthService, private _cart: CartService) {
   
  }
  ngOnInit():void{
    this._auth.user.subscribe((data) => {
      console.log(data)
      if (data) {
        
        this.currentUser = data;
        this.userName = data.fname;
        this.emailId= data.email;
      }
    });

    this._cart.cartDataObs$.subscribe((cartData) => {
      this.cartData = cartData;
    /* if(cartData.products.length == 0 &&  !this.isSubmitted){
      this._route.navigate(['/cart']);
     }*/
    });
  }
  onChangeCountry($event) {
    this.countryName = $event.target.options[$event.target.options.selectedIndex].text;
  }
  addOrder(checkoutForm: NgForm){
    if (checkoutForm.invalid) {
      return;
  }
  this.orderData = checkoutForm.value;
  //console.log(checkoutForm)
 
    this._cart
      .submitCheckout(this.currentUser.id, this.cartData)
      .subscribe(
        (res: any) => {
          console.log(res);
          this.orderId = res.orderId;
          this.products = res.products;
          this.total =this.products.reduce((total, curVal) => {
            return total + curVal.price;
        }, 0);
          this._cart.clearCart();

        },
        (err) => {
          console.log(err);
        }
      );
  
  this.isSubmitted=true;
  console.log(this.orderData)
}
}
