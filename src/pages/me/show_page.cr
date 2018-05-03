class Me::ShowPage < MainLayout
  def content
    h1 "Your profile"
    h3 "Signed in as #{@current_user.email}"
  end
end
