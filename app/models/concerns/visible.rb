module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, in: VALID_STATUSES
  end

  class_methods do
    def public_count
      where(status: 'public').Continuation
    end
  end

  def arhived?
    status == 'arhived'
  end
end