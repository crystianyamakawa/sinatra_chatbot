require_relative './../../spec_helper.rb'

describe LinkModule::CreateService do
  before do
    @company = create(:company)

    @description = FFaker::Lorem.sentence
    @url = FFaker::Lorem.sentence
    @posted_by = FFaker::Lorem.word
    @hashtags = "#{FFaker::Lorem.word}, #{FFaker::Lorem.word}"
  end

  describe '#call' do
    it "Without hashtag params, will receive a error" do
      @createService = LinkModule::CreateService.new({"description" => @description, "url" => @url, "posted_by" => @posted_by})

      response = @createService.call()
      expect(response).to match("Hashtag Obrigatória")
    end

    it "With valid params, receive success message" do
      @createService = LinkModule::CreateService.new({"description" => @description, "url" => @url, "posted_by" => @posted_by, "hashtags" => @hashtags})

      response = @createService.call()
      expect(response).to match("Criado com sucesso")
    end

    it "With valid params, find question and anwser in database" do
      @createService = LinkModule::CreateService.new({"description" => @description, "url" => @url, "posted_by" => @posted_by, "hashtags" => @hashtags})

      response = @createService.call()
      expect(Link.last.description).to match(@description)
      expect(Link.last.url).to match(@url)
      expect(Link.last.posted_by).to match(@posted_by)

    end

    it "With valid params, hashtags are created" do
      @createService = LinkModule::CreateService.new({"description" => @description, "url" => @url, "posted_by" => @posted_by, "hashtags" => @hashtags})

      response = @createService.call()
      expect(@hashtags.split(/[\s,]+/).first).to match(Hashtag.first.name)
      expect(@hashtags.split(/[\s,]+/).last).to match(Hashtag.last.name)
    end
  end
end
