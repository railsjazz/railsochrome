const logStyling = `
    color:white;
    background-color:black;
    border-left: 1px solid yellow;
    padding: 4px 8px;
    font-weight: 600;
    font-family: Courier;
`;

chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {
    if (request.source === "railsochrome") {
      let messages = request.details.responseHeaders.filter(e => e["name"].includes("railsochrome_msg_")).map(e => e["value"])
      if(messages.length > 0) {
        console.log(`%c${messages.join('\n')}`, logStyling);
        // console.log(messages.join('\n'));
        sendResponse({status: "ok"});
      }
    }
  }
);
