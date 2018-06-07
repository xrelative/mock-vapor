# Vapor Server Mock

Build the project and run server. The server will send the dummy response that stubbed in the `main.swift` 

         swift build && .build/debug/Mock-Server serve

This will start vapor server on port 8080 and listen to response from local vapor server.

Now run the UITests which uses local response, you can see that launchEnvironment value from local network.

         app.launchEnvironment = ["BASEURL" : "http://localhost:8080"]

You can see that test wil pass with the response Stubbed data from `main.swift`