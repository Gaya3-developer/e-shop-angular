import {
  Component,
  ViewEncapsulation,
  HostListener,
  ViewChild,
  ElementRef,
} from '@angular/core';
import {
  faPhone,
  faEnvelope,
  faMapMarker,
  faUser,
  faUserPlus,
  faSearch,
  faCartPlus,
  faBars,
  faGear,
} from '@fortawesome/free-solid-svg-icons';
import { AuthService } from 'src/app/auth/auth.service';
import { CategoryService } from 'src/app/category/category.service';
import { TokenStorageService } from 'src/app/helpers/token-storage.service';
import { CartService } from '../../cart/cart.service';
import { Category } from '../../category/category';
import { Product } from '../../products/product';
import { ProductsService } from 'src/app/products/products.service';
import {
  debounceTime,
  distinctUntilChanged,
  filter,
  fromEvent,
  map,
  pluck,
  switchMap,
  tap,
} from 'rxjs';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.scss'],
  encapsulation: ViewEncapsulation.Emulated,
})
export class HeaderComponent {
  title: string = 'E - Shop';
  faPhone = faPhone;
  faEmail = faEnvelope;
  faLocation = faMapMarker;
  faUser = faUser;
  faUserPlus = faUserPlus;
  faSearch = faSearch;
  faCartPlus = faCartPlus;
  faBars = faBars;
  faGear = faGear;
  scrolled: boolean = false;
  toggleMenu: boolean = false;
  isLoggedIn = false;
  cartData: any;
  categoryList: Category[];
  searchTerm = '';
  productList: Product[];
  AllProduct: Product[];
  isSearchable: boolean = false;
  @HostListener('window:scroll', [])
  onWindowScroll() {
    this.scrolled = window.scrollY > 300;
  }
  menuOpen() {
    this.toggleMenu = true;
  }
  menuClose() {
    this.toggleMenu = false;
  }

  constructor(
    private _token: TokenStorageService,
    private _auth: AuthService,
    private _cart: CartService,
    private categoryService: CategoryService,
    private productService: ProductsService
  ) {
    this._auth.user.subscribe((user) => {
      if (user) this.isLoggedIn = true;
      else this.isLoggedIn = false;
    });
    this._cart.cartDataObs$.subscribe((cartData) => {
      this.cartData = cartData;
    });
  }
  ngOnInit(): void {
    this.categoryService.getAllCategory().subscribe((data) => {
      this.categoryList = data;
    });
    if (this._token.getUser()) this.isLoggedIn = true;
    else this.isLoggedIn = false;
  }
  removeProductFromCart(id: number) {
    this._cart.removeProduct(id);
  }

  logout() {
    this._auth.logout();
    console.log(this.isLoggedIn);
  }
  GOTO(url){
    console.log(url)
  }
  // search(value: string): void {
  //   this.productService.searchProduct(value).subscribe((res) => {
  //     this.productList = res;
  //     // if(res.length == 0){
  //     //  this.isSearchable=false;
  //     // }
  //   });
    // this.isSearchable=true;
    //   from(this.productService.searchProduct(value)).pipe(
    //     filter((val) =>
    //     val.title.toLowerCase().includes(value)
    //   )
    //   )
    //   .subscribe(data=> {
    //    // this.productList = data;
    //    // this.AllProduct = this.productList;
    //    console.log(data)
    //   });
    //  /* this.productList = this.AllProduct.filter((val) =>
    //     val.title.toLowerCase().includes(value)
    //   );*/

    //  /* this.isSearchable=true;
    //   if(value === "" || this.productList.length == 0){
    //     this.isSearchable=false;
    //   }*/
  //}

  @ViewChild('searchEle') searchEle: ElementRef;
  ngAfterViewInit() {
    const searchInput = fromEvent<any>(this.searchEle.nativeElement, 'keyup');
    
    searchInput
      .pipe(
        map((input) => input.target.value),
        filter((query) => query.length > 2),
        distinctUntilChanged(),
        debounceTime(600),
        switchMap((query) => this.productService.searchProduct(query))
      )
      .subscribe((searchResult) => {
        this.productList = searchResult;
        this.isSearchable = true;
        if (searchResult.length == 0) {
          this.isSearchable = false;
        }
      });

    searchInput.pipe(pluck('target', 'value')).subscribe((res) => {
      if (res.length < 3) {
        this.isSearchable = false;
      }
    });
  }
}
