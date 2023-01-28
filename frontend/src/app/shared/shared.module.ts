import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { RouterModule } from '@angular/router';
import { PageNotFoundComponent } from './page-not-found/page-not-found.component';
import { FontAwesomeModule} from '@fortawesome/angular-fontawesome';
import { FormsModule } from '@angular/forms';
import { SearchFilterPipe } from '../helpers/search-filter.pipe';


@NgModule({
  imports: [
    CommonModule,RouterModule,FontAwesomeModule,FormsModule
  ],
  declarations: [ HeaderComponent,FooterComponent, PageNotFoundComponent,SearchFilterPipe],
  exports: [
    HeaderComponent,FooterComponent
  ]
})

export class SharedModule { 
 
}
