# -*- coding: utf-8 -*-

Plugin.create(:mikutter_baketsuxizu) do
  command(
          :mikutter_baketsuxizu,
          name: 'ゆずばけつさんたいありでした。',
          condition: lambda{ |opt| true },
          visible: true,
          role: :timeline
          ) do |opt|
    msg = "ゆずばけつさんたいありでした。あの位置からばしゃばしゃはさすがに辛かったですw"
    msg = msg + '　' * (rand(140-msg.split(//).size+1)+1)
    Service.primary.post(:message => msg,
                         :replyto => opt.messages[0])
  end
end
