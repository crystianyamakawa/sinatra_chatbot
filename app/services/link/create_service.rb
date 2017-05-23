module LinkModule
  class CreateService
    def initialize(params)
      # TODO: identify origin and set company
      @company = Company.last
      @description = params["description"]
      @url = params["url"]
      @posted_by = params["posted_by"]
      @hashtags = params["hashtags"]
    end

    def call
      if @hashtags == nil || @hashtags == ""
        return "Hashtag Obrigatória"
      end
      begin

          Link.transaction do
            link = Link.create(description: @description, url: @url, posted_by: @posted_by ,company: @company)
            @hashtags.split(/[\s,]+/).each do |hashtag|
              link.hashtags << Hashtag.create(name: hashtag)
            end
          end
          "Criado com sucesso"
      rescue
          "Problemas na Criação."
      end

    end
  end
end
