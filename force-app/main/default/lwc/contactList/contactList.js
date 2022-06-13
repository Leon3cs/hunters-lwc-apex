import { LightningElement, wire, track } from 'lwc';
import getContacts from '@salesforce/apex/ContactListController.getContacts'

export default class ContactList extends LightningElement {
    selectedContact

    contacts

    id = '4314'
    

    @track obj = { 
        data: 1,
        error: 2
    }

    @wire(getContacts, {id: 'id'})
    wiredContacts({ data, error}){
        console.log('data',data)
        console.log('error',error)
        if(data){
            this.contacts = data
        }
    }

    /*
        {
            data: [{Id, Name, Title, Phone, Email}],
            error: undefined
        } 
        {
            data: undefined,
            error: {
                body:
                message: 124
            }
        } 

    */

    handleSelect(event){
        const id = event.detail
        console.log('id', id)
        this.obj.data = 2
        this.obj = {data:2, error:2}
        const selected = this.contacts.find(item => item.Id === id)
        console.log('selected', selected)
        this.selectedContact = selected;
    }

    get isNotEmpty(){
        return this.contacts && Array.isArray(this.contacts) && (this.contacts?.length > 0)
    }

    get hasContact(){
        return this.selectedContact && this.selectedContact?.Id
    }

    clearContact(){
        this.selectedContact = null
    }
}