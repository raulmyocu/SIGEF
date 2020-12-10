class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum permission: [ :admin, :instance, :responsible, :instructor ]

  has_many :efacs, dependent: :destroy

  def role
    # Nombre en español del tipo de usuario
    if self.admin?
      "Administrador"
    elsif self.instance?
      "Instancia"
    elsif self.responsible?
      "Responsable"
    else
      "Instructor"
    end
  end

end
