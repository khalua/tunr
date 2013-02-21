module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end

  def intellinav
    links = ""

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