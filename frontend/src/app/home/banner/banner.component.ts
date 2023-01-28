import { Component } from '@angular/core';

@Component({
  selector: 'app-banner',
  templateUrl: './banner.component.html',
  styleUrls: ['./banner.component.scss']
})
export class BannerComponent {
  slides = [
    {
      img1: '../../assets/images/slider/1.1.png',
      img2: '../../assets/images/slider/1.2.png',
      title: 'mi',
      category: 'Mobile',
      feature: 'fast and light',
      description: 'Pixel Perfect Deal Camera',
    },
    {
      img1: '../../assets/images/slider/2.1.png',
      img2: '../../assets/images/slider/2.2.png',
      title: 'big',
      category: 'Sale',
      feature: 'now start at $99',
      description: '50% off',
    },
    {
      img1: '../../assets/images/slider/3.1.png',
      img2: '../../assets/images/slider/3.2.png',
      title: 'camera',
      category: 'Sale',
      feature: 'now start at $79',
      description: '70% off today',
    },
  ];
  slideConfig = { autoplay: true, autoplaySpeed: 2500 };

}
