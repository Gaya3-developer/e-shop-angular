import { Component, HostListener } from '@angular/core';
import {
  faPhone,
  faEnvelope,
  faMapMarker,
} from '@fortawesome/free-solid-svg-icons';
import {
  faFacebookF,
  faGooglePlusG,
  faTwitter,
  faInstagram,
} from '@fortawesome/free-brands-svg-icons';
import { ThemeService } from 'src/app/theme/theme.service';
import { color2, light, Theme } from 'src/app/theme/theme';
@Component({
  selector: 'app-footer',
  templateUrl: './footer.component.html',
  styleUrls: ['./footer.component.scss'],
})
export class FooterComponent {
  faPhone = faPhone;
  faEmail = faEnvelope;
  faLocation = faMapMarker;
  faFacebook = faFacebookF;
  faGooglePlus = faGooglePlusG;
  faTwitter = faTwitter;
  faInstagram = faInstagram;
  currentYear: number = new Date().getFullYear();
  scrolled: boolean = false;
  //themeToggleText: string = 'light';
  colorSelector = false;
  theme: string = localStorage.getItem('theme') || 'color2';
  constructor(private themeService: ThemeService) {}
  ngOnInit(): void {
    this.changeColor(this.theme);
  }

  @HostListener('window:scroll', [])
  onWindowScroll() {
    this.scrolled = window.scrollY > 400;
  }
  scrollToHeader() {
    window.scroll({
      top: 0,
      left: 0,
      behavior: 'smooth',
    });
  }
/*
  setLightbulb() {
    if (this.themeService.isDarkTheme()) {
      this.themeToggleText = 'dark';
    } else {
      this.themeToggleText = 'light';
    }
  }*/

  /*toggleTheme() {
    if (this.themeService.isDarkTheme()) {
      this.themeService.setLightTheme();
    } else {
      this.themeService.setDarkTheme();
    }

    this.setLightbulb();
  }*/
  changeColor(val) {
    this.themeService.setThemeColor(val);
  }

  toggleColor() {
    this.colorSelector = !this.colorSelector;
  }
}
