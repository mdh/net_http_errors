require 'net/http'

Net::HTTP.class_eval do
  Net::HTTP::Errors = [
    SocketError, IOError, Timeout::Error, Errno::EINVAL, Errno::ECONNRESET,
    EOFError, Net::HTTPBadResponse, Net::HTTPHeaderSyntaxError,
    Net::ProtocolError
  ]
end

