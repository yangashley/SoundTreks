module SoundTreksHelper
  def sound_trek_owner?(sound_trek)
    session[:user_id] == sound_trek.trekker_id
  end
end
