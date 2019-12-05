class ShowAudioTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def render(context)
    audio_path = "/assets/audio/"
    config = context.registers[:site].config
    #site = context.registers[:site]
    #page = context.registers[:page]

    file_path = config["baseurl"] + audio_path + @input
    output = "<i onclick=\"play_audio('#{file_path}')\" class=\"fa fa-play\" aria-hidden=\"true\"></i>"

    return output;
  end
end
Liquid::Template.register_tag('show_audio', ShowAudioTag)
