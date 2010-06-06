module MusicianAnalytics
  class GoogleAnalytics < MonsterMash::Base
    get(:get_stats) do |google_analytics_username, google_analytics_password|
      Garb::Session.login(google_analytics_username, google_analytics_password)
      profile = Garb::Profile.all
      report = Garb::Report.new(profile, {:metrics => [:visits]})
      report.all
    end
  end
end
