import { Component } from '@angular/core';

@Component({
  selector: 'app-category',
  templateUrl: './category.component.html',
  styleUrls: ['./category.component.scss']
})
export class CategoryComponent {
  slides = [
    {
      img: '../../assets/images/rounded-cat/1.png',
      title: 'flower',
    },
    {
      img: '../../assets/images/rounded-cat/2.png',
      title: 'furniture',
    },
    {
      img: '../../assets/images/rounded-cat/3.png',
      title: 'bag',
    },
    {
      img: '../../assets/images/rounded-cat/4.png',
      title: 'tools',
    },
    {
      img: '../../assets/images/rounded-cat/5.png',
      title: 'grocery',
    },
    {
      img: '../../assets/images/rounded-cat/6.png',
      title: 'camera',
    },
    {
      img: '../../assets/images/rounded-cat/7.png',
      title: 'shoes',
    },
   
   
  ];
  slideConfig = {  dots: false,
    infinite: true,
    speed: 300,
    slidesToShow: 6,
    slidesToScroll: 6,
    responsive: [
      {
        breakpoint: 1367,
        settings: {
          slidesToShow: 5,
          slidesToScroll: 5,
          infinite: true,
        },
      },
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 4,
          slidesToScroll: 4,
          infinite: true,
        },
      },
      {
        breakpoint: 767,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
        },
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        },
      },
    ] };
}
