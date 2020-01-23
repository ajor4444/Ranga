import { LightningElement,track } from 'lwc';
import {createRecord} from"lightning/uiRecordApi";
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class WebComp1 extends LightningElement {
    @track accountName;
    @track accountPhone;
    @track accountWebsite;

    accountNameChangeHandler(event){
        this.accountName =event.target.value;
    }
    accountPhoneChangeHandler(event){
        this.accountPhone = event.target.value;
    }
    accountwebsiteChangeHandler(event){
        this.accountWebsite = event.target.value;
    }
    createAccount(){
        const fields = {'Name':this.accountName,
                        'Phone':this.accountPhone,
                        'Website':this.accountWebsite};
        const recordInput = {apiName:'Account',fields};
                
                createRecord(recordInput)
            .then(account => {
                this.accountId = account.id;
               // display success toast msg for account
                this.dispatchEvent(
                    new ShowToastEvent({
                        title: 'Success',
                        message: 'Account created',
                        variant: 'success',
                    })
                )
            })           
                    .catch(error => {
                        this.dispatchEvent(
                            new ShowToastEvent({
                                title: 'Error creating record',
                                message: error.body.message,
                                variant: 'error',
                            }),
                        );
                        });
                    }
                }
                
    