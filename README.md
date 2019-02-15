# Books App
An iOS App to manage books

## How to run on your Mac
1. You should get installed `pod`. (Skip this step if you already have installed it)
```bash
# Xcode 8 + 9
sudo gem install cocoapods
```
Further reading [about pod](https://cocoapods.org/) 

2. clone the repo
```bash
git clone https://github.com/alfredov/Books-App.git
```

3. go to project Folder
```
cd Books-App
```

4. Install dependencies
```bash
pod install
```

5. Open the app in Xcode
```bash
./Books\ App.xcworkspace
```
```bash
open .
```

6. Settings `GoogleService-info.plist`:  
 In Xcode Go to `Books App/Base` folder and open `GoogleService-Info.plist` and replace the values of following keys:
 -  CLIENT_ID
 - REVERSED_CLIENT_ID
 - API_KEY
 - GCM_SENDER_ID
 - GOOGLE_APP_ID
 - DATABASE_URL

You can find the `secret Values` in this [protected url](https://sharelock.io/1/4eU-oMDqT6tEeL14GBCtVjRvqSLf0Gxlj_D6uIWXNrM.n8JhOb/bLTW-21B77eSuyMYaTrZ5b_gCzOw9r0NKKgToos_UjZ4bJNwJ1/5qqOGYitFZ2n9nKT_Myv6YiWMtZ4j7hkvJPuKGwPDG4whXvC41/ZcxFhqGfzKzpyB1XBfggfT8qpf_WIHckXPfL03pwspdnNFypKi/3aAKnaKMXGOsYWmPdmK2U4ypveilkIho-wNF-FCbc4akWmvhre/aDjOgp0BwgdX9UFhpYNuktyblfWk3AgKAwMNmvFUxehtrAXJWx/cMcAWj-QGv4B6-jD6uRbvnSieI3aw-PFr3UpNp32lTDvm7rMWW/ytwXy-RafVRHqmGolAD-6t08nQmKWhRmvdnCME7Mggc1X7IdRT/LA3bmDjGA64Hqrv_Z9m7PNaYBGy1gFjUHHCITbOCMOP1mu6IpX/BxHqGtB_IS5AC4GPG_Nfgho43G3ntC78w0velXoP2FKToVJG5C/8dOxiyX8vSVua8ErXFyNbJBvSaxYR2DLDW5K6u-CM5IlFs1144/7LoESB7bi4WETiJEKyAfTjdS-YV6fOUNEDKZTpxdLlWqOB0yj2/Dob6xkvna-6Sy9RzRwyUMnwSOf-Wvws0mBYgLeHTZa1--DhtUV/oiBFDuI96shQFdekYpKoZSNyMHQVA.01_R3WJlOmlav2rTmaky/bA)
(If you can't access to this url, please reach to me to bring me your email and grant it)

7. Finally in Xcode, Run the App 📱

