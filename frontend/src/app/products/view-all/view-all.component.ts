import { Component, ViewEncapsulation } from '@angular/core';
import { ProductsService } from '../products.service';
import { Product } from '../product';
import { faAngleDoubleRight} from '@fortawesome/free-solid-svg-icons';
import { CartService } from 'src/app/cart/cart.service';

@Component({
  selector: 'app-view-all',
  templateUrl: './view-all.component.html',
  styleUrls: ['./view-all.component.scss'],
  
})
export class ViewAllComponent {
  productList: Product[];

  faAngleDoubleRight=faAngleDoubleRight;
  item: any[];
  myName:any;
  constructor(private productsService: ProductsService,
    private cartService: CartService) { 
      this.productsService.dataString$.subscribe(
        data => {
          if(this.myName !== data){
            this.myName = data;
           console.log("data from pdt",this.myName)
          }
        });
   
}
    

  ngOnInit(): void {
   
    this.productsService.getAllProducts().subscribe(data=> {
      this.productList = data;
      
    });
  }

}
