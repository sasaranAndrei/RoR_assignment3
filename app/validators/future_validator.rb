class FutureValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors[attribute] << options[:message] || "can't be in the past" if record[attribute] + 10.minutes < Time.now
  end
end
