//
//  AuthManager.swift
//  Spotify
//
//  Created by macbook on 16/04/2021.
//

import Foundation

class AuthManager  {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "24c92695b97e46c19275cea81acb205e"
        static let clientSecret = "25c5ff17ef0f4710b1c07a30cd86f270"
    }
    
    private init() {}
    
    public var signInURL : URL? {
        let scopes = "user-read-private"
        let redirectURI = "https://www.iosacademy.io/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scopes)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn : Bool {
        return false
    }
    
    private var accessToken : String? {
        return nil
    }
    
    private var refreshToken : String? {
        return nil
    }
    
    private var tokenExpirationDate : Date? {
        return nil
    }
    
    private var shouldRefreshToken : Bool {
        return false
    }
    
    public func exchangeCodeForToken(code : String,
    completion : @escaping (Bool) -> Void){
    
    }
    
    public func refreshAccessToken(){
        
    }
    
    private func cacheToken() {
        
    }
}
