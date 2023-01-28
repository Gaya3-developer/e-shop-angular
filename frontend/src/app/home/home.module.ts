import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { SlickCarouselModule } from 'ngx-slick-carousel';
import { BannerComponent } from './banner/banner.component';
import { HomeComponent } from './home.component';
import { CollectionComponent } from './collection/collection.component';
import { DiscountComponent } from './discount/discount.component';
import { AdvertisementComponent } from './advertisement/advertisement.component';
import { CategoryComponent } from './category/category.component';


@NgModule({
  declarations: [
    HomeComponent,
    BannerComponent,
    CollectionComponent,
    DiscountComponent,
    AdvertisementComponent,
    CategoryComponent
  ],
  imports: [
    CommonModule,SlickCarouselModule
  ]
})
export class HomeModule { }
