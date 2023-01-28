import { Component } from '@angular/core';
import { faAngleDoubleRight, faClose} from '@fortawesome/free-solid-svg-icons';
import { CartService } from './cart.service';

@Component({
  selector: 'app-cart',
  templateUrl: './cart.component.html',
  styleUrls: ['./cart.component.scss']
})
export class CartComponent {
  faAngleDoubleRight=faAngleDoubleRight;
  faClose=faClose;
  cartData: any;
  constructor(private _cart: CartService) {
    this._cart.cartDataObs$.subscribe((cartData) => {
      this.cartData = cartData;
      console.log(cartData);
    });
  }
  updateCart(id: number, quantity: number): void {
    console.log({ id, quantity });
    this._cart.updateCart(id, quantity);
  }

  removeCartItem(id: number): void {
    this._cart.removeProduct(id);
  }
}
