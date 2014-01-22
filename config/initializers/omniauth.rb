Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['Tkcz4gex3W9FP70jSI5tzg'], ENV['EZoeYxCrUVPl4RrRBMoVOQqq2fEmgMoV3sTnEss9g']
end