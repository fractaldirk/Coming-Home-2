ActiveAdmin.register Position do
  index do
    column :id
    column :job_title
    column :office
    column :created_at
    column :updated_at
    default_actions
  end
end
