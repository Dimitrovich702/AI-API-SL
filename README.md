
// MIT License
// 
// Copyright (c) [2025] [Your Name or Organization]
// 
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

/*
 * AI Content Generation Script for Second Life (SL)
 * 
 * This script integrates with Google's Generative Language API to generate AI-driven
 * responses based on public chat messages. When someone sends a message, the script
 * sends the message to the API and receives a response, which is then shown in the
 * local chat of the region.
 * 
 * Setup Instructions:
 * 1. Obtain a valid API key from Google AI Studio.
 *    - Go to https://aistudio.google.com/u/1/apikey?pli=1, sign in with your Google account,
 *      and generate your API key.
 * 2. Replace the placeholder "YOUR KEY HERE" in the `API_URL` variable with your actual API key.
 * 3. Drop this script into a prim or object that will listen to public chat.
 * 4. Once the script is running, it will listen to all chat messages and send them to the
 *    Google API. Any response from the AI will be displayed in the local chat.
 * 
 * How it works:
 * - When a user speaks in public chat, the script listens for their message.
 * - The message is sent to the Google Generative Language API as a JSON request.
 * - The API processes the message and returns a response, which is extracted and displayed
 *   in the local chat of the region.
 * 
 * Notes:
 * - Make sure to protect your API key, as it is linked to your Google account and usage limits.
 * - The API will return text-based responses from the AI model based on the message content.
 * - You can modify the script further if you need additional functionality.
 */
