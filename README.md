# Salus-Health-Care-Appliacation
flutter based Health Care Application is developed as part of Software Engineering Course offered by PES Univerisity



## How to Install flutter 

<ul>
    <li>Install Flutter environment</li>
    <li>Download This GitHub repository</li>
    <li>install Flutter packages *pub get) and Flutter web -> Flutter create .</li>
    <li>Setup firebase account/project</li>
    <li>Copy Firebase Project Config settings and replace variable firebaseConfig at src/web/index.html</li>
    <li>enable Firebase social authentications</li>
    <li>update Firebase Rules</li>

```sbtshell
    rules_version = '2';
    service cloud.firestore {
    match /databases/{database}/documents {
    match /{document=**} {
      allow read, write: if false;
    }
    match /roles/{document} {
    // fix this, anyone who is logged in, can read these document & passwords
    //  allow read: if isSignedIn();
  	allow read, write: if false;
    }
    
    match /users/{document} {
    allow create: if true;
    allow read : if isSignedIn() && (isDocOwner() || isAdmin());
    allow update: if isSignedIn() && isDocOwner() && onlyContentChanged();
    allow update, delete: if isAdmin();
    }
    
    match /person/{document=**} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /person/{document}/Vaccine/{doc=**} {
    allow create: if true;
    // allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    // fix this later
    allow read, update : if true;
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /person/{document}/OPD/{doc} {
    allow create: if true;
    // allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    // fix this later
    allow read, update : if true;
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /person/{document}/Lab/{doc} {
    allow create: if true;
    // allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    // fix this later
    allow read, update : if true;allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /person/{document}/Rx/{doc} {
    allow create: if true;
    // allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    // fix this later
    allow read, update : if true;
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /person/{document}/Messages/{doc} {
    allow create: if true;
    // allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    // fix this later
    allow read, update : if true;
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /appointments/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /records/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    }
    
    match /vaccine/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    }
    
    match /purchase/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
		match /msr/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /vendor/{document} {
    allow create: if true;
    allow read, update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    match /warehouse/{document} {
    allow create: if true;
    allow read: if isSignedIn()
    allow update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    match /item/{document} {
    allow create: if true;
    allow read: if isSignedIn()
    allow update : if isSignedIn() && (isDocOwner() || isAdmin());
    allow delete : if isSignedIn() && isAdmin();
    }
    
    // helper functions
    function isSignedIn() {
    return request.auth.uid != null;
    }
    
    function onlyContentChanged() {
    return request.resource.data.role == resource.data.role;
    // make sure user is not signing in with any role or changin his role during update
    }
    function isDocOwner() {
    return request.auth.uid == resource.data.author;
    }
    // function isDocCreater() {
    // return request.auth.uid == request.resource.data.author;
    // }
    function isAdmin() {
    return get(/databases/$(database)/documents/users/$(request.auth.uid)).data.role == "admin";
    }
    // function isEmployee() {
    // return get(/databases/$(database)/documents/settings/$(request.auth.uid)).data.role == "employee";
    // }
    }
    }
```
</ul>
