
require 'time_error'

describe TimeError do
  it "returns difference between server time and computer time" do
    fake_requester = double(:requester)
    allow(fake_requester).to receive(:get).with(
      URI('https://worldtimeapi.org/api/ip')
      ).and_return('{"abbreviation":"GMT","client_ip":"82.163.117.26","datetime":"2023-01-24T11:34:40.614619+00:00","day_of_week":2,"day_of_year":24,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1674560080,"utc_datetime":"2023-01-24T11:34:40.614619+00:00","utc_offset":"+00:00","week_number":4}')
    time_error = TimeError.new(fake_requester)
    local_time = Time.new(2023, 1, 24, 11, 34, 40)
    expect(time_error.error(local_time)).to eq 0.614619
  end
end