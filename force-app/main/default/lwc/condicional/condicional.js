import { LightningElement, api } from 'lwc';

export default class Condicional extends LightningElement {
    visivel = false

    @api recordId

    connectedCallback(){
        console.log(this.recordId)
    }

    onChange(event) {
        this.visivel = event.target.checked;
    }
}