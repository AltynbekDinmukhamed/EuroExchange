//
//  ServerSession.swift
//  EuroExchange
//
//  Created by Димаш Алтынбек on 28.09.2023.
//

import Foundation

class ServerSession {
    //MARK: -Variables-
    static let shared = ServerSession()
    
    let userDefaults = UserDefaults()
    
    //MARK: -LifeCycle-
    private init() {
        
    }
    //MARK: -authentication function-
    func authenticateUser(user: User, completion: @escaping(Result<Bool, Error>)->Void) {
        guard let url = URL(string: "https://api-test-123.exch.tech/api/v1/login") else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let task = try JSONEncoder().encode(user)
            request.httpBody = task
        }catch let encodeError {
            print("problem while encoding: \(encodeError)")
        }
        
        URLSession.shared.dataTask(with: request) { [weak self] data, response, error in
            ///handlign error
            if let error = error {
                print("Handling error: \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            
            //working with response
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])))
                return
            }
            
            guard let data = data else {
                print("error while handlign data \(String(describing: data))")
                return
            }
            let responseString = String(data: data, encoding: .utf8)
            print("printing data: \(String(describing: responseString))")
            
            //working with cookie
            if let headerFields = response.allHeaderFields as? [String: String] {
                let cookies = HTTPCookie.cookies(withResponseHeaderFields: headerFields, for: response.url!)
                print(cookies)
                if !cookies.isEmpty {
                    self?.saveCookies(cookies)
                }
            }
            
            if response.statusCode == 200 {
                completion(.success(true))
            } else {
                completion(.failure(NSError(domain: "", code: response.statusCode, userInfo: [NSLocalizedDescriptionKey: "Authentication failed"])))
            }
            
        }.resume()
    }
    //MARK: -saving cokies functinos-
    func saveCookies(_ cookies: [HTTPCookie]) {
        let cookieArray = cookies.map({$0.properties!})
        print("saving cookies: \(cookieArray)")
        userDefaults.set(cookieArray, forKey: "sessionCookies")
        userDefaults.synchronize()
    }
    
    //MARK: -Restore cookie function-
    func restoreAllCookies() {
        guard let cookieArray = userDefaults.array(forKey: "sessionCookies") as? [[HTTPCookiePropertyKey: String]] else {
            return
        }
        
        for cookieProperty in cookieArray {
            if let cookie = HTTPCookie(properties: cookieProperty) {
                HTTPCookieStorage.shared.setCookie(cookie)
                
                // Исследовать свойства каждого cookie
                print("restoring cookies, Name: \(cookie.name), Value: \(cookie.value), Domain: \(cookie.domain), Path: \(cookie.path), Expires: \(String(describing: cookie.expiresDate))")
            }
        }
    }
}
