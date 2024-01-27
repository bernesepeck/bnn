import { City } from "./city/city";

function render() : void {
    const city = new City();
    document.body.appendChild(city);
}
render();