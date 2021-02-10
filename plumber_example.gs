function plumber_example(input) {
  var url = "https://colorado.rstudio.com/rsc/content/8634/sponge?text=" + input;
  var response = UrlFetchApp.fetch(url, {'muteHttpExceptions': true});
  var json = response.getContentText();
  var sponged = JSON.parse(json);
  return sponged;
}
