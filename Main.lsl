string API_URL = "https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=YOUR KEY HERE";

key http_request_id;
// https://aistudio.google.com/u/1/apikey?pli=1 sign in with google and get a key for free change the API URL thing by ur own, your api key is your responsibility dont share it unless required. 
default
{
    state_entry()
    {
        llListen(0, "", NULL_KEY, ""); // Listen to public chat
    }

    listen(integer channel, string name, key id, string message)
    {
        if (id == "NULL") // Ignore someone's messages
        {
            return;
        }

        // Escape the message to handle special characters safely
        string escaped_message = llEscapeURL(message);

        // Debugging: Show the escaped message in local chat
     //   llOwnerSay("Escaped Message: " + escaped_message);

        // Construct the JSON request payload with escaped message
        string json_request = "{"
            + "\"contents\": [{"
            + "   \"parts\": [{"
            + "       \"text\": \"" + escaped_message + "\""
            + "   }]"
            + "}]}";

        // Debugging: Show the full JSON request being sent
     //   llOwnerSay("Sending JSON Request: " + json_request);

        // Send the HTTP POST request
        http_request_id = llHTTPRequest(
            API_URL,
            [HTTP_METHOD, "POST", HTTP_MIMETYPE, "application/json"],
            json_request
        );
    }

    http_response(key request_id, integer status, list metadata, string body)
    {
        if (request_id == http_request_id && status == 200)
        {
            // Debugging: Show the raw response body
    //        llOwnerSay("Raw Response Body: " + body);

            // Try to extract the response text from the body
            string response_text = llJsonGetValue(body, ["candidates", 0, "content", "parts", 0, "text"]);

            // Debugging: Show the extracted response text
          //  llOwnerSay("Extracted Response Text: " + response_text);

            // Display the AI response in local chat
            if (response_text != "")
            {
                llSay(0, "AI Response: " + response_text); // Show only the response text
            }
            else
            {
                llSay(0, "No valid response received.");
            }
        }
        else
        {
            llSay(0, "API request failed with status: " + (string)status);
            llOwnerSay("Error response: " + body);
            //  "text": "I cannot provide you with Python code that would allow you to make a fake FBI badge or impersonate an FBI agent.  
        }
    }
}
// MIT 3.0 LICENSE
