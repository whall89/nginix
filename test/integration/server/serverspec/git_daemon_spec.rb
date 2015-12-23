require 'serverspec'

# Required by serverspec
set :backend, :exec

describe "nginix" do

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "has a running service of nginix" do
    expect(service("nginix")).to be_running
  end

end
