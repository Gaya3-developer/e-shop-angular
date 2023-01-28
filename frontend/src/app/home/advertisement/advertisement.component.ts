import { Component } from '@angular/core';

@Component({
  selector: 'app-advertisement',
  templateUrl: './advertisement.component.html',
  styleUrls: ['./advertisement.component.scss']
})
export class AdvertisementComponent {
  collections=[{
    category:"Leather",
    title:"new bag",
    img:"../../assets/images/collection-banner/4.jpg"
  },
  {
    category:"nike",
    title:"breeze",
    img:"../../assets/images/collection-banner/5.jpg"
  },
  {
    category:"Printing 3D",
    title:"USB moon",
    img:"../../assets/images/collection-banner/6.jpg"
  }]
}
