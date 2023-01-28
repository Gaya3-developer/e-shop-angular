import { Component, ViewChild } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CategoryService } from 'src/app/category/category.service';
import { Product } from '../product';
import { Category } from '../../category/category';
import { map } from 'rxjs/operators';
import { faAngleDoubleRight, faStar} from '@fortawesome/free-solid-svg-icons';
@Component({
  selector: 'app-view-by-category',
  templateUrl: './view-by-category.component.html',
  styleUrls: ['./view-by-category.component.scss']
})
export class ViewByCategoryComponent {
  searchCategory: Category;
  productList:Product[];
  id: number;
  faAngleDoubleRight=faAngleDoubleRight;
  faStar=faStar;
  categoryList: Category[];
constructor(private activatedRoute:ActivatedRoute, private categoryService: CategoryService){}
ngOnInit(): void {
 /* this.activatedRoute.params.subscribe(data =>
  {
   /* this.searchCategory = data['id'];
this.categoryService.searchCategoryProducts( this.searchCategory).subscribe(categoryData => {
  this.productList = categoryData;
});


  })*/
  this.activatedRoute.paramMap
  .pipe(
    map((param: any) => {
      return param.params.id;
    })
  )
  .subscribe((categoryId) => {
    // returns string so convert it to number
    this.id = parseInt(categoryId);
    this.categoryService.getProductByCategory(categoryId).subscribe((product) => {
     this.productList = product;
   console.log(this.productList)
    });
  });

  this.categoryService.getAllCategory().subscribe(data => {
    this.categoryList = data.filter(val => val.id == this.id.toString())
    console.log( this.categoryList)
  });
  
}
}
