# -*- coding: utf-8 -*-
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /トップページ/
      ""
    when /^(200[6789])$/
      "/#{$1}"
    else
      page_name
    end
  end
end

World(NavigationHelpers)
