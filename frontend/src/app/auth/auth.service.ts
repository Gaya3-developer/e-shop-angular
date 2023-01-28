import { Injectable } from '@angular/core';
import { map } from 'rxjs/operators';
import { BehaviorSubject, Observable } from 'rxjs';
import { ApiService } from '../helpers/api.service';
import { TokenStorageService } from '../helpers/token-storage.service';
import { HttpClient } from '@angular/common/http';
import { User } from './user';


@Injectable({
  providedIn: 'root'
})
export class AuthService {
API_KEY:string = "AIzaSyAmZD-F8eYNuMWClz9kYqLysNN5i8mTrkk"

/*
  createUser(userBody): Observable<User>{
    const usertUrl = 'http://localhost:3000/users';

    return this.httpClient.post<User>(usertUrl, userBody); // return an observable
  }
  getAllUser(): Observable<User[]>{
    const productUrl = 'http://localhost:3000/users';

    return this.httpClient.get<User[]>(productUrl); // return an observable
  }

  */

  private userSubject: BehaviorSubject<any>;
  public user: Observable<any>;

  constructor(private _api: ApiService, private _token: TokenStorageService,private _http: HttpClient) {
    this.userSubject = new BehaviorSubject<any>(this._token.getUser());
    this.user = this.userSubject.asObservable();
  }

  getUser() {
    console.log("hit",this.userSubject);
    console.log(this.userSubject.value);
    return this.userSubject.value;
  }
  getAllUser(): Observable<User[]>{
    const productUrl = 'http://localhost:3000/users';

    return this._http.get<User[]>(productUrl); // return an observable
  }
  
  login(credentials: any): Observable<any> {
    return this._api
      .postTypeRequest('auth/login', {
        email: credentials.email,
        password: credentials.password,
      })
      .pipe(
        map((res: any) => {
          console.log("loogeddata",res);
          let user = {
            email: credentials.email,
            token: res.token,
          };
          this._token.setToken(res.token);
          this._token.setUser(res.data[0]);
         // console.log(res);
          this.userSubject.next(user);
          return user;
        })
      );
  }
 
  register(user: any): Observable<any> {
    return this._api.postTypeRequest('auth/register', {
      username: user.username,
      fullName: user.name,
      email: user.email,
      password: user.password,
    });
  }

  googleSignIn(idtoken,email){
    return this._http.post(`https://identitytoolkit.googleapis.com/v1/accounts:signInWithIdp?key=${this.API_KEY}`,{
    postBody:`id_token=${idtoken}&providerId=google.com`,
    requestUri:'https://eshop-2abdf.web.app',
    returnIdpCredential:true,
    returnSecureToken:true
  }).pipe(
    map((res: any) => {
      console.log("loogeddata",res);
      let user = {
        email: email,
        token: idtoken,
      };
      let result={
        age: 18,
email:res.email,
fname: res.fullName,
id: 26
      }
      this._token.setToken(res.idToken);
      this._token.setUser(result);
     // console.log(res);
      this.userSubject.next(user);
      return user;
    })
  );
  
  }
  logout() {
    this._token.clearStorage();
    this.userSubject.next(null);
  }
}
