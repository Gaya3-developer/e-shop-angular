import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss'],
 
})
export class AppComponent {
  title = 'eshop';
  public isDisplayed: boolean = true;

  hideAnimatedDiv() {
      setTimeout(() => {
          this.isDisplayed = false;
      }, 600);
  }
  constructor(private router: Router){
    }

    checkUrl(){
     if(this.router.url.includes('/products')){
      return true;
     
     }
     else{
      return false;
    } 
    }
    ngOnInit() {
      this.hideAnimatedDiv()
   }


   
}
