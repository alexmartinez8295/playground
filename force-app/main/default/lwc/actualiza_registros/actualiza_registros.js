import { LightningElement, track, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { updateRecord } from 'lightning/uiRecordApi';
import { refreshApex } from '@salesforce/apex';
import getSingleAccount from '@salesforce/apex/AccountDataController.getSingleAccount';
import NAME_FIELD from '@salesforce/schema/Account.Name';
import RATING_FIELD from '@salesforce/schema/Account.Rating';
import ID_FIELD from '@salesforce/schema/Account.Id';

export default class UpdateRecordLWC extends LightningElement {
    disabled = false;
    @track error;
    @track showLoading = false;

    @wire(getSingleAccount)
    account;

    handleChange(event) {
        // Display field-level errors and disable button if a name field is empty.
        if (!event.target.value) {
            event.target.reportValidity();
            this.disabled = true;
        }
        else {
            this.disabled = false;
        }
    }

    handleUpdate() {
        
        const allValid = [...this.template.querySelectorAll('lightning-input')]
            .reduce((validSoFar, inputFields) => {
                inputFields.reportValidity();
                return validSoFar && inputFields.checkValidity();
            }, true);

        if (allValid) {
            this.showLoading = true;
            // Create the recordInput object
            const fields = {};
            fields[ID_FIELD.fieldApiName] = this.account.data.Id;
            fields[NAME_FIELD.fieldApiName] = this.template.querySelector("[data-field='Name']").value;
            fields[RATING_FIELD.fieldApiName] = this.template.querySelector("[data-field='Rating']").value;

            const recordInput = { fields };
            console.log(recordInput);

            updateRecord(recordInput)
                .then(() => {
                    this.showToast('Success!!', 'Account updated successfully!!', 'success', 'dismissable');
                    // Display fresh data in the form
                    this.showLoading = false;
                    return refreshApex(this.account);
                })
                .catch(error => {
                    this.showLoading = false;
                    this.showToast('Error!!', error.body.message, 'error', 'dismissable');
                });
        }
        else {
            // The form is not valid
            this.showToast('Error!!', 'Check your input and try again.', 'error', 'dismissable');
        }
        
    }

    showToast(title, message, variant, mode) {
        const evt = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant,
            mode: mode
        });
        this.dispatchEvent(evt);
    }
}