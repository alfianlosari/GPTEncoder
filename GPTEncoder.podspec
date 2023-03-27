Pod::Spec.new do |s|

    s.name         = "GPTEncoder"
    s.version      = "1.0.0"
    s.summary      = "A programmatic interface for tokenizing text for OpenAI GPT API."
  
    s.description  = <<-DESC
                    You can use the tool below to understand how a piece of text would be tokenized by the API, and the total count of tokens in that piece of text.
                     DESC
  
    s.homepage     = "https://github.com/alfianlosari/GPTEncoder"
    s.license      = { :type => "MIT", :file => "LICENSE" }
  
    s.authors            = { "alfianlosari" => "alfianlosari@gmail.com" }
    s.social_media_url   = "https://github.com/alfianlosari"
  
    s.swift_versions = ['5.5']

    s.source       = { :git => "https://github.com/alfianlosari/GPTEncoder.git", :tag => s.version }
    s.source_files  = ["Sources/GPTEncoder/**/*.swift"]
    s.resource_bundles = {
        'GPTEncoder_GPTEncoder' => [
           'Sources/GPTEncoder/Resources/vocab.bpe',
           'Sources/GPTEncoder/Resources/encoder.json'
        ]
    }
    
      
    s.ios.deployment_target = "12.0"
    s.osx.deployment_target = "10.13"
    s.tvos.deployment_target = "12.0"
    s.watchos.deployment_target = "7.0"

    s.requires_arc  = true
  end
