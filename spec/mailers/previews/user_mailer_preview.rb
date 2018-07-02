# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  def contact_form
    UserMailer.contact_form("john@example.com", "John", "Hello Mildred! Your work is to discover your world and then with all your heart give yourself to it.  The best things in life are free: hugs, smiles, friends, kisses, family, sleep, love, laughter, and good memories.")
  end

    def purchase_confirmation
    UserMailer.purchase_confirmation("Red", "Keep Fit Bracelet")
  end

end
