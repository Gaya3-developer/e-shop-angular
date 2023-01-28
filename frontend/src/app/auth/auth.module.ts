import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { RouterModule } from '@angular/router';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MustMatchDirective } from '../helpers/must-match.directive';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';

import {
  GoogleLoginProvider,
  SocialLoginModule,
  FacebookLoginProvider,
  AmazonLoginProvider,
  VKLoginProvider,
  MicrosoftLoginProvider,
  SocialAuthServiceConfig,
} from '@abacritt/angularx-social-login';

@NgModule({
  declarations: [
    LoginComponent,
    RegisterComponent,
    MustMatchDirective,
  ],
  imports: [
    CommonModule,
    RouterModule,FormsModule,ReactiveFormsModule,FontAwesomeModule,SocialLoginModule
  ],

  exports:[
    LoginComponent,
    RegisterComponent
  ]
})
export class AuthModule { }
