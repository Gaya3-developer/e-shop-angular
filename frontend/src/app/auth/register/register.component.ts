import { Component } from '@angular/core';
import { NgForm,NgModel } from '@angular/forms';
import { faFacebookF, faGooglePlusG} from "@fortawesome/free-brands-svg-icons"
import { AuthService } from '../auth.service';
import { User} from '../user';
import { SocialUser,GoogleLoginProvider, SocialAuthService, FacebookLoginProvider,} from '@abacritt/angularx-social-login';
import { Router } from '@angular/router';
@Component({
  selector: 'app-register',
  templateUrl: './register.component.html',
  styleUrls: ['./register.component.scss']
})
export class RegisterComponent {
  faFacebookF =faFacebookF;
  faGooglePlusG=faGooglePlusG;
  userList: User[];
  existingEmailsList: any = [];
  emailsList: any = [];
  user: SocialUser | undefined;
  GoogleLoginProvider = GoogleLoginProvider;
userId:string;
errorMessage = '';

  constructor(private registerService: AuthService,
    private authSocialService:SocialAuthService,
    private router:Router
  ) { }



ngOnInit(): void {
  this.authSocialService.authState.subscribe((user) => {
    this.user = user;
    this.registerService.googleSignIn(user.idToken,user.email).subscribe((res) => {
console.log(res)
this.router.navigate(["/"]);
    },
    (err) =>{
      console.log(err)
    }
    )
  });
  this.registerService.getAllUser().subscribe(  data => {
    console.log(data.length)
    this.userId= data[data.length - 1].id;

    for (let item in data) {
      this.emailsList.push(data[item].email);
    }
  },
  err => {
    console.log(err);
  }
  );
}
emailExists(control:NgModel)
{
 this.existingEmailsList = this.emailsList.filter(function(email) {
    return email === control.control.value
  });
  if (this.existingEmailsList.length>0)
    control.control.setErrors({emailExists:"Max length exceded"})
  else
  control.control.setErrors(null)
}

addUser(regForm: NgForm){
  this.errorMessage = '';
  if (regForm.invalid) {
    return;
}
 /* let newProduct = {
      id:  this.userId + 1,
      name: regForm.value.name,
      email: regForm.value.email,
      password: regForm.value.password,
      agreement: regForm.value.agreement
  }
  this.registerService.createUser(newProduct).subscribe(data => {
    console.log(data);
    this.router.navigate(['/login']);
  });*/

  this.registerService
  .register({
    id:  this.userId + 1,
      name: regForm.value.name,
      email: regForm.value.email,
      password: regForm.value.password,
      agreement: regForm.value.agreement
  })
  .subscribe(
    (res) => {
      console.log(res);
      this.router.navigate(['/login']);
    },
    (err) => {
      this.errorMessage = err.error.message;
    }
  );
}
/*
onGoogleSignIn(){
  console.log("hello1")
  this.authSocialService.signIn(GoogleLoginProvider.PROVIDER_ID).then(
    (res) => {
      console.log(res)
    }
  )
}*/
signInWithFB(): void {
  this.authSocialService.signIn(FacebookLoginProvider.PROVIDER_ID);
}
signOut(): void {
  this.authSocialService.signOut();
}
refreshGoogleToken(): void {
  this.authSocialService.refreshAuthToken(GoogleLoginProvider.PROVIDER_ID);
}

}
