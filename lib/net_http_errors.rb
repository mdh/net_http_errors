# Easy for using in rescue clause, e.g.:
# rescue *Net::HTTP::Errors => e
#
# Inspired by http://tammersaleh.com/posts/rescuing-net-http-exceptions
# Could be a nice little gem
require 'net/http'

Net::HTTP.class_eval do
  Net::HTTP::Errors = [
    SocketError, IOError, Timeout::Error, Errno::EINVAL, Errno::ECONNRESET,
    EOFError, Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError,
    Net::ProtocolError
  ]
end

