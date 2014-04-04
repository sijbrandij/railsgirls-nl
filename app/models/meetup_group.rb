class MeetupGroup < MeetupResource
  # Example:
  #  members_groups = MeetupGroup.for_member('437658')
  def self.for_member(member_id, api_key = nil)
    @api_key = api_key.blank? ? API_KEY : api_key
    find_everything params: { member_id: member_id }
  end

  def self.for_group_name(group_urlname, api_key = nil)
    @api_key = api_key.blank? ? API_KEY : api_key
    find_everything params: { group_urlname: group_urlname }
  end
end
