module.exports = {
  defaultBrowser: "Firefox",
  handlers: [
    {
      match: finicky.matchHostnames(["medium.com"]),
      browser: "Firefox"
    },
    {
      match: finicky.matchHostnames([/.+\.aliexpress\.com/]),
      browser: "Google Chrome"
    }
  ]
};
