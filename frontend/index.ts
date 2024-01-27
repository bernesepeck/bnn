import { City } from "./city/city";

function render() : void {
    const city = new City();
    document.body.appendChild(city);
    const banner = document.createElement('div');
    banner.className="banner"
    city.appendChild(banner);
}
render();