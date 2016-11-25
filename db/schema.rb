ActiveRecord::Schema.define(version: 20_161_113_192_310) do
  create_table 'tasks', force: :cascade do |t|
    t.string   'title'
    t.text     'description'
    t.integer  'priority'
    t.date     'due_date'
    t.integer  'user_id'
    t.datetime 'created_at',                  null: false
    t.datetime 'updated_at',                  null: false
    t.boolean  'completed', default: false
    t.index ['user_id'], name: 'index_tasks_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string   'email',                  default: '', null: false
    t.string   'encrypted_password',     default: '', null: false
    t.string   'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.integer  'sign_in_count', default: 0, null: false
    t.datetime 'current_sign_in_at'
    t.datetime 'last_sign_in_at'
    t.string   'current_sign_in_ip'
    t.string   'last_sign_in_ip'
    t.string   'confirmation_token'
    t.datetime 'confirmed_at'
    t.datetime 'confirmation_sent_at'
    t.string   'unconfirmed_email'
    t.datetime 'created_at',                          null: false
    t.datetime 'updated_at',                          null: false
    t.string   'first_name'
    t.string   'last_name'
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end
end
