module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end

  def can_purchase
    @song.cost <= @auth.balance
  end

  def purchased_songs
    songs = []
    @auth.mixtapes.each do |mixtape|
      mixtape.songs.each do |song|
        songs << song.name
      end
    end
  end


  def intellinav
    links = ""

    if @auth.present? && !@auth.is_admin
      links += "<li class='has-flyout'>"
        links += "<a href='#'>Your Mixtapes</a><span> </span>"
          links += "<ul class ='flyout'>"
            @auth.mixtapes.each do |mixtape|
              links += "<li>#{link_to(mixtape.name, mixtape)}</li>"
            end
            links += "<li>#{link_to('New Mixtape', new_mixtape_path)}</li>"
        links += "</ul>"
      links += "</li>"
    end

    if @auth.present? #if you're not logged in, auth is nil
      if @auth.is_admin #doesn't end in a question mark b/c it's not a function.
        links += "<li>#{link_to('Users', users_path)} </li>"
      end

      links += "<li>#{link_to('Edit acct', edit_users_path)} </li>"
      links += "<li> #{link_to('LO: ' + @auth.name + '|' + number_to_currency(@auth.balance), login_path, :method => :delete, :confirm => 'Leaving so soon?')}</li>"
    else
      "<li> #{link_to('Create Account', new_user_path)}</li>" +
      "<li> #{link_to('Log in', login_path)}</li>"
    end
  end



end