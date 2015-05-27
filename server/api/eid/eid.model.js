'use strict';

var mongoose = require('mongoose'),
    Schema = mongoose.Schema;

var EidSchema = new Schema({
    firstName: String,
    name : String,
    email: String,
    middleName : String,
    nationalNumber: String,
    dateOfBirth: String,
    placeOfBirth:String,
    nationality:String,
    address: { 
        streetAndNumber:String,
        zip:String,
        municipality:String
    },
    cardNumber:String   ,
    cardValidityDateBegin:String,
    cardValidityDateEnd:String,
    photo: String
});

module.exports = mongoose.model('Eid', EidSchema);