import { LightningElement } from 'lwc';
import fetchContacts from '@salesforce/apex/fetchRelatedRecords.fetchContacts';
import getAccounts from '@salesforce/apex/fetchRelatedRecords.getAccounts';

export default class AsyncLWC extends LightningElement {
    async handleApexCall() {
        console.log('Before first method call');
        let data = await this.handleFirstCall();
        console.log(data);
        console.log('After first method call and Before second method call');
        let data2 = await this.handleSecondCall();
        console.log(data2);
        console.log('After second method call');
    }


    handleFirstCall() {
        return fetchContacts()
            .then((result) => {
                return result;
            })
            .catch((error) => {
                console.log(error);
            });
    }

    handleSecondCall() {
        return getAccounts()
            .then((result) => {
                return result;
            })
            .catch((error) => {
                console.log(error);
            });
    }
}