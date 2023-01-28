import { Component } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { Router } from "@angular/router";
import { SocialUser,GoogleLoginProvider, SocialAuthService, FacebookLoginProvider,} from '@abacritt/angularx-social-login';
import { faFacebookF, faGooglePlusG} from "@fortawesome/free-brands-svg-icons"
import { AuthService } from '../auth.service';
@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.scss']
})
export class LoginComponent {
  public loginForm: FormGroup;
  public submitted = false;
  faFacebookF =faFacebookF;
  faGooglePlusG=faGooglePlusG;
  user: SocialUser | undefined;
  GoogleLoginProvider = GoogleLoginProvider;
  error = '';
  constructor(private formBuilder: FormBuilder, private router: Router,
    private loginService: AuthService,
    private authSocialService:SocialAuthService,) {}

  ngOnInit(): void {
    this.loginForm = this.formBuilder.group({
      email: ["", [Validators.email, Validators.required]],
      password: [
        "",
        [
          Validators.required,
          Validators.minLength(6)
        ]
      ]
    });
    this.authSocialService.authState.subscribe((user) => {
     // console.log(user)
      this.user = user;
      this.loginService.googleSignIn(user.idToken,user.email).subscribe((res) => {
 // console.log(res)
 this.router.navigate(['/']).then(() => {
  window.location.reload();
 });
      },
      (err) =>{
        console.log(err)
      }
      )
    });


  }

  get formControl() {
    return this.loginForm.controls;
  }


  signInWithFB(): void {
    this.authSocialService.signIn(FacebookLoginProvider.PROVIDER_ID);
  }
  signOut(): void {
    this.authSocialService.signOut();
  }
  refreshGoogleToken(): void {
    this.authSocialService.refreshAuthToken(GoogleLoginProvider.PROVIDER_ID);
  }

  onLogin(): void {
    // console.log(this.loginForm.value);
    this.error = '';
    this.submitted = true;
    if (this.loginForm.valid) {
      this.loginService
      .login({ email: this.loginForm.value.email, password: this.loginForm.value.password })
      .subscribe(
        (res) => {
          
           this.router.navigate(['/']).then(() => {
            window.location.reload();
           });
        
        },
        (err) => {
          console.log(err);
          this.error = err.error.message;
         
        }
      );
     /* console.log(this.loginForm.value);
      localStorage.setItem("user-Data", JSON.stringify(this.loginForm.value));
      this.router.navigate(["/"]);*/
    }

  
  }
}