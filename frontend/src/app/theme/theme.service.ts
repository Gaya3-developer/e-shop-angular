import { Injectable } from "@angular/core";
import { Theme, light, dark, color1, color2, color3 } from "./theme";

@Injectable({
  providedIn: "root"
})
export class ThemeService {
  //private active: Theme = light;
  private availableThemes: Theme[] = [light, dark ,color1 ,color2, color3];
  private color: Theme = color2;
 /* getAvailableThemes(): Theme[] {
    return this.availableThemes;
  }

  getActiveTheme(): Theme {
    return this.active;
  }

  isDarkTheme(): boolean {
    return this.active.name === dark.name;
  }

  setDarkTheme(): void {
    this.setActiveTheme(dark);
  }

  setLightTheme(): void {
    this.setActiveTheme(light);
  }*/

/*
  setActiveTheme(theme: Theme): void {
    this.active = theme;

    Object.keys(this.active.properties).forEach(property => {
      document.documentElement.style.setProperty(
        property,
        this.active.properties[property]
      );
    });
  }
*/
  setThemeColor(value): void {
 if(value === 'color1'){
  this.setActiveColorTheme(color1);
 }
 if(value === 'color2'){
  this.setActiveColorTheme(color2);
 }
 if(value === 'color3'){
 
  this.setActiveColorTheme(color3);
 }
 localStorage.setItem('theme', value);
  }


  setActiveColorTheme(theme: Theme): void {
  
    this.color = theme;
    console.log(this.color.properties)
    Object.keys(this.color.properties).forEach(property => {
      document.documentElement.style.setProperty(
        property,
        this.color.properties[property]
      );
    });
  }
}
