# Preview all emails at http://localhost:3000/rails/mailers/player_mailer
class PlayerMailerPreview < ActionMailer::Preview
  def welcome
    PlayerMailer.with(to: "test@example.com", name: "test").welcome
  end
end
