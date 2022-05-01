#' @title Champion Data Scraper
#' @description Creates data table by scraping current champion base statistics from the wiki.
#' @import rvest
#' @return A data table containing current champion base statistics. Must be assigned.
#' @examples
#' champData <- lolscrape()
#' @export

lolscrape<- function(){
  lolwiki_link <- "https://leagueoflegends.fandom.com/wiki/List_of_champions/Base_statistics"
  lolwiki_page <- rvest::read_html(lolwiki_link)

  champStats_table <- lolwiki_page %>% rvest::html_nodes("table") %>% .[1] %>% rvest::html_table() %>% .[[1]]
  return(champStats_table)
  }
