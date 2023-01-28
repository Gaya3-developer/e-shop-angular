import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Product } from './product';
import { BehaviorSubject, Observable, Subject } from 'rxjs';
import { environment } from '../../environments/environment';
import { ApiService } from '../helpers/api.service';
import { map } from 'rxjs/operators';

@Injectable({
  providedIn: 'root',
})
export class ProductsService {
  private url = environment.apiUrl;
  sharingData = { name: ' ' };

  constructor(private httpClient: HttpClient, private _api: ApiService) {}

  // Observable string source
  private dataStringSource = new BehaviorSubject<any>('');

  // Observable string stream
  dataString$ = this.dataStringSource.asObservable();

  public saveData(value) {
    console.log('save data function called ' + value + this.sharingData.name);
    this.sharingData.name = value;
    this.dataStringSource.next(this.sharingData.name);
  }

  getAllProducts(): Observable<Product[]> {
    const productUrl = this.url + 'products';

    return this.httpClient.get<Product[]>(productUrl); // return an observable
  }

  getSingleProduct(id: Number): Observable<any> {
    console.log(id);
    return this._api.getTypeRequest('products/' + id);
  }

  /*
  viewProduct(productId): Observable<Product>{
    const productUrl = 'http://localhost:3000/products/'+ productId;
    return this.httpClient.get<Product>(productUrl); // return an observable
  }*/

  searchProduct(value): Observable<Product[]> {
    const productUrl = this.url + 'products';

    return this.httpClient.get<Product[]>(productUrl).pipe(
      map((res) => {
        return res.filter((val) => val.title.toLowerCase().includes(value));
      })
    ); // return an observable
  }
}
