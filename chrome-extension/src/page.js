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
    // console.log(sender.tab ?
    //             "from a content script:" + sender.tab.url :
    //             "from the extension");
    // console.log(request)
    if (request.source === "railsochrome") {
      let messages = request.details.responseHeaders.filter(e => e["name"].includes("railsochrome_msg_")).map(e => e["value"])
      console.log(`%c ${messages.join('\n')}`, logStyling);
      console.log(messages.join('\n'));
      sendResponse({status: "ok"});
    }
  }
);
