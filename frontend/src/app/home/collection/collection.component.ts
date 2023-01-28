import { Component, ViewEncapsulation } from '@angular/core';

@Component({
  selector: 'app-collection',
  templateUrl: './collection.component.html',
  styleUrls: ['./collection.component.scss'],
})
export class CollectionComponent {
  collections=[{
    category:"women",
    title:"fashion",
    img:"../../assets/images/collection-banner/1.jpg"
  },
  {
    category:"camera",
    title:"lenses",
    img:"../../assets/images/collection-banner/2.jpg"
  },
  {
    category:"refrigerator",
    title:"lG mini",
    img:"../../assets/images/collection-banner/3.jpg"
  }]
}
