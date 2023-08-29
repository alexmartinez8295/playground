import { LightningElement, track, wire } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import { updateRecord } from 'lightning/uiRecordApi';
import { refreshApex } from '@salesforce/apex';
import getFormato from '@salesforce/apex/actualizaFormatoLWC.getFormato';
import FOLIO_FIELD from '@salesforce/schema/Formato__c.Name';
import NAME_FIELD from '@salesforce/schema/Formato__c.Nombre_Formato__c';
import CLAVE_FIELD from '@salesforce/schema/Formato__c.Clave__c';
import ID_FIELD from '@salesforce/schema/Formato__c.Id';

export default class UpdateRecordLWC extends LightningElement {
    disabled = false;
    @track error;
    @track showLoading = false;

    @wire(getFormato)
    formato;

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
        console.log('Entrando al handleupdate');
        const allValid = [...this.template.querySelectorAll('lightning-input')]
            .reduce((validSoFar, inputFields) => {
                inputFields.reportValidity();
                return validSoFar && inputFields.checkValidity();
            }, true);
            
        if (allValid) {
            console.log('allValid es true');
            this.showLoading = true;
            // Create the recordInput object
            const fields = {};
            fields[ID_FIELD.fieldApiName] = this.formato.data.Id;
            fields[FOLIO_FIELD.fieldApiName] = this.template.querySelector("[data-field='Folio']").value;
            fields[NAME_FIELD.fieldApiName] = this.template.querySelector("[data-field='Nombre']").value;
            fields[CLAVE_FIELD.fieldApiName] = this.template.querySelector("[data-field='Clave']").value;

            const recordInput = { fields };
            console.log(recordInput);

            updateRecord(recordInput)
                .then(() => {
                    console.log('updateRecord corrió correctamente');
                    this.showToast('Exito!!', 'formato actualizado de forma exitosa!!', 'success', 'dismissable');
                    // Display fresh data in the form
                    this.showLoading = false;
                    return refreshApex(this.formato);
                })
                .catch(error => {
                    console.log('updateRecord tuvo un error');
                    this.showLoading = false;
                    this.showToast('Error!!', 'Error al actualizar', 'error', 'dismissable');
                });
        }
        else {
            console.log('allValid es false');
            // The form is not valid
            this.showToast('Error!!', 'Revisa los valores e intenta de nuevo.', 'error', 'dismissable');
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