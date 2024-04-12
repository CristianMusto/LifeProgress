//
//  User.swift
//  LifeProgress
//
//  Created by Kriis Musto on 12/04/24.
//

import Foundation


class User: Identifiable {
    
    // init
    
        internal var _id: Int
        private var _accessToken: String
        private var _name: String
        private var _lastName: String
        private var _job: String
        private var _email: String
        private var _password: String
        
        public init (name: String, lastName: String,job: String, email: String, password: String ) {
            self._id = 0
            self._accessToken = ""
            self._name = name
            self._lastName = lastName
            self._job = job
            self._email = email
            self._password = password
            
        }
    
    //-----------------------------------//
    
    // getters and setters
    
        public var id: Int {
            get { return self._id }
            set { self._id = newValue }
        }
        
        public var accessToken: String {
            get { return self._accessToken }
            set { self._accessToken = newValue }
        }
        
        public var name: String {
            get { return self._name }
            set { self._name = newValue }
        }
        
        public var lastName: String {
            get { return self._lastName }
            set { self._lastName = newValue }
        }
    
        public var job: String {
            get { return self._job }
            set { self._job = newValue }
        }
        
        public var email: String {
            get { return self._email }
            set { self._email = newValue }
        }
        
        public var password: String {
            get { return self._password }
            set { self._password = newValue }
        }
    
    //-----------------------------------//
    
    // user registration
    
        func RegisterUser (user: User) {
            print("registered")
            
        }
        
        func getIdNumber () -> Int {
            print("got id")
            let id = 2
            
            return id
        }
    
    //-----------------------------------//
    
    // login
    
        
    
    //-----------------------------------//
    
    
}
