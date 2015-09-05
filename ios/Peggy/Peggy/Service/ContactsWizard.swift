//
//  FacebookService.swift
//  Peggy
//
//  Created by Alex D on 01/09/15.
//  Copyright © 2015 Alex D. All rights reserved.
//
import Contacts

class ContactsWizard {
    
    static func getImportantContacts() -> [Contact] {
        return self.getPhoneContacts()
    }
    
    private static func getPhoneContacts() -> [Contact] {
        var result: [Contact] = []
        let store = CNContactStore()
        do {
            try store.enumerateContactsWithFetchRequest(CNContactFetchRequest(keysToFetch: [
                CNContactGivenNameKey,
                CNContactFamilyNameKey,
                CNContactImageDataKey,
                CNContactThumbnailImageDataKey,
                CNContactNicknameKey,
                CNContactBirthdayKey])) { (contact: CNContact, pointer: UnsafeMutablePointer<ObjCBool>) -> Void in
                    result.append(Contact(name: contact.givenName, surname: contact.familyName, dob: contact.birthday?.date))
            }
        } catch {
        }
        return result
    }
    
}