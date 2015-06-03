ActiveAdmin.register Journal do
permit_params :journal_name, :issues_per_yr,:journal_url,:content_guide_url,:topic_id

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:journal_name, :issues_per_yr,:journal_url,:content_guide_url,:topic_id]
  #   permitted << :journal_topic if topic.topic_id?
  #   permitted
  # end


end
