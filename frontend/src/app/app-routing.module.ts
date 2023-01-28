import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { LoginComponent, RegisterComponent } from './auth';
import { AuthGuardService } from './auth/auth-guard.service';
import { CartComponent } from './cart/cart.component';
import { CheckoutComponent } from './checkout/checkout.component';
import { HomeComponent } from './home/home.component';
import { PageNotFoundComponent } from './shared';

const routes: Routes = [{
  path: 'login', component: LoginComponent
},
{
  path: 'register', component: RegisterComponent
},
{
  path: 'cart', component: CartComponent
},
{
  path: 'checkout', component: CheckoutComponent, canActivate: [AuthGuardService],
},
{ path: 'products', loadChildren: () => import('./products/products.module').then(m => m.ProductsModule) },
{
  path: '', component:HomeComponent
},
{
  path: '**', component: PageNotFoundComponent
}];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
