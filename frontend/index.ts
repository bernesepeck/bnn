function render() : void {
    console.log('iamhered')
    const city = document.createElement("city") as City;
    document.body.appendChild(city);
}
render();