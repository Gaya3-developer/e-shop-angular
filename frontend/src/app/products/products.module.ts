import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { ProductsRoutingModule } from './products-routing.module';
import { ViewAllComponent } from './view-all/view-all.component';
import { ViewByCategoryComponent } from './view-by-category/view-by-category.component';
import { DetailViewComponent } from './detail-view/detail-view.component';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { ProductCardComponent } from './product-card/product-card.component';
import { FormsModule } from '@angular/forms';


@NgModule({
  declarations: [
    ViewAllComponent,
    ViewByCategoryComponent,
    DetailViewComponent,
    ProductCardComponent
  ],
  imports: [
    CommonModule,
    ProductsRoutingModule,FontAwesomeModule,FormsModule
  ],
  exports:[
    ViewAllComponent
  ]
})
export class ProductsModule { }
