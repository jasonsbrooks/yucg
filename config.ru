use Rack::Static, 
  :urls => ["/css", "/images", "/js"],
  :root => "public"

map '/' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end