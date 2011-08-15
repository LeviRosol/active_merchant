require File.dirname(__FILE__) + '/dwolla/helper.rb'
require File.dirname(__FILE__) + '/dwolla/notification.rb'

module ActiveMerchant #:nodoc:
  module Billing #:nodoc:
    module Integrations #:nodoc:
      module Dwolla 
        autoload :Return, 'active_merchant/billing/integrations/dwolla/return.rb'
        autoload :Helper, 'active_merchant/billing/integrations/dwolla/helper.rb'
        autoload :Notification, 'active_merchant/billing/integrations/dwolla/notification.rb'
       
        mattr_accessor :service_url
        self.service_url = 'https://www.dwolla.com/payment/request'

        def self.notification(post)
          Notification.new(post)
        end  
      end
    end
  end
end
