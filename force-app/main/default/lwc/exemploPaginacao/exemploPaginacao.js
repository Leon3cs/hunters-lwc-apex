import { LightningElement } from 'lwc';

export default class ExemploPaginacao extends LightningElement {
    page = 1;

    handleAnterior(){
        if(this.page > 1){
            this.page = this.page - 1
        }
    }
    
    handleProximo(){
        this.page = this.page + 1
    }
}