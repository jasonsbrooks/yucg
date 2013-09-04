use Rack::Static, 
  :urls => ["/css", "/images", "/js"],
  :root => "public"


map '/' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=6400' 
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end

map '/google3dff47721b18f88a' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=6400' 
      },
      File.open('public/google3dff47721b18f88a.html', File::RDONLY)
    ]
  }
end