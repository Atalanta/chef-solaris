require 'chef/provider/group/groupadd'
require 'chef/resource/group'
require 'chef/platform'

class Chef
  class Provider
    class Group
      class Usermod < Chef::Provider::Group::Groupadd

        def load_current_resource
          super
          def modify_group_members
            append_flags = "-G"
          end
        end

      end
    end
  end
end

Chef::Platform.set :platform => :solaris2, :resource => :group, :provider => Chef::Provider::Group::Usermod
