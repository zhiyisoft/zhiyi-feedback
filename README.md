# 用户反馈的Rails引擎

### Installation

Add this line to your application's Gemfile:

    gem 'feedback',:git => 'git@github.com:YinChangXin/zhiyi-feedback.git'

And then execute:

    $ bundle

And install feedback:

    $ rails g feedback:install
    
在项目中需要添加反馈按钮的地方加上如下语句

    = link_to '反馈','/feedback/feedback_infos/new',:id => "add_feedback", :remote => true, "data-type" => "script",:class =>"btn"
