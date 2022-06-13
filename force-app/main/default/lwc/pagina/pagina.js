import { LightningElement } from 'lwc';

export default class Pagina extends LightningElement {
    handleProximo(){
        this.dispatchEvent(new CustomEvent('proximo'))
    }
    
    handleAnterior(){
        this.dispatchEvent(new CustomEvent('anterior'))
    }
}