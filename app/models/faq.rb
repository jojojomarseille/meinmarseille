class Faq < ApplicationRecord

has_one_attached :photo

  mount_uploader :photo, PhotoUploader #cela definie, je ne sait pas comment qu'il y a un photo uploader pour ce model, c'est ptet pas utile, tester sans si ca fonctionne tjr un jour


end
