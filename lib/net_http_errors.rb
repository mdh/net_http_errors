require 'net/http'

Net::HTTP.class_eval do
  Net::HTTP::Errors = [
    EOFError, IOError, SocketError,
    Errno::ECONNRESET, Errno::ECONNREFUSED, Errno::EINVAL,
    Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError, Net::ProtocolError,
    Timeout::Error
  ]
end
