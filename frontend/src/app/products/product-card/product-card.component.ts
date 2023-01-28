import { Component, OnInit, Input, ViewEncapsulation } from '@angular/core';
import { CartService } from 'src/app/cart/cart.service';
import { faAngleDoubleRight, faStar} from '@fortawesome/free-solid-svg-icons';
@Component({
  selector: 'app-product-card',
  templateUrl: './product-card.component.html',
  styleUrls: ['./product-card.component.scss'],
  encapsulation:ViewEncapsulation.None
})
export class ProductCardComponent implements OnInit {

  @Input() title: string;
  @Input() image: string;
  @Input() short_desc: string;
  @Input() category: string;
  @Input() quantity: number;
  @Input() price: string;
  @Input() id: number;
  faStar=faStar;
  constructor(  private cartService: CartService) {}

  ngOnInit(): void {}
  addToCart(data): void {
    this.cartService.addProduct(data);
  }
}
