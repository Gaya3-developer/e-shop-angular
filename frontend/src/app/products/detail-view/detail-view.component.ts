import { Component, ElementRef, ViewChild } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { Product } from '../product';
import { ProductsService } from '../products.service';
import { faAngleDoubleRight, faStar, faTags, faCartShopping} from '@fortawesome/free-solid-svg-icons';
import { faFacebookF, faGooglePlusG, faTwitter,faInstagram} from "@fortawesome/free-brands-svg-icons"
import { map } from 'rxjs/operators';
import { CartService } from 'src/app/cart/cart.service';
@Component({
  selector: 'app-detail-view',
  templateUrl: './detail-view.component.html',
  styleUrls: ['./detail-view.component.scss']
})
export class DetailViewComponent {
  id: number;
  productDetails: Product;
  faAngleDoubleRight=faAngleDoubleRight;
  faStar=faStar;
  faTags=faTags;
  faFacebook=faFacebookF;
  faGooglePlus=faGooglePlusG;
  faTwitter=faTwitter;
  faInstagram=faInstagram;
  faCartShopping=faCartShopping;
  quantity: number;
qty:number = 1;
  constructor(private activatedRoute : ActivatedRoute, private productsService: ProductsService,
    private _cart: CartService){}
  ngOnInit(): void {
  /*this.activatedRoute.params.subscribe(data =>{
    console.log(data)
    this.productId = data['id'];
this.productsService.viewProduct(this.productId).subscribe(productData=>{
  this.productDetails = productData;
})
  })*/
  this.activatedRoute.paramMap
  .pipe(
    map((param: any) => {
      return param.params.id;
    })
  )
  .subscribe((productId) => {
    // returns string so convert it to number
    this.id = parseInt(productId);
    this.productsService.getSingleProduct(productId).subscribe((product) => {
      console.log(product);
      this.productDetails = product;
      if (product.quantity === 0) this.quantity = 0;
      else this.quantity = 1;
    });
  });
  }

  addQty(value){
   this.qty = parseInt(value)+1;
    }
      removeQty(value){
        if(value>1){
          this.qty = parseInt(value)-1;
        }
       
    }

    addToCart(): void {
      console.log(this.qty)
      this._cart.addProduct({
        id: this.id,
        price: this.productDetails.price,
        quantity: this.qty,
        image: this.productDetails.image,
        title: this.productDetails.title,
        maxQuantity: this.productDetails.quantity,
      });
    }
    
}
