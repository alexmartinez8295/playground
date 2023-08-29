/* eslint-disable no-script-url */
/* eslint-disable no-undef */
/* eslint-disable vars-on-top */
/* eslint-disable no-console */
/* eslint-disable no-unused-vars */
import { LightningElement, api, track, wire } from "lwc";
import fetchCases from "@salesforce/apex/ContactController.fetchAllCases";
import checkIsCloseableStatus from "@salesforce/apex/ContactController.checkIsCloseableCases";
import closelSelected from "@salesforce/apex/ContactController.closeSelCases";

const allCasescolumns = [
    {
        label: 'Case Number', fieldName: 'nameUrl', type: 'url',
        typeAttributes: {
            label: { fieldName: 'CaseNumber' },
            target: '_top'
        }
    },
    { label: 'Status', fieldName: 'Status' },
    { label: 'Origin', fieldName: 'Origin' },
    { label: 'Subject', fieldName: 'Subject' },
    { label: 'Type', fieldName: 'Type' },
    { label: 'ContactMobile', fieldName: 'ContactMobile', type: 'text' }

];

export default class UpdateListOfCases extends LightningElement {
    @api recordId;
    @track listAllCases;
    @track listAllCloseableCasesData;
    @track listcancelSeltedCases = [];
    @track columns = allCasescolumns;
    @track showDefTable;
    @track showIsCloseableBtn;
    @track showConfirmClosebtn;
    @track totalNoOfCases;
    @track showErrMsg;
    @track notifType;
    @track notifMsg;
    @track isLoading;

    @wire(fetchCases, { accntId: '$recordId'})
    wiredFetchCasesList({ error, data }) {
        if (data) {
            this.showIsCloseableBtn = true;
            this.listAllCases = data.map(record => Object.assign(
                { "nameUrl": '/console#%2F' + record.Id },
                record));

            this.totalNoOfCases = this.listAllCases.length;
            this.showDefTable = true;
        }
        else if (error) {
            this.error = error;
            this.listAllCases = undefined;
            this.showIsCloseableBtn = false;
        }
    }

    checkIsCloseableCasesJs(event) {
        this.isLoading = true;
        this.showDefTable = false;
        this.showIsCloseableBtn = true;
        this.showErrMsg = false;
        console.log('this.listAllCases....' + this.listAllCases);
        checkIsCloseableStatus({ listAllCases: this.listAllCases })
            .then(result => {
                this.listAllCloseableCasesData = result;
                this.showIsCloseableBtn = false;
                this.showConfirmClosebtn = false;
                this.isLoading = false;

            })
            .catch(error => {

                var errorMsg;
                if (Array.isArray(error.body)) {
                    this.errorMsg = error.body.map(e => e.message).join(', ');
                } else if (typeof error.body.message === 'string') {
                    this.errorMsg = error.body.message;
                }
                console.log('proper error--->' + this.errorMsg);
                this.isLoading = false;
                this.showErrMsg = true;
                this.notifType = 'error'; 
                this.notifMsg = this.errorMsg;
            });

    }

    rowSelChangeEvent(event) {
        this.showConfirmClosebtn = false;
        this.listAllCloseableCasesData.forEach(element => {
            if (element.cs.CaseNumber === event.currentTarget.dataset.id) {
                element.isSelect = event.target.checked;
            }

        });

        for (let i = 0; i < this.listAllCloseableCasesData.length; i++) {

            if (this.listAllCloseableCasesData[i].isSelect) {
                this.listcancelSeltedCases.push(this.listAllCloseableCasesData[i].cs.CaseNumber);
                this.showConfirmClosebtn = true;
            }

        }

    }

    selectDeselectAll(event) {
        if (event.target.checked) {
            this.listAllCloseableCasesData.forEach(element => {
                if (element.isCloseable) {
                    element.isSelect = true;
                    this.showConfirmClosebtn = true;
                }

            });
        }
        else {
            this.listAllCloseableCasesData.forEach(element => {
                if (element.isCloseable) {
                    element.isSelect = false;
                }
                this.showConfirmClosebtn = false;
            });
        }

    }

    closelselectedCaseJs(event) {
        this.isLoading = true;
        this.showErrMsg = false;
        this.listcancelSeltedCases = [];

        for (let i = 0; i < this.listAllCloseableCasesData.length; i++) {
            if (this.listAllCloseableCasesData[i].isSelect) {
                this.listcancelSeltedCases.push(this.listAllCloseableCasesData[i].cs.CaseNumber);
            }
        }


        closelSelected({ listSelCasesToUpdate: this.listcancelSeltedCases })
            .then(result => {
                console.log('cases--->' + result);
                this.showConfirmClosebtn = false;
                this.showErrMsg = true;
                this.notifType = 'success';
                this.notifMsg = result;
                this.isLoading = false;

            })
            .catch(error => {

                var errorMsg;
                if (Array.isArray(error.body)) {
                    this.errorMsg = error.body.map(e => e.message).join(', ');
                } else if (typeof error.body.message === 'string') {
                    this.errorMsg = error.body.message;
                }

                this.showConfirmClosebtn = true;
                this.showErrMsg = true;
                this.notifType = 'error';
                this.notifMsg = this.errorMsg;
                this.isLoading = false;

            });
    }
}