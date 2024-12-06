
function icon_map() {
  case "$1" in
  "Keynote" | "Keynote 讲演")
    icon_result=":keynote:"
    ;;
  "Figma")
    icon_result=":figma:"
    ;;
  "VMware Fusion")
    icon_result=":vmware_fusion:"
    ;;
  "Alacritty" | "Hyper" | "iTerm2" | "kitty" | "Terminal" | "终端" | "WezTerm")
    icon_result=""
    ;;
  "Microsoft To Do" | "Things")
    icon_result=":things:"
    ;;
  "Keyboard Maestro")
    icon_result=":keyboard_maestro:"
    ;;
  "App Store")
    icon_result=""
    ;;
  "CleanMyMac X")
    icon_result=":desktop:"
    ;;
  "Android Messages")
    icon_result=":android_messages:"
    ;;
  "Reeder")
    icon_result=":reeder5:"
    ;;
  "Joplin")
    icon_result=":joplin:"
    ;;
  "Discord" | "Discord Canary" | "Discord PTB")
    icon_result=""
    ;;
  "Logseq")
    icon_result=":logseq:"
    ;;
  "Microsoft Excel")
    icon_result="󱎏"
    ;;
  "Microsoft PowerPoint")
    icon_result="󱎐"
    ;;
  "Telegram")
    icon_result=""
    ;;
  "Transmit")
    icon_result=":transmit:"
    ;;
  "Pi-hole Remote")
    icon_result=":pihole:"
    ;;
  "League of Legends")
    icon_result=":league_of_legends:"
    ;;
  "Element")
    icon_result=":element:"
    ;;
  "Zulip")
    icon_result=":zulip:"
    ;;
  "Sequel Ace")
    icon_result=":sequel_ace:"
    ;;
  "Zed")
    icon_result=":zed:"
    ;;
  "TeamSpeak 3")
    icon_result=":team_speak:"
    ;;
  "1Password")
    icon_result=":one_password:"
    ;;
  "Caprine")
    icon_result=":caprine:"
    ;;
  "카카오톡")
    icon_result=":kakaotalk:"
    ;;
  "Dropbox")
    icon_result=":dropbox:"
    ;;
  "Kakoune")
    icon_result=":kakoune:"
    ;;
  "Rider" | "JetBrains Rider")
    icon_result=":rider:"
    ;;
  "Godot")
    icon_result=":godot:"
    ;;
  "qutebrowser")
    icon_result=":qute_browser:"
    ;;
  "Typora")
    icon_result=":text:"
    ;;
  "Sequel Pro")
    icon_result=":sequel_pro:"
    ;;
  "Reminders" | "提醒事项")
    icon_result=":reminders:"
    ;;
  "Setapp")
    icon_result=":setapp:"
    ;;
  "Finder" | "访达")
    icon_result="󰀶"
    ;;
  "Matlab")
    icon_result=":matlab:"
    ;;
  "LibreWolf")
    icon_result=":libre_wolf:"
    ;;
  "Notes" | "备忘录")
    icon_result=""
    ;;
  "Notion")
    icon_result=":notion:"
    ;;
  "Brave Browser")
    icon_result=""
    ;;
  "Spotlight")
    icon_result=":spotlight:"
    ;;
  "Iris")
    icon_result=":iris:"
    ;;
  "Tower")
    icon_result=":tower:"
    ;;
  "Jellyfin Media Player")
    icon_result=":jellyfin:"
    ;;
  "Code" | "Code - Insiders")
    icon_result="󰨞"
    ;;
  "Linear")
    icon_result=":linear:"
    ;;
  "Live")
    icon_result=":ableton:"
    ;;
  "Parallels Desktop")
    icon_result="󰣇"
    ;;
  "Final Cut Pro")
    icon_result=":final_cut_pro:"
    ;;
  "Chromium" | "Google Chrome" | "Google Chrome Canary")
    icon_result="󰊯"
    ;;
  "GitHub Desktop")
    icon_result=":git_hub:"
    ;;
  "Firefox")
    icon_result="󰈹"
    ;;
  "Slack")
    icon_result="󰒱"
    ;;
  "Spotify")
    icon_result=""
    ;;
  "Neovide" | "MacVim" | "Vim" | "VimR")
    icon_result=""
    ;;
  "KeePassXC")
    icon_result=":kee_pass_x_c:"
    ;;
  "PomoDone App")
    icon_result=":pomodone:"
    ;;
  "DEVONthink 3")
    icon_result=":devonthink3:"
    ;;
  "Color Picker" | "数码测色计")
    icon_result=":color_picker:"
    ;;
  "Tweetbot" | "Twitter")
    icon_result=":twitter:"
    ;;
  "Default")
    icon_result="󰀶"
    ;;
  "Pages" | "Pages 文稿")
    icon_result="󰠮"
    ;;
  "Emacs")
    icon_result=":emacs:"
    ;;
  "MAMP" | "MAMP PRO")
    icon_result=":mamp:"
    ;;
  "Canary Mail" | "HEY" | "Mail" | "Mailspring" | "MailMate" | "邮件")
    icon_result=":mail:"
    ;;
  "WebStorm")
    icon_result=":web_storm:"
    ;;
  "TickTick")
    icon_result=":tick_tick:"
    ;;
  "TIDAL")
    icon_result=":tidal:"
    ;;
  "VLC")
    icon_result=":vlc:"
    ;;
  "Blender")
    icon_result=":blender:"
    ;;
  "Music" | "音乐")
    icon_result=":music:"
    ;;
  "Calendar" | "日历" | "Fantastical" | "Cron" | "Amie")
    icon_result=""
    ;;
  "Evernote Legacy")
    icon_result=":evernote_legacy:"
    ;;
  "Microsoft Word")
    icon_result="󱎒"
    ;;
  "Safari" | "Safari浏览器" | "Safari Technology Preview")
    icon_result="󰀹"
    ;;
  "MoneyMoney")
    icon_result=":bank:"
    ;;
  "Xcode")
    icon_result="󰣪"
    ;;
  "Numbers" | "Numbers 表格")
    icon_result=""
    ;;
  "ClickUp")
    icon_result=":click_up:"
    ;;
  "Arc")
    icon_result=":arc:"
    ;;
  "Zeplin")
    icon_result=":zeplin:"
    ;;
  "Trello")
    icon_result=":trello:"
    ;;
  "Vivaldi")
    icon_result=":vivaldi:"
    ;;
  "Calibre")
    icon_result=":book:"
    ;;
  "Min")
    icon_result=":min_browser:"
    ;;
  "网易云音乐")
    icon_result=":netease_music:"
    ;;
  "GrandTotal" | "Receipts")
    icon_result=":dollar:"
    ;;
  "zoom.us")
    icon_result=":zoom:"
    ;;
  "Folx")
    icon_result="󰨈"
    ;;
  "微信")
    icon_result=":wechat:"
    ;;
  "Orion" | "Orion RC")
    icon_result=":orion:"
    ;;
  "Notability")
    icon_result=":notability:"
    ;;
  "Todoist")
    icon_result=":todoist:"
    ;;
  "Replit")
    icon_result=":replit:"
    ;;
  "Tor Browser")
    icon_result=":tor_browser:"
    ;;
  "Drafts")
    icon_result=":drafts:"
    ;;
  "Preview" | "预览" | "Skim" | "zathura")
    icon_result=""
    ;;
  "PyCharm")
    icon_result=":pycharm:"
    ;;
  "Audacity")
    icon_result=":audacity:"
    ;;
  "Cypress")
    icon_result=":cypress:"
    ;;
  "VSCodium")
    icon_result=":vscodium:"
    ;;
  "Podcasts" | "播客")
    icon_result=":podcasts:"
    ;;
  "DingTalk" | "钉钉" | "阿里钉")
    icon_result=":dingtalk:"
    ;;
  "OBS")
    icon_result="󰑋"
    ;;
  "Firefox Developer Edition" | "Firefox Nightly")
    icon_result=":firefox_developer_edition:"
    ;;
  "Alfred")
    icon_result=":alfred:"
    ;;
  "OmniFocus")
    icon_result=":omni_focus:"
    ;;
  "Skype")
    icon_result=":skype:"
    ;;
  "Spark Desktop")
    icon_result=":spark:"
    ;;
  "Docker" | "Docker Desktop")
    icon_result=":docker:"
    ;;
  "Signal")
    icon_result=":signal:"
    ;;
  "Pine")
    icon_result=":pine:"
    ;;
  "Insomnia")
    icon_result=":insomnia:"
    ;;
  "Microsoft Edge")
    icon_result=":microsoft_edge:"
    ;;
  "Affinity Photo")
    icon_result=":affinity_photo:"
    ;;
  "Sketch")
    icon_result=":sketch:"
    ;;
  "Android Studio")
    icon_result=":android_studio:"
    ;;
  "Bitwarden")
    icon_result=":bit_warden:"
    ;;
  "Affinity Publisher")
    icon_result=":affinity_publisher:"
    ;;
  "Zotero")
    icon_result=":zotero:"
    ;;
  "Sublime Text")
    icon_result=":sublime_text:"
    ;;
  "Warp")
    icon_result=":warp:"
    ;;
  "Messages" | "信息" | "Nachrichten")
    icon_result=""
    ;;
  "Obsidian")
    icon_result=":obsidian:"
    ;;
  "IntelliJ IDEA")
    icon_result=":idea:"
    ;;
  "Atom")
    icon_result=":atom:"
    ;;
  "FaceTime" | "FaceTime 通话")
    icon_result=""
    ;;
  "Yuque" | "语雀")
    icon_result=":yuque:"
    ;;
  "Grammarly Editor")
    icon_result=":grammarly:"
    ;;
  "Mattermost")
    icon_result=":mattermost:"
    ;;
  "Affinity Designer")
    icon_result=":affinity_designer:"
    ;;
  "mpv")
    icon_result=":mpv:"
    ;;
  "Thunderbird")
    icon_result=":thunderbird:"
    ;;
  "Airmail")
    icon_result=":airmail:"
    ;;
  "Microsoft Teams")
    icon_result=":microsoft_teams:"
    ;;
  "Bear")
    icon_result=":bear:"
    ;;
  "System Preferences" | "System Settings" | "系统设置")
    icon_result=""
    ;;
  "Nova")
    icon_result=":nova:"
    ;;
  "WhatsApp")
    icon_result=":whats_app:"
    ;;
  "Adobe Photoshop 2024")
    icon_result=""
    ;;
  "Adobe Illustrator 2025")
    icon_result=""
    ;;
  "Adobe Premiere Pro 2024")
    icon_result=""
    ;;
  "Wake Up Time")
    icon_result="󰀠"
    ;;
  "term:vim" | "term:nvim")
    icon_result=""
    ;;
  "term:tmux")
    icon_result=""
    ;;
  "term:-zsh")
    icon_result=""
    ;;
  "term:"*)
    icon_result=""
    ;;
  *)
    icon_result="󰀶"
    ;;
  esac
}

icon_map "$1"

echo "$icon_result"