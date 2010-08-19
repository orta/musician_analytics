module MusicianAnalytics
  class Facebook < MonsterMash::Base
    get(:get_stats) do |facebook_id|  
      uri "https://graph.facebook.com/" + facebook_id.to_string + "?access_token=2227470867|2.B6k_qvcN_5maM1zKyrz6dA__.3600.1282240800-283900865|xAzPDeFcoX7mVKfq7opDG_2cnNg."
      handler do |response|
        JSON.parse(response.body)
      end
    end
  end
end
