import { LightningElement, api } from 'lwc';

export default class ContactListItem extends LightningElement {
    @api contact

    handleClick(event){
        event.preventDefault()
        console.log('contact', this.contact)
        const contactObj = this.decode(this.contact)
        console.log('contactObj', contactObj)
        const selectEvent = new CustomEvent('selected', { detail: contactObj.Id })

        this.dispatchEvent(selectEvent)
    }

    decode(payload){
        return JSON.parse(JSON.stringify(payload))
    }
}