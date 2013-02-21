module ApplicationHelper
  def intellinav
    links = ""

    if @auth.present? #if you're not logged in, auth is nil
      if @auth.is_admin #doesn't end in a question mark b/c it's not a function.
        links += "<li>#{link_to('Show users', users_path)} </li>"
      end

      links += "<li>#{link_to('Edit', edit_users_path)} </li>"
      links += "<li> #{link_to('Logout: ' + @auth.name, login_path, :method => :delete, :confirm => 'Leaving so soon?')}</li>"
      links += "<li> #{link_to('Balance: ' + number_to_currency(@auth.balance), '#' )}</li>"
    else
      "<li> #{link_to('Create Account', new_user_path)}</li>" +
      "<li> #{link_to('Log in', login_path)}</li>"
    end
  end
end