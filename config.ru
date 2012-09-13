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

map '/about.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/about.html', File::RDONLY)
    ]
  }
end

map '/portfolio-2col.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/portfolio-2col.html', File::RDONLY)
    ]
  }
end

map '/portfolio-3col.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/portfolio-3col.html', File::RDONLY)
    ]
  }
end

map '/portfolio-4col.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/portfolio-4col.html', File::RDONLY)
    ]
  }
end

map '/services.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/services.html', File::RDONLY)
    ]
  }
end

map '/contact.html' do
  run Proc.new { |env|
    [
      200, 
      {
        'Content-Type'  => 'text/html', 
        'Cache-Control' => 'public, max-age=86400' 
      },
      File.open('public/contact.html', File::RDONLY)
    ]
  }
end