# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :user_name,          null: true,  comment: "Nome de Usuario"
      t.references :files,          null: true,  comment: "Image de usuario"
      t.string :email,              null: false, comment: "Email para autenticar e validação", unique: true
      t.string :encrypted_password, null: false, comment: "Senha para autenticar o login"
      t.boolean :tip_menu,          null: false, comment: "Define qual menu deve entrar."
      t.boolean :registrations,     null: false, comment: "Define se ja passou pelo registro"

      t.boolean :editor,           null: false, comment: "Se e editor, caso nao seja e compositor/cantor"
      t.string  :name,              null: false, comment: "Nome completo"
      t.string  :categoria,         null: false, comment: "Estilo de musicas"
      t.string  :pais,              null: false, comment: "Pais onde Vive"
      t.string  :estado,            null: false, comment: "Estado onde Vive"
      t.string  :cidade,            null: false, comment: "Cidade onde Vive"

      t.string  :telefone,          null: false, comment: "Telefone"
      t.string  :cpf_cjpj,          null: false, comment: "CPF ou CNPJ da pessoa"

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.inet     :current_sign_in_ip
      # t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true
  end
end
