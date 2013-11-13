

  class Posts
        attr_reader :user_imput

        def initialize user_imput
          @user_imput = user_imput

        end

        def search
            keywords = @user_imput.split(' ').join('+').to_s #handles multi-word imput and number

           #want API to look like this: http://www.reddit.com/r/organic/search.json?q=_______&sort=relevance&restrict_sr=on&t=all')
                                                                                        #^subcategory               ^insert keyword(s) here
            api_begins ='http://www.reddit.com/r/organic/search.json?q='
            api_ends = '&sort=relevance&restrict_sr=on&t=all'
            api = api_begins.concat(keywords) << api_ends


            search = RestClient.get(api)
            parsed = JSON.parse search

            raw_results = parsed['data']['children']
            results = raw_results.collect do |post|
              puts "TITLE: #{post['data']['title']} \nPOSTED BY: #{post['data']['author']} \n ***"
            end

              if results.empty?
                puts "***Oh! Disculpa... There are no matches at this time.\nPlease try another search, or check us out at a diffent time. \nIf you'd like to further explore Organic Index, try searching for the word milk.***"
            end
        end
      end


      # result = RestClient.get('http://www.reddit.com/r/organic/search.json?q=keyword&sort=relevance&restrict_sr=on&t=all')
      # parsed = JSON.parse result
