import { LightningElement, api, wire } from 'lwc';
import getAccountDetails from '@salesforce/apex/WireExemploController.getAccountDetails';
import getProducts from '@salesforce/apex/WireExemploController.getProducts';

export default class WireExemplo extends LightningElement {
    @api recordId;
    
    stageName
    productList


    @wire(getProducts, {recordId: '$recordId'})
    wiredProducts({ data, error}){
        if(data){
            this.stageName = data.stageName
            this.productList = data.OpportunityLineItems
        }
    }
}