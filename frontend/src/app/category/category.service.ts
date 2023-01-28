import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Category} from './category';
import { Product} from '../products/product';
import { Observable } from 'rxjs';
import { ApiService } from '../helpers/api.service';
import { environment } from '../../environments/environment';
@Injectable({
  providedIn: 'root'
})
export class CategoryService {
  private url = environment.apiUrl;
    constructor(private httpClient: HttpClient,
      private _api: ApiService) { }

 getAllCategory(): Observable<Category[]>{
    const categoryUrl = this.url + 'categories';

    return this.httpClient.get<Category[]>(categoryUrl); // return an observable
  }

  getProductByCategory(id: Number): Observable<any> {
    return this._api.getTypeRequest('products/categories/' + id);
  }
/*
  searchCategoryProducts(categoryId): Observable<Product[]>{
    const productUrl = 'http://localhost:3000/products?categoryId='+categoryId;
    return this.httpClient.get<Product[]>(productUrl); // return an observable
  }*/

  /*getAllCategories(limitOfResults = 9, page): Observable<Category> {
    return this.httpClient.get<Category>(this.url + 'categories', {
      params: {
        limit: limitOfResults.toString(),
        page: page,
      },
    });
  }*/

}