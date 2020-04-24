module.exports = {
  defaultBrowser: "Firefox",
  handlers: [
    {
      // Open apple.com and example.org urls in Safari
      match: finicky.matchHostnames(["medium.com"]),
      browser: "Firefox"
    },
    {
      // Open apple.com and example.org urls in Safari
      match: finicky.matchHostnames([/.+\.aliexpress\.com/]),
      browser: "Google Chrome"
    }
  ]
};
