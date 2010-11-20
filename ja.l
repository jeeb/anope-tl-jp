# Japanese language file.
#
# (C) 2003-2009 Anope Team
# Contact us at team@anope.org
#   
# Please read COPYING and README for further details.
#     
# Based on the original code of Epona by Lara.
# Based on the original code of Services by Andy Church. 
#
# When translating this file to another language, keep in mind that the
# order of parameters for sprintf() is fixed in the source code, so your
# messages need to take the same parameters in the same order as the
# English messages do.  (Obviously, this doesn't hold for the strftime()
# format lines immediately below.)  If you can't get a natural translation
# of a message without changing the order of the parameters, let us know
# (team@anope.org) which message is causing a problem and I'll see
# what I can do.
#
# In help messages, "%S" (capital S, not lowercase) refers to the name of
# the service sending the message; for example, in NickServ help messages,
# "%S" is replaced by "NickServ" (or whatever it is renamed to in
# services.conf).  The %S's do not count as sprintf() parameters, so they can be
# rearranged, removed, or added as necessary.
#
# Also in help messages, please try to limit line lengths to 60 characters
# of text (not including the leading tab).  This length was chosen because
# it does not cause line wrap under default settings on most current IRC
# clients.  Remember that format characters (control-B, control-_) are not
# included in that 60-character limit (since they don't show on the user's
# screen).  Also remember that format specifiers (%S, etc.) will expand
# when displayed, so remember to take this into account; you can assume
# that the length of a pseudoclient name (%S replacement) will be eight
# characters, so reduce the maximum line length by 6 for every %S on a
# line.
#
# Finally, remember to put a tab at the beginning of every line of text
# (including empty lines).  This has to be a tab, not spaces.

###########################################################################
#
# Name of this language
#
###########################################################################

# For languages other than English, this string should have the following
# format:
#     language-name-in-language (language-name-in-English)
# For example, "Español (Spanish)" or "Français (French)".

LANG_NAME
	日本語 (Japanese)

###########################################################################
#
# General messages
#
###########################################################################

# strftime() format strings.  man 3 strftime for information on the
# meanings of the format specifiers.  Short version:
#	%a = weekday name (short)	%H = hour
#	%b = month name (short)		%M = minute
#	%d = day of month		%S = second
#	%Y = year			%Z = time zone

# This is used as the format string for strftime() for a date and time
# together.
STRFTIME_DATE_TIME_FORMAT
#	%b %d %H:%M:%S %Y %Z
	%Y年%b月%d日(%a) %H時%M分%S秒 %Z
# This is used as the format string for strftime() for a date alone in long
# format (English: including weekday).
STRFTIME_LONG_DATE_FORMAT
#	%a %b %d %Y
	%Y年%b月%d日(%a)
# This is used as the format string for strftime() for a date alone in
# short format (English: without weekday).
STRFTIME_SHORT_DATE_FORMAT
#	%b %d %Y
	%Y/%b/%d

# These tell our strftime() what the names of months and days are.  If you
# don't use %a, %A, %b, or %B in your strftime() strings above, you can
# leave these empty.  However, if you enter names, they MUST stay in order,
# one per line, and the list MUST be complete!

# %a
STRFTIME_DAYS_SHORT
#	Sun
	日
#	Mon
	月
#	Tue
	火
#	Wed
	水
#	Thu
	木
#	Fri
	金
#	Sat
	土
# %A
STRFTIME_DAYS_LONG
#	Sunday
	日曜日
#	Monday
	月曜日
#	Tuesday
	火曜日
#	Wednesday
	水曜日
#	Thursday
	木曜日
#	Friday
	金曜日
#	Saturday
	土曜日
# %b
STRFTIME_MONTHS_SHORT
#	Jan
	1
#	Feb
	2
#	Mar
	3
#	Apr
	4
#	May
	5
#	Jun
	6
#	Jul
	7
#	Aug
	8
#	Sep
	9
#	Oct
	10
#	Nov
	11
#	Dec
	12
# %B
STRFTIME_MONTHS_LONG
#	January
	1月
#	February
	2月
#	March
	3月
#	April
	4月
#	May
	5月
#	June
	6月
#	July
	7月
#	August
	8月
#	September
	9月
#	October
	10月
#	November
	11月
#	December
	12月


# This is used in ChanServ/NickServ INFO displays.
COMMA_SPACE
	, 


# Various error messages.
# さまざまなエラーメッセージ。
USER_RECORD_NOT_FOUND
#	Internal error - unable to process request.
	内部エラー - リクエスト処理不能。
UNKNOWN_COMMAND
#	Unknown command %s.
	不明なコマンド: %s。
UNKNOWN_COMMAND_HELP
#	Unknown command %s.  "%R%s HELP" for help.
	不明なコマンド: %s。  "%R%s HELP" としてヘルプを参照して下さい。
SYNTAX_ERROR
#	Syntax: %s
	構文: %s
MORE_INFO
#	%R%s HELP %s for more information.
	%R%s HELP %s として詳細な情報を得てください。
NO_HELP_AVAILABLE
#	No help available for %s.
	%s についてのヘルプは存在しません。
OBSOLETE_COMMAND
#	This command is obsolete; use %s instead.
	このコマンドは廃止されました。代わりに %s をお使いください。

BAD_USERHOST_MASK
#	Mask must be in the form user@host.
	マスクは user@host の形式でなければなりません。
BAD_EXPIRY_TIME
#	Invalid expiry time.
	無効な失効期限です。
USERHOST_MASK_TOO_WIDE
#	%s coverage is too wide; Please use a more specific mask.
	%s の範囲は広すぎます。もっと具体的なマスクを使用してください。

SERVICE_OFFLINE
#	%s is currently offline.
	%s は現在オフラインです。
READ_ONLY_MODE
#	Notice: Services is in read-only mode; changes will not be saved!
	通知: サービスは現在読み込み専用モードです。変更は保存されません！
PASSWORD_INCORRECT
#	Password incorrect.
	パスワードが間違っています。
INVALID_TARGET
#	"/msg %s" is no longer supported.  Use "/msg %s@%s" or "/%s" instead.
	"/msg %s" はもうサポートされません。代わりに "/msg %s@%s" または "/%s" を使用してください。

# What's the difference between "Access denied" and "Permission denied"?
# Very little; you can safely make them the same message with no real loss
# of meaning.  If you want to make a distinction, "Access denied" is
# usually used more generally; for example, a non-oper trying to access
# OperServ gets "Access denied", while a non-Services admin trying to use
# NickServ SASET NOEXPIRE gets "Permission denied".
#
# "Access denied"（アクセス否認） と "Permission denied"（許可否認） の違いはなんでしょうか？
# 非常に小さなことです、意味の損失なく安全に同じメッセージとみなすことができます。
# 区別するならば、"Access denied"（アクセス否認）はより一般的に用いられるものです、
# 例えば、非運営者が OperServ とアクセスすると"Access denied"が得られます、
# 一方、非サービス管理者が NickServ SASET NOEXPIRE を使おうとすると
# "Permission denied" が得られます。
ACCESS_DENIED
#	Access denied.
	アクセス否認。
PERMISSION_DENIED
#	Permission denied.
	許可否認。
RAW_DISABLED
#	The RAW option has been disabled. If you must use it, configure the DisableRaw directive in Services configuration.
	RAWオプションは無効にされています。もし使う必要があるならば、サービス設定の DisableRaw 指示文を設定してください。

MORE_OBSCURE_PASSWORD
#	Please try again with a more obscure password.  Passwords should be at least five characters long, should not be something easily guessed (e.g. your real name or your nick), and cannot contain the space or tab characters.
PASSWORD_TOO_LONG
	もっと分かり難いパスワードで再度お試しください。パスワードは少なくとも5文字の長さで、簡単に推測できるもの（例：あなたの本名やニックネーム）にすることなく、空白やタブ文字を含まないようにもしてください。
	Your password is too long. Please try again with a shorter password.

NICK_NOT_REGISTERED
#	Your nick isn't registered.
	あなたのニックネームは未登録です。
NICK_NOT_REGISTERED_HELP
#	Your nick isn't registered.  Type %R%s HELP for information on registering your nickname.
	あなたのニックネームは未登録です。ニックネームの登録については %R%s HELP と入力して情報を得てください。
NICK_X_IS_SERVICES
#	Nick %s is part of this Network's Services.
	%s のニックネームはこのネットワークサービスの一部です。
NICK_X_NOT_REGISTERED
#	Nick %s isn't registered.
	%s のニックネームは未登録です。
NICK_X_IN_USE
#	Nick %s is currently in use.
	%s のニックネームは使用中です。
NICK_X_NOT_IN_USE
#	Nick %s isn't currently in use.
	%s のニックネームは使用中ではありません。
NICK_X_NOT_ON_CHAN
#	%s is not currently on channel %s.
	%s はチャンネル %s では使われていません。
NICK_X_FORBIDDEN
#	Nick %s may not be registered or used.
	%s のニックネームはおそらく登録も使用もされていません。
NICK_X_FORBIDDEN_OPER
#	Nick %s has been forbidden by %s:
#	%s
	%s のニックネームは %s によって禁止されています:
	%s
NICK_X_ILLEGAL
#	Nick %s is an illegal nickname and cannot be used.
	%s のニックネームは不法ニックネームであり使うことはできません。
NICK_X_TRUNCATED
#	Nick %s was truncated to %d characters.
	%s のニックネームは%d文字に切り詰められました。
NICK_X_SUSPENDED
#	Nick %s is currently suspended.
	%s のニックネームは現在保留されています。
CHAN_X_NOT_REGISTERED
#	Channel %s isn't registered.
	%s のチャンネルは未登録です。
CHAN_X_NOT_IN_USE
#	Channel %s doesn't exist.
	%s のチャンネルは存在しません。
CHAN_X_FORBIDDEN
#	Channel %s may not be registered or used.
	%s のチャンネルはおそらく登録も使用もされていません。
CHAN_X_FORBIDDEN_OPER
#	Channel %s has been forbidden by %s:
#	%s
	%s のチャンネルは %s によって禁止されています:
	%s
CHAN_X_SUSPENDED
#	      Suspended: [%s] %s
	      保留: [%s] %s
NICK_IDENTIFY_REQUIRED
#	Password authentication required for that command.
#	Retry after typing %R%s IDENTIFY password.
	このコマンドはパスワード認証が必要です。
	%R%s IDENTIFY password と入力してからやり直してください。
CHAN_IDENTIFY_REQUIRED
#	Password authentication required for that command.
#	Retry after typing %R%s IDENTIFY %s password.
	このコマンドはパスワード認証が必要です。
	%R%s IDENTIFY %s password と入力してからやり直してください。
	
MAIL_DISABLED
#	Services have been configured to not send mail.
	サービスは現在メール送信できないよう設定されています。
MAIL_INVALID
#	E-mail for %s is invalid.
	%s への電子メールは無効です。
MAIL_X_INVALID
#	%s is not a valid e-mail address.
	%s は無効な電子メールアドレスです。
MAIL_LATER
#	Cannot send mail now; please retry a little later.
	現在メール送信できません。もう少し後にまたやり直してください。
MAIL_DELAYED
#	Please wait %d seconds and retry.
	%d秒待ってからやり直してください。
	
NO_REASON
#	No reason
	理由なし
UNKNOWN
#	<unknown>
	<不明>

# Duration system
DURATION_DAY
#	1 day
	1日間
DURATION_DAYS
#	%d days
	%d日間
DURATION_HOUR
#	1 hour
	1時間
DURATION_HOURS
#	%d hours
	%d時間
DURATION_MINUTE
#	1 minute
	1分間
DURATION_MINUTES
#	%d minutes
	%d分間
DURATION_SECOND
#	1 second
	1秒間
DURATION_SECONDS
#	%d seconds
	%d秒間

# Human readable expiration
NO_EXPIRE
#	does not expire
	失効しない
EXPIRES_SOON
#	expires at next database update
	次回のデータベース更新にて失効
EXPIRES_M
#	expires in %d minutes
	あと%d分で失効
EXPIRES_1M
#	expires in %d minute
	あと%d分で失効
EXPIRES_HM
#	expires in %d hours, %d minutes
	あと%d時間%d分で失効
EXPIRES_H1M
#	expires in %d hours, %d minute
	あと%d時間%d分で失効
EXPIRES_1HM
#	expires in %d hour, %d minutes
	あと%d時間%d分で失効
EXPIRES_1H1M
#	expires in %d hour, %d minute
	あと%d時間%d分で失効
EXPIRES_D
#	expires in %d days
	あと%d日で失効
EXPIRES_1D
#	expires in %d day
	あと%d日で失効

# Generic Footer message
END_OF_ANY_LIST
#	End of %s list.
	%s リスト終端.

# Generic List error messages
LIST_INCORRECT_RANGE
#	Incorrect range specified. The correct syntax is #from-to.
	無効な範囲が指定されました。正しい構文は #from-to の形です。
CS_LIST_INCORRECT_RANGE
#	To search for channels starting with #, search for the channel
#	name without the #-sign prepended (anope instead of #anope).
	#から始まるチャンネルを検索するには、#を前置しないでください。
	(つまり、#anope の代わりに anope のように指定してください。)

# Generic help limited to messages
HELP_LIMIT_SERV_OPER
	
#	Limited to Services Operators.
	サービスオペレーター の権限が必要です。
HELP_LIMIT_SERV_ADMIN
	
#	Limited to Services Administrators.
	サービス管理者 の権限が必要です。
HELP_LIMIT_SERV_ROOT
	
#	Limited to Services Roots.
	サービスルート の権限が必要です。
HELP_LIMIT_IRC_OPER
	
#	Limited to IRC Operators.
	IRC オペレーター の権限が必要です。
HELP_LIMIT_HOST_SETTER
	
#	Limited to Host Setters.
	Host Setters の権限が必要です。
HELP_LIMIT_HOST_REMOVER
	
#	Limited to Host Removers.
	Host Removers の権限が必要です。


###########################################################################
#
# NickServ messages
# NickServ メッセージ
#
###########################################################################

# Automatic messages
# 自動メッセージ
NICK_IS_REGISTERED
#	This nick is owned by someone else.  Please choose another.
#	(If this is your nick, type %R%s IDENTIFY password.)
	このニックネームは既に登録されています。ほかのニックネームにしてください。
	（もしこのニックネームはあなた自身のものなら %R%s IDENTIFY password と入力してください。)
NICK_IS_SECURE
#	This nickname is registered and protected.  If it is your
#	nick, type %R%s IDENTIFY password.  Otherwise,
#	please choose a different nick.
	このニックネームはほかのユーザーに登録されていて保護されています。
	もしこれはあなた自身のニックネームなら %R%s IDENTIFY password と入力してくさだい。
	そうでない場合はほかのニックネームにしてください。
NICK_MAY_NOT_BE_USED
#	This nickname may not be used.  Please choose another one.
	指定されたニックネームはお使いになれません。ほかのニックネームにしてください。
FORCENICKCHANGE_IN_1_MINUTE
#	If you do not change within one minute, I will change your nick.
	1分以内にニックネームを変更しない場合、あなたのニックネームは自動的に変更されます。
FORCENICKCHANGE_IN_20_SECONDS
#	If you do not change within 20 seconds, I will change your nick.
	20秒以内にニックネームを変更しない場合、あなたのニックネームは自動的に変更されます。
FORCENICKCHANGE_NOW
#	This nickname has been registered; you may not use it.
	このニックネームは既に使用されています。
FORCENICKCHANGE_CHANGING
#	Your nickname is now being changed to %s
	あなたのニックネームは %s に変更されます。

# REGISTER responses
NICK_REGISTER_SYNTAX
#	REGISTER password [email]
	REGISTER パスワード [メールアドレス]
NICK_REGISTER_SYNTAX_EMAIL
#	REGISTER password email
	REGISTER パスワード メールアドレス
NICK_REGISTRATION_DISABLED
#	Sorry, nickname registration is temporarily disabled.
	ご迷惑をおかけしますが、現在ニックネームの登録サービスは一時的に停止させて頂いております。
NICK_REGISTRATION_FAILED
#	Sorry, registration failed.
	ご迷惑をおかけしますが、ニックネームの登録に失敗しました。
NICK_REG_PLEASE_WAIT
#	Please wait %d seconds before using the REGISTER command again.
	REGISTERコマンドを再度使う前に%d秒待って頂かなければなりません。
NICK_CANNOT_BE_REGISTERED
#	Nickname %s may not be registered.
	%s というニックネームはお使いになれません。
NICK_ALREADY_REGISTERED
#	Nickname %s is already registered!
	%sというニックネームは既に登録されています。
NICK_REGISTERED
#	Nickname %s registered under your account: %s
	%s というニックネームは%sのアカウントに登録されています。
NICK_REGISTERED_NO_MASK
#	Nickname %s registered.
	%sというニックネームは既に登録されています。
NICK_PASSWORD_IS
#	Your password is %s - remember this for later use.
	あなたのパスワードは %s に設定されています。覚えておいてください。
NICK_REG_DELAY
#	You must have been using this nick for at least %d seconds to register.
	ニックネームを登録するには、最低%d秒間そのニックネームを使わなければなりません。

# GROUP responses
NICK_GROUP_SYNTAX
#	GROUP target password
	GROUP 対象ニックネーム パスワード
NICK_GROUP_DISABLED
#	Sorry, nickname grouping is temporarily disabled.
	ご迷惑おかけしますが、ニックネームのグループまとめサービスは一時的に停止させて頂いております。
NICK_GROUP_FAILED
#	Sorry, grouping failed.
	グループ登録に失敗しました。
NICK_GROUP_PLEASE_WAIT
#	Please wait %d seconds before using the GROUP command again.
	再度GROUPコマンドを使うには%d秒間待っていただく必要があります。
NICK_GROUP_CHANGE_DISABLED
#	Your nick is already registered; type %R%s DROP first.
	指定されたニックネームは既に登録されています。まず、%R%s DROPと入力して登録の解除を行ってください。
NICK_GROUP_SAME
#	You are already a member of the group of %s.
	あなたは既に%sというグループに入っています。
NICK_GROUP_TOO_MANY
#	There are too many nicks in %s's group; list them and drop some.
#	Type %R%s HELP GLIST and %R%s HELP DROP
#	for more information.
	登録数の上限に達したため、グループ名 %s　にニックネームを登録できません。
	登録済みのニックネームから不要なものを削除してください。
	%R%s HELP GLIST と %R%s HELP DROP　というコマンドを入力することで詳しい説明を読むことが出来ます。
NICK_GROUP_JOINED
#	You are now in the group of %s.
	%sというグループのメンバーになりました。

# IDENTIFY responses
NICK_IDENTIFY_SYNTAX
#	IDENTIFY password
	IDENTIFY パスワード
NICK_IDENTIFY_FAILED
#	Sorry, identification failed.
	認証に失敗しました。
NICK_IDENTIFY_SUCCEEDED
#	Password accepted - you are now recognized.
	パスワードは承認されました。あなたは認証されています。
NICK_IDENTIFY_EMAIL_REQUIRED
#	You must now supply an e-mail for your nick.
#	This e-mail will allow you to retrieve your password in
#	case you forget it.
	パスワードを忘れた際にパスワードの再発行を行うための連絡先として電子メールアドレスを入力して頂きます。
NICK_IDENTIFY_EMAIL_HOWTO
#	Type %R%S SET EMAIL e-mail in order to set your e-mail.
#	Your privacy is respected; this e-mail won't be given to
#	any third-party person.
	あなたの電子メールアドレスを設定するには %R%S SET EMAIL e-mail と入力してください。
	このアドレスは個人情報として扱われて、第三者に渡すことはありません。
NICK_ALREADY_IDENTIFIED
#	You are already identified.
	あなたの身分は既に認識されています。

# UPDATE responses
NICK_UPDATE_SUCCESS
#	Status updated (memos, vhost, chmodes, flags).
	memo,vhost,chmode,flagの設定を更新しました。
	
# LOGOUT responses
NICK_LOGOUT_SYNTAX
	LOGOUT
NICK_LOGOUT_SUCCEEDED
#	Your nick has been logged out.
	ニックネームはログアウトされました。
NICK_LOGOUT_X_SUCCEEDED
#	Nick %s has been logged out.
	ニックネーム %s はログアウトされました。
NICK_LOGOUT_SERVICESADMIN
#	Can't logout %s because he's a services administrator.
	%s は管理者なので、ログアウトさせることは出来ません。

# DROP responses
# DROP(ニックネーム登録解除）についての応答
NICK_DROP_DISABLED
#	Sorry, nickname de-registration is temporarily disabled.
	ご迷惑をおかけしますが、ニックネームの登録解除サービスは一時的に停止させていただいております。
NICK_DROPPED
#	Your nickname has been dropped.
	ニックネームの登録は解除されました。
NICK_X_DROPPED
#	Nickname %s has been dropped.
	ニックネーム %s の登録は解除されました。

# SET responses
# SET (ニックネームの設定）についての応答
NICK_SET_SYNTAX
#	SET option parameters
	SET 設定項目 パラメータ
NICK_SET_SERVADMIN_SYNTAX
#	SET [nick] option parameters
	SET [ニックネーム] オプション パラメータ
NICK_SET_DISABLED
#	Sorry, nickname option setting is temporarily disabled.
	ご迷惑をおかけしますが、ニックネームオプションの設定は一時無効にされます。
NICK_SET_UNKNOWN_OPTION
#	Unknown SET option %s.
	%s は不明な SET オプションです。
NICK_SET_OPTION_DISABLED
#	Option %s cannot be set on this network.
	%s オプションは、このネットワークに設定できません。

# SET DISPLAY responses
NICK_SET_DISPLAY_INVALID
#	The new display MUST be a nickname of your nickname group!
	新しいディスプレー名はグループ内にあるニックネームである必要があります。#（ディスプレー名はグループを代表するニックネーム）
	
NICK_SET_DISPLAY_CHANGED
#	The new display is now %s.
	ディスプレー名は %s に変更されました。

# SET PASSWORD responses
NICK_SET_PASSWORD_FAILED
#	Sorry, couldn't change password.
	パスワードの変更に失敗しました。
NICK_SET_PASSWORD_CHANGED
#	Password changed.
	パスワードを変更しました。
NICK_SET_PASSWORD_CHANGED_TO
#	Password changed to %s.
	パスワードを %s に変更しました。

# SET LANGUAGE responses
NICK_SET_LANGUAGE_SYNTAX
#	SET LANGUAGE number
	SET LANGUAGE 言語番号
NICK_SET_LANGUAGE_UNKNOWN
#	Unknown language number %d.  Type %R%s HELP SET LANGUAGE for a list of languages.
	未知の言語番号 %d を指定しました。言語の一覧を見るには %R%s HELP SET LANGUAGE と入力してください。
NICK_SET_LANGUAGE_CHANGED
#	Language changed to English.
	言語を 日本語 に切り替えました。

# SET URL responses
NICK_SET_URL_CHANGED
#	URL changed to %s.
	URLを %s に変更しました。
NICK_SET_URL_UNSET
#	URL unset.
	URL 設定を外しました。

# SET EMAIL responses
NICK_SET_EMAIL_CHANGED
#	E-mail address changed to %s.
	電子メール・アドレスを %s に変更しました。
NICK_SET_EMAIL_UNSET
#	E-mail address unset.
	電子メール・アドレスの設定を外しました。
NICK_SET_EMAIL_UNSET_IMPOSSIBLE
#	You cannot unset the e-mail on this network.
	本ネットワークでは電子メールの設定を外すことは出来ません。
	
# SET ICQ responses
NICK_SET_ICQ_CHANGED
#	ICQ number set to %s.
	ICQ番号を %s に変更しました。
NICK_SET_ICQ_UNSET
#	ICQ number unset.
	ICQ番号の設定を外しました。
NICK_SET_ICQ_INVALID
#	%s is not a valid number.
	%s は有効なICQ番号ではありません。
	
# SET GREET responses
NICK_SET_GREET_CHANGED
#	Greet message changed to %s.
	挨拶メッセージを %s に変更しました。
NICK_SET_GREET_UNSET
#	Greet message unset.
	挨拶メッセージの設定を外しました。

# SET PROTECT responses
NICK_SET_KILL_SYNTAX
	SET KILL {ON | QUICK | OFF}
NICK_SET_KILL_IMMED_SYNTAX
	SET KILL {ON | QUICK | IMMED | OFF}
NICK_SET_KILL_ON
#	Protection is now ON.
	ニックネーム保護を有効(ON)にしました。
NICK_SET_KILL_QUICK
#	Protection is now ON, with a reduced delay.
	ニックネーム保護を短期限つきで有効(ON)にしました。
NICK_SET_KILL_IMMED
#	Protection is now ON, with no delay.
	ニックネーム保護を期限なしで有効(ON)にしました。
NICK_SET_KILL_IMMED_DISABLED
#	The IMMED option is not available on this network.
	このネットワークでは、IMMEDの設定は無効にされています。
NICK_SET_KILL_OFF
#	Protection is now OFF.
	ニックネーム保護を無効(OFF)にしました。

# SET SECURE responses
NICK_SET_SECURE_SYNTAX
	SET SECURE {ON | OFF}
NICK_SET_SECURE_ON
#	Secure option is now ON.
	ニックネームセキュリティー機能を有効(ON)にしました。
NICK_SET_SECURE_OFF
#	Secure option is now OFF.
	ニックネームセキュリティー機能を無効(OFF)にしました。

# SET PRIVATE responses
NICK_SET_PRIVATE_SYNTAX
	SET PRIVATE {ON | OFF}
NICK_SET_PRIVATE_ON
#	Private option is now ON.
	プライバシー機能を有効(ON)にしました。
NICK_SET_PRIVATE_OFF
#	Private option is now OFF.
	プライバシー機能を無効(OFF)にしました。

# SET HIDE responses
NICK_SET_HIDE_SYNTAX
	SET HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
NICK_SET_HIDE_EMAIL_ON
#	Your E-mail address will now be hidden from %s INFO displays.
	あなたの電子メール・アドレスは %s INFO コマンドで表示しないように設定されました。
NICK_SET_HIDE_EMAIL_OFF
#	Your E-mail address will now be shown in %s INFO displays.
	あなたの電子メール・アドレスは %s INFO コマンドで表示するように設定されました。
NICK_SET_HIDE_MASK_ON
#	Your last seen user@host mask will now be hidden from %s INFO displays.
	あなたのホスト・マスクは %s INFO コマンドで表示しないように設定されました。
NICK_SET_HIDE_MASK_OFF
#	Your last seen user@host mask will now be shown in %s INFO displays.
	あなたのホスト・マスクは %s INFO コマンドで表示するように設定されました。
NICK_SET_HIDE_QUIT_ON
#	Your last quit message will now be hidden from %s INFO displays.
	最も最近IRCを終了した時の終了メッセージは %s INFO コマンドで表示するように設定されました。
NICK_SET_HIDE_QUIT_OFF
#	Your last quit message will now be shown in %s INFO displays.
	最も最近IRCを終了した時の終了メッセージは %s INFO コマンドで表示するように設定されました。
NICK_SET_HIDE_STATUS_ON
	Your services access status will now be hidden from %s INFO displays.
NICK_SET_HIDE_STATUS_OFF
	Your services access status will now be shown in %s INFO displays.
	
# SET MSG responses
NICK_SET_MSG_SYNTAX
	SET MSG {ON | OFF}
NICK_SET_MSG_ON
#	Services will now reply to you with messages.
	これから各サービスは連絡手段としてメッセージを使います。
NICK_SET_MSG_OFF
#	Services will now reply to you with notices.
	これから各サービスは連絡手段として告知を使います。

# SET AUTOOP responses
NICK_SET_AUTOOP_SYNTAX
	SET AUTOOP {ON | OFF}
NICK_SET_AUTOOP_ON
#	Services will now autoop you in channels.
	サービスは自動的に管理者権を与えるように設定しました。
NICK_SET_AUTOOP_OFF
#	Services will no longer autoop you in channels.
	サービスは自動的に管理者権を与えないように設定しました。

# SASET responses
NICK_SASET_SYNTAX
#	SASET nickname option parameters
	SASET ニックネーム オプション パラメータ
NICK_SASET_DISABLED
#	Sorry, nickname option setting is temporarily disabled.
	ご迷惑をお掛けします。ニックネームオプションは一時的に無効になります。
NICK_SASET_UNKNOWN_OPTION
#	Unknown SASET option %s.
	%s は不明な SASET オプションです。
NICK_SASET_BAD_NICK
#	Nickname %s not registered.
	ニックネーム %s は、登録されませんでした。
NICK_SASET_OPTION_DISABLED
#	Option %s cannot be set on this network.
	%s オプションはこのネットワークには設定できません。
	
# SASET DISPLAY responses
NICK_SASET_DISPLAY_INVALID
#	The new display for %s MUST be a nickname of the nickname group!
	%sの新しいディスプレー名はグループ内にあるニックネームである必要があります。
NICK_SASET_DISPLAY_CHANGED
#	The new display is now %s.
	ディスプレー名は %s に変更されました。

# SASET PASSWORD responses
NICK_SASET_PASSWORD_FAILED
#	Sorry, couldn't change password for %s.
	ご迷惑をお掛けします。%s のパスワードを変更することは出来ませんでした。
NICK_SASET_PASSWORD_CHANGED
#	Password for %s changed.
	%s のパスワードが変更されました。
NICK_SASET_PASSWORD_CHANGED_TO
#	Password for %s changed to %s.
	%s のパスワードは　%s　に変更されました。
	
# SASET URL responses
NICK_SASET_URL_CHANGED
#	URL for %s changed to %s.
	%s のURLは　%s に変更されました。
NICK_SASET_URL_UNSET
#	URL %s unset.
	URL %s を解除しました。

# SASET EMAIL responses
NICK_SASET_EMAIL_CHANGED
#	E-mail address for %s changed to %s.
	%s のメールアドレスは %s に変更されました。
NICK_SASET_EMAIL_UNSET
#	E-mail address for %s unset.
	%s のメールアドレスは解除されました。
NICK_SASET_EMAIL_UNSET_IMPOSSIBLE
#	You cannot unset the e-mail on this network.
	あなたはこのネットワークではメールアドレスを解除することは出来ません。
	
# SASET ICQ responses
NICK_SASET_ICQ_CHANGED
#	ICQ number for %s set to %s.
	%s のICQナンバーは %s に設定されました。
NICK_SASET_ICQ_UNSET
#	ICQ number for %s unset.
	%s のICQナンバーは解除されました。
NICK_SASET_ICQ_INVALID
#	%s is not a valid number.
	%s は有効な値ではありません。
	
# SASET GREET responses
NICK_SASET_GREET_CHANGED
#	Greet message for %s changed to %s.
	%s のグリートメッセージは %s に変更されました。
NICK_SASET_GREET_UNSET
#	Greet message for %s unset.
	%s のグリートメッセージは解除されました。

# SASET PROTECT responses
NICK_SASET_KILL_SYNTAX
#	SASET nickname KILL {ON | QUICK | OFF}
	SASET ニックネーム KILL {ON | QUICK | OFF}
NICK_SASET_KILL_IMMED_SYNTAX
#	SASET nickname KILL {ON | QUICK | IMMED | OFF}
	SASET ニックネーム KILL {ON | QUICK | IMMED | OFF}
NICK_SASET_KILL_ON
#	Protection is now ON for %s.
	現在 %s への保護は ON　になっています。
NICK_SASET_KILL_QUICK
#	Protection is now ON for %s, with a reduced delay.
	現在 %s への保護と、遅延の緩和が ON　になっています。
NICK_SASET_KILL_IMMED
#	Protection is now ON for %s, with no delay.
	現在 %s への保護と、遅延なしが ON　になっています。
NICK_SASET_KILL_IMMED_DISABLED
#	The IMMED option is not available on this network.
	このネットワークでは IMMED オプションを利用することは出来ません。
NICK_SASET_KILL_OFF
#	Protection is now OFF for %s.
	現在 %s への保護は OFF になっています。

# SASET SECURE responses
NICK_SASET_SECURE_SYNTAX
#	SASET nickname SECURE {ON | OFF}
	SASET ニックネーム SECURE {ON | OFF}
NICK_SASET_SECURE_ON
#	Secure option is now ON for %s.
	現在 %s へのセキュアオプションは ON になっています。
NICK_SASET_SECURE_OFF
	Secure option is now OFF for %s.
	現在 %s へのセキュアオプションは OFF になっています。

# SASET PRIVATE responses
NICK_SASET_PRIVATE_SYNTAX
	SASET nickname PRIVATE {ON | OFF}
	SASET ニックネーム PRIVATE {ON | OFF}
NICK_SASET_PRIVATE_ON
#	Private option is now ON for %s.
	現在 %s へのプライベートオプションは ON になっています。
NICK_SASET_PRIVATE_OFF
#	Private option is now OFF for %s.
	現在 %s へのプライベートオプションは OFF になっています。

# SASET HIDE responses
NICK_SASET_HIDE_SYNTAX
#	SASET nickname HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
	SASET ニックネーム HIDE {EMAIL | USERMASK | QUIT} {ON | OFF}
NICK_SASET_HIDE_EMAIL_ON
#	The E-mail address of %s will now be hidden from %s INFO displays.
	現在 %s のメールアドレスは %s INFO 表示から隠されています。
NICK_SASET_HIDE_EMAIL_OFF
#	The E-mail address of %s will now be shown in %s INFO displays.
	現在 %s のメールアドレスは %s INFO 表示に公開されています。
NICK_SASET_HIDE_MASK_ON
#	The last seen user@host mask of %s will now be hidden from %s INFO displays.
	%sのホスト・マスクは %s INFO 情報で表示しないように設定しました。
NICK_SASET_HIDE_MASK_OFF
#	The last seen user@host mask of %s will now be shown in %s INFO displays.
	%sのホスト・マスクは %s INFO 情報で表示するように設定しました。
NICK_SASET_HIDE_QUIT_ON
#	The last quit message of %s will now be hidden from %s INFO displays.
	%sの最後に使った終了メッセージは %s INFO 情報で表示しないように設定しました。
NICK_SASET_HIDE_QUIT_OFF
#	The last quit message of %s will now be shown in %s INFO displays.
	%sの最後に使った終了メッセージは %s INFO 情報で表示するように設定しました。
NICK_SASET_HIDE_STATUS_ON
#	The services access status of %s will now be hidden from %s INFO displays.
	%s のサービスへ権限情報は %s INFO 情報で表示しないように設定しました。
NICK_SASET_HIDE_STATUS_OFF
#	The services access status of %s will now be shown in %s INFO displays.
	%s のサービスへ権限情報は %s INFO 情報で表示するように設定しました。
	
# SASET MSG responses
NICK_SASET_MSG_SYNTAX
#	SASAET nickname PRIVATE {ON | OFF}
	SASET ニックネーム PRIVATE {ON | OFF}
NICK_SASET_MSG_ON
#	Services will now reply to %s with messages.
	これから %s に対して各サービスは連絡手段としてメッセージを使います。
NICK_SASET_MSG_OFF
#	Services will now reply to %s with notices.
	これから %s に対して各サービスは連絡手段として告知を使います。

# SASET NOEXPIRE responses
NICK_SASET_NOEXPIRE_SYNTAX
#	SASET nickname NOEXPIRE {ON | OFF}
	SASET ニックネーム NOEXPIRE {ON | OFF}
NICK_SASET_NOEXPIRE_ON
#	Nick %s will not expire.
	%sというニックネームの登録期限限定を外しました。
NICK_SASET_NOEXPIRE_OFF
#	Nick %s will expire.
	%sというニックネームの登録期限限定を有効しました。

# SASET AUTOOP responses
NICK_SASET_AUTOOP_SYNTAX
#	SASET nickname AUTOOP {ON | OFF}
	SASET ニックネーム AUTOOP {ON | OFF}
NICK_SASET_AUTOOP_ON
#	Services will now autoop %s in channels.
	サービスは %s に対して自動的に管理者権を与えるように設定しました。
NICK_SASET_AUTOOP_OFF
#	Services will no longer autoop %s in channels.
	サービスは %s に対して自動的に管理者権を与えないように設定しました。

# SASET LANGUAGE responses
NICK_SASET_LANGUAGE_SYNTAX
#	SASET nickname LANGUAGE number
	SASET ニックネーム LANGUAGE 言語番号
NICK_SASET_LANGUAGE_UNKNOWN
#	Unknown language number %d.  Type %R%s HELP SET LANGUAGE for a list of languages.
	未知の言語番号 %d を指定しました。言語の一覧を見るには %R%s HELP SET LANGUAGE と入力してください。
NICK_SASET_LANGUAGE_CHANGED
#	Language for %s changed to %s.
	%sの使用言語を 日本語 に切り替えました。


# ACCESS responses
NICK_ACCESS_SYNTAX
#	ACCESS {ADD | DEL | LIST} [mask]
	ACCESS {ADD | DEL | LIST} [ホスト・マスク]
NICK_ACCESS_ALREADY_PRESENT
#	Mask %s already present on your access list.
	%s というマスクは既に許可リストに登録されています。
NICK_ACCESS_REACHED_LIMIT
#	Sorry, you can only have %d access entries for a nickname.
	一つのニックネームにつき、許可リスト%d個以上は登録出来ません。
NICK_ACCESS_ADDED
#	%s added to your access list.
	%s を許可リストに追加しました。
NICK_ACCESS_NOT_FOUND
#	%s not found on your access list.
	許可リストに%sは見つかりませんでした。
NICK_ACCESS_DELETED
#	%s deleted from your access list.
	%s を許可リストから消去しました。
NICK_ACCESS_LIST
#	Access list:
	許可リスト一覧：
NICK_ACCESS_LIST_X
#	Access list for %s:
	%sの許可リスト一覧：
NICK_ACCESS_LIST_EMPTY
#	Your access list is empty.
	許可リストにはニックネームは登録されていません。
NICK_ACCESS_LIST_X_EMPTY
#	Access list for %s is empty.
	%sの許可リストにはニックネームは登録されていません。

# Status messages
NICK_STATUS_0
	STATUS %s 0
NICK_STATUS_1
	STATUS %s 1
NICK_STATUS_2
	STATUS %s 2
NICK_STATUS_3
	STATUS %s 3

# INFO responses
NICK_INFO_SYNTAX
#	INFO nick [ALL]
	INFO ニックネーム [ALL]
NICK_INFO_REALNAME
#	%s is %s
	%s の「本名」は %s です。
NICK_INFO_SERVICES_OPER
#	%s is a services operator.
	%sはサービス・オペレーターです。
NICK_INFO_SERVICES_ADMIN
#	%s is a services admin.
	%sは準サービス管理者です。
NICK_INFO_SERVICES_ROOT
#	%s is a services root administrator.
	%sはサービス管理者です。
NICK_INFO_ADDRESS
#	Last seen address: %s
	最後に確認されたアドレス： %s
NICK_INFO_ADDRESS_ONLINE
#	Is online from: %s
	このニックネームは %s から接続中です。
NICK_INFO_ADDRESS_ONLINE_NOHOST
#	%s is currently online.
	%sは接続中です。
NICK_INFO_TIME_REGGED
#	Time registered: %s
	登録日付 : %s
NICK_INFO_LAST_SEEN
#	Last seen time: %s
	最後に確認された日時 : %s
NICK_INFO_LAST_QUIT
#	Last quit message: %s
	最後に確認された終了時のメッセージ : %s
NICK_INFO_URL
	URL: %s
NICK_INFO_EMAIL
#	   E-mail address: %s
	電子メールアドレス : %s
NICK_INFO_VHOST
#	            vhost: %s
	バーチャル・ホスト :  %s
NICK_INFO_VHOST2
#	            vhost: %s@%s
	バーチャル・ホスト : %s@%s
NICK_INFO_ICQ
#	            ICQ #: %d
	ICQ番号 : %d
NICK_INFO_GREET
#	    Greet message: %s
	挨拶メッセージ : %s
NICK_INFO_OPTIONS
#	          Options: %s
	設定 : %s
NICK_INFO_EXPIRE
#	Expires on: %s
	このニックネームは %s に期限終了となります。
# These strings MUST NOT be empty
NICK_INFO_OPT_KILL
#	Protection
	保護
NICK_INFO_OPT_SECURE
#	Security
	セキュリティー
NICK_INFO_OPT_PRIVATE
#	Private
	プライベート
NICK_INFO_OPT_MSG
#	Message mode
	連絡手段
NICK_INFO_OPT_AUTOOP
#	Auto-op
	自動管理者権割り当て
NICK_INFO_OPT_NONE
# どういう意味になるんだこりゃ！
#	None
	無
NICK_INFO_NO_EXPIRE
#	This nickname will not expire.
	このニックネームには期限はありません。
NICK_INFO_FOR_MORE
#	For more verbose information, type %R%s INFO %s ALL.
	もっと詳しく知りたい場合は %R%s INFO %s ALL と入力してください。
NICK_INFO_SUSPENDED
#	This nickname is currently suspended, reason: %s
	%s という理由により、その使用を一時停止させていただいております。
NICK_INFO_SUSPENDED_NO_REASON
#	This nickname is currently suspended
	このニックネームの使用を一時停止させていただいております。

# LIST responses
NICK_LIST_SYNTAX
#	LIST pattern
	LIST パターン
NICK_LIST_SERVADMIN_SYNTAX
#	LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
	LIST パターン [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
NICK_LIST_HEADER
#	List of entries matching %s:
	%sに一致するものの一覧 :
NICK_LIST_RESULTS
#	End of list - %d/%d matches shown.
	%d/%d の結果を表示しました。

# ALIST responses
NICK_ALIST_SYNTAX
	ALIST nickname
NICK_ALIST_HEADER
#	Channels that you have access on:
#	  Num  Channel              Level    Description 
	あなたがアクセスしているチャンネル:
	 番号  チャンネル           レベル   備考
NICK_ALIST_HEADER_X
#	Channels that %s has access on:
#	  Num  Channel              Level    Description
	%s がアクセスしているチャンネル:
	 番号  チャンネル           レベル   備考
NICK_ALIST_XOP_FORMAT
	  %3d %c%-20s %-8s %s
NICK_ALIST_ACCESS_FORMAT
	  %3d %c%-20s %-8d %s
NICK_ALIST_FOOTER
#	End of list - %d/%d channels shown.
	リストはここまで - チャンネル数 %d/%d

# GLIST responses
NICK_GLIST_HEADER
#	List of nicknames in your group:
	あなたと同じグループに所属しているニックネームのリスト:
NICK_GLIST_HEADER_X
#	List of nicknames in the group of %s:
	%s と同じグループに所属しているニックネームのリスト:
NICK_GLIST_FOOTER
#	%d nicknames in the group.
	%d 個のニックネームがこのグループに登録されています。
NICK_GLIST_REPLY
	   %c%s
NICK_GLIST_REPLY_ADMIN
#	   %c%s (expires in %s)
	   %c%s (%s 後に解除予定)

# RECOVER responses
NICK_RECOVER_SYNTAX
	RECOVER nickname [password]
NICK_NO_RECOVER_SELF
#	You can't recover yourself!
	自分自身を回復させることはできません。
NICK_RECOVERED
#	User claiming your nick has been killed.
#	%R%s RELEASE %s to get it back before %s timeout.
	あなたのニックネームを要求したユーザが kill されました。
	ニックネームを回復するには %R%s RELEASE %s 
	のように入力してください(%s がタイムアウトする前に)。.

# RELEASE responses
NICK_RELEASE_SYNTAX
	RELEASE nickname [password]
NICK_RELEASE_NOT_HELD
	Nick %s isn't being held.
NICK_RELEASED
	Services' hold on your nick has been released.

# GHOST responses
NICK_GHOST_SYNTAX
	GHOST nickname [password]
NICK_NO_GHOST_SELF
#	You can't ghost yourself!
	自分自身はゴースト化できません。
NICK_GHOST_KILLED
#	Ghost with your nick has been killed.
	あなたのニックネームを使っていたゴーストが kill されました。

# GETPASS responses
NICK_GETPASS_SYNTAX
	GETPASS nickname
NICK_GETPASS_UNAVAILABLE
#	GETPASS command unavailable because encryption is in use.
	暗号化が有効になっているため、GETPASS コマンドは使えません。
NICK_GETPASS_PASSWORD_IS
#	Password for %s is %s.
	%s のパスワードは %s です。

# GETEMAIL responses
NICK_GETEMAIL_SYNTAX
	GETEMAIL user@email-host No WildCards!!
NICK_GETEMAIL_EMAILS_ARE
#	Emails Match %s to %s.
	%s と %s に該当する Email アドレスは次の通りです。
NICK_GETEMAIL_NOT_USED
#	No Emails listed for %s.
	%s に該当する Email アドレスはありませんでした。.
	
# SENDPASS responses
NICK_SENDPASS_SYNTAX
	SENDPASS nickname
NICK_SENDPASS_UNAVAILABLE
#	SENDPASS command unavailable because encryption is in use.
	暗号化が有効になっているため、SENDPASS コマンドは使えません。
NICK_SENDPASS_SUBJECT
#	Nickname password (%s)
	ニックネーム パスワード (%s)
NICK_SENDPASS_HEAD
#	Hi,
	こんにちは、
NICK_SENDPASS_LINE_1
#	You have requested to receive the password of nickname %s by e-mail.
	ニックネーム %s のパスワードを e-mail で要求しました。
NICK_SENDPASS_LINE_2
#	The password is %s for security purposes, you should change it as soon as you receive this mail.
	パスワードは %s です。セキュリティ確保のため、このメールを受け取ったらすぐにパスワードを変更してください。
NICK_SENDPASS_LINE_3
#	If you don't know why this mail is sent to you, please ignore it silently.
	このメールに身に覚えの無い場合は、黙って無視してください。
NICK_SENDPASS_LINE_4
#	PLEASE DON'T ANSWER TO THIS MAIL!
	このメールに返信しないでください！
NICK_SENDPASS_LINE_5
#	%s administrators.
	%s 管理人.
NICK_SENDPASS_OK
#	Password of %s has been sent.
	%s のパスワードが送信されました。

# SUSPEND responses
NICK_SUSPEND_SYNTAX
	SUSPEND nickname reason
NICK_SUSPEND_SUCCEEDED
#	Nick %s is now suspended.
	ニック %s を一時的に使用禁止にしました。
NICK_SUSPEND_FAILED
#	Couldn't suspend nick %s!
	ニック %s を使用禁止にできませんでした！

# UNSUSPEND responses
NICK_UNSUSPEND_SYNTAX
	UNSUSPEND nickname
NICK_UNSUSPEND_SUCCEEDED
#	Nick %s is now released.
	ニック %s の登録を解除しました。
NICK_UNSUSPEND_FAILED
#	Couldn't release nick %s!
	ニック %s の登録を解除できませんでした！

# FORBID responses
NICK_FORBID_SYNTAX
	FORBID nickname [reason]
NICK_FORBID_SYNTAX_REASON
	FORBID nickname reason
NICK_FORBID_SUCCEEDED
#	Nick %s is now forbidden.
	現在、ニック %s は使用禁止になっています。
NICK_FORBID_FAILED
#	Couldn't forbid nick %s!
	ニック %s を使用禁止にできませんでした。

# Nick Registraion responses
NICK_REQUESTED
#	This nick has already been requested, please check your e-mail address for the pass code
	このニックは現在、だれかが使用中です。あなたの e-mail アドレスとパスコードを確認してください。
NICK_REG_RESENT
#	Your passcode has been re-sent to %s.
	あなたのパスコードが %s 宛てに再送信されました。.
NICK_REG_UNABLE
#	Nick NOT registered, please try again later.
	ニックが登録されていません。時間をおいてやり直してください。
NICK_IS_PREREG
#	This nick is awaiting an e-mail verification code before completing registration.
	ニックネーム登録を完了する前に e-mail 確認コードの入力が必要です。
NICK_ENTER_REG_CODE
#	A passcode has been sent to %s, please type %R%s confirm <passcode> to complete registration
	%s 宛てにパスコードが送信されました。%R%s confirm <passcode> のように入力して、ニックネーム登録を完了させてください。
NICK_CONFIRM_NOT_FOUND
#	Registration step 1 may have expired, please use "%R%s register <password> <email>" first.
	ニックネーム登録手順 1 が期限切れになりました。"%R%s register <password> <email>" のように入力してください。
NICK_CONFIRM_INVALID
#	Invalid passcode has been entered, please check the e-mail again, and retry
	パスコードが間違っています。e-mail アドレスを再確認し、やり直してください。
NICK_REG_MAIL_SUBJECT
#	Nickname Registration (%s)
	ニックネーム登録 (%s)
NICK_REG_MAIL_HEAD
#	Hi,
	こんにちは、
NICK_REG_MAIL_LINE_1
#	You have requested to register the following nickname %s.
	ニックネーム %s の登録要請を行いました。
NICK_REG_MAIL_LINE_2
#	Please type " %R%s confirm %s " to complete registration.
	登録を完了するには " %R%s confirm %s " のように入力してください。
NICK_REG_MAIL_LINE_3
#	If you don't know why this mail is sent to you, please ignore it silently.
	このメールに身に覚えの無い場合は、黙って無視してください。
NICK_REG_MAIL_LINE_4
#	PLEASE DON'T ANSWER TO THIS MAIL!
	このメールに返信しないでください！
NICK_REG_MAIL_LINE_5
#	%s administrators.
	%s 管理人.
NICK_GETPASS_PASSCODE_IS
#	Passcode for %s is %s.
	%s のパスコードは %s です。
NICK_FORCE_REG
#	Nickname %s confirmed
	ニックネーム %s の登録を完了しました。



###########################################################################
#
# ChanServ messages
#
###########################################################################

# Access level descriptions
CHAN_LEVEL_AUTOOP
#	Automatic channel operator status
	自動的にチャンネル運営者権を得る[AUTOOP](+o)
CHAN_LEVEL_AUTOVOICE
#	Automatic mode +v
	自動的にチャンネル発言権を得る[AUTOVOICE](+v)
CHAN_LEVEL_AUTOHALFOP
#	Automatic mode +h
	自動的にチャンネル準運営者権を得る[AUTOHALFOP](+h)
CHAN_LEVEL_AUTOPROTECT
#	Automatic mode +a
	自動的にニックネーム保護モードを得る[AUTOPROTECT](+a)
CHAN_LEVEL_AUTODEOP
#	Channel operator status disallowed
	チャンネルオペレーター状態を禁止される[AUTODEOP]
CHAN_LEVEL_NOJOIN
#	Not allowed to join channel
	チャンネルへの参加を禁止される[NOJOIN]
CHAN_LEVEL_INVITE
#	Allowed to use INVITE command
	INVITE（招待）コマンドの使用を許可
CHAN_LEVEL_AKICK
#	Allowed to use AKICK command
	AKICK（自動排除）コマンドの使用を許可
CHAN_LEVEL_SET
#	Allowed to use SET command (not FOUNDER/PASSWORD)
	SET（設定）コマンドの使用を許可（FOUNDER/PASSWORDを除く）
CHAN_LEVEL_CLEAR
#	Allowed to use CLEAR command
	CLEAR（解除）コマンドの使用を許可
CHAN_LEVEL_UNBAN
#	Allowed to use UNBAN command
	UNBAN（非排除化）コマンドの使用を許可
CHAN_LEVEL_OPDEOP
#	Allowed to use OP/DEOP commands
	OP/DEOP（チャンネル運営者権の付与・剥奪）コマンドの使用を許可
CHAN_LEVEL_ACCESS_LIST
#	Allowed to view the access list
	アクセスリストの閲覧を許可
CHAN_LEVEL_ACCESS_CHANGE
#	Allowed to modify the access list
	アクセスリストの編集を許可
CHAN_LEVEL_MEMO
#	Allowed to list/read channel memos
	チャンネルメモのlist/readを許可
CHAN_LEVEL_ASSIGN
#	Allowed to assign/unassign a bot
	ボットのassign/unassign（割り当て・解除）を許可
CHAN_LEVEL_BADWORDS
#	Allowed to use BADWORDS command
	BADWORDS（NGワード）コマンドの使用を許可
CHAN_LEVEL_NOKICK
#	Never kicked by the bot's kickers
	ボットによってキックされない
CHAN_LEVEL_FANTASIA
#	Allowed to use fantaisist commands
	!op, !deop, !voice, !kick, !kb などのコマンド使用を許可
CHAN_LEVEL_SAY
#	Allowed to use SAY and ACT commands
	SAY 及び ACT コマンドの使用を許可
CHAN_LEVEL_GREET
#	Greet message displayed
	Greet（歓迎）メッセージの表示
CHAN_LEVEL_VOICEME
#	Allowed to (de)voice him/herself
	自身へのVOICE/DEVOICE（発言権操作）を許可
CHAN_LEVEL_VOICE
#	Allowed to use VOICE/DEVOICE commands
	VOICE/DEVOICEコマンドの使用を許可
CHAN_LEVEL_GETKEY
#	Allowed to use GETKEY command
	GETKEY コマンドを使えます。
CHAN_LEVEL_OPDEOPME
#	Allowed to (de)op him/herself
	自分自身にオペレータ権限を付与、剥奪することができます。
CHAN_LEVEL_HALFOPME
#	Allowed to (de)halfop him/herself
	自分自身に halfop 権限を付与、剥奪することができます。
CHAN_LEVEL_HALFOP
#	Allowed to use HALFOP/DEHALFOP commands
	HALFOP/DEHALFOP コマンドを使えます。
CHAN_LEVEL_PROTECTME
#	Allowed to (de)protect him/herself
	自分自身に protect 権限を付与、剥奪することができます。
CHAN_LEVEL_PROTECT
#	Allowed to use PROTECT/DEPROTECT commands
	PROTECT/DEPROTECT コマンドを使えます。
CHAN_LEVEL_KICKME
#	Allowed to kick him/herself
	自分自身をキックできます。
CHAN_LEVEL_KICK
#	Allowed to use KICK command
	KICK コマンドを使えます。
CHAN_LEVEL_SIGNKICK
#	No signed kick when SIGNKICK LEVEL is used
	SIGNKICK レベルが有効な場合、キックできません。
CHAN_LEVEL_BANME
#	Allowed to ban him/herself
	自分自身をバンできます。
CHAN_LEVEL_BAN
#	Allowed to use BAN command
	BAN コマンドを使えます。
CHAN_LEVEL_TOPIC
#	Allowed to use TOPIC command
	TOPIC コマンドを使えます。
CHAN_LEVEL_INFO
#	Allowed to use INFO command with ALL option
	ALL オプション付きで INFO コマンドを使えます。

# Automatic responses
CHAN_IS_REGISTERED
#	This channel has been registered with %s.
	このチャンネルは既に %s により登録されています。
CHAN_NOT_ALLOWED_OP
#	You are not allowed chanop status on channel %s.
	このチャンネルは使用できないことがあります。
CHAN_MAY_NOT_BE_USED
#	This channel may not be used.
CHAN_NOT_ALLOWED_TO_JOIN
#	You are not permitted to be on this channel.
	このチャンネルへの参加は許可されていません。
CHAN_X_INVALID
#	Channel %s is not a valid channel.
	チャンネル %s は無効なチャンネルです。

# REGISTER responses
CHAN_REGISTER_SYNTAX
	REGISTER channel password description
CHAN_REGISTER_DISABLED
#	Sorry, channel registration is temporarily disabled.
	ご迷惑をかけて申し訳ありません。チャンネル登録は一時的に禁止されています。
CHAN_REGISTER_NOT_LOCAL
#	Local channels cannot be registered.
	ローカルチャンネルは登録できません。
CHAN_MUST_REGISTER_NICK
#	You must register your nickname first.  Type %R%s HELP for information on registering nicknames.
	先にニックネームの登録を行ってください。%R%s HELP と入力することでより詳細な情報が見られます。
CHAN_MUST_IDENTIFY_NICK
#	Please identify with %s first, using the command:
#	%R%s IDENTIFY password
	先に以下のコマンドで %s の認証を行ってください、
	%R%s IDENTIFY password
CHAN_MAY_NOT_BE_REGISTERED
#	Channel %s may not be registered.
	チャンネル %s は未登録です。
CHAN_ALREADY_REGISTERED
#	Channel %s is already registered!
	チャンネル %s は登録済みです！
CHAN_MUST_BE_CHANOP
#	You must be a channel operator to register the channel.
	チャンネルを登録するにはオペレータ権限が必要です。
CHAN_REACHED_CHANNEL_LIMIT
#	Sorry, you have already reached your limit of %d channels.
	ご迷惑をおかけして申し訳ありません。join 中のチャンネル数が %d に達したため、これ以上 join できません。
CHAN_EXCEEDED_CHANNEL_LIMIT
#	Sorry, you have already exceeded your limit of %d channels.
	ご迷惑をおかけして申し訳ありません。join 中のチャンネル数が %d 以上のため、これ以上 join できません。
CHAN_REGISTRATION_FAILED
#	Sorry, registration failed.
	ご迷惑をおかけして申し訳ありません。登録に失敗しました。
CHAN_REGISTERED
#	Channel %s registered under your nickname: %s
	チャンネル %s はあなたのニックネーム %s で登録済みです。
CHAN_PASSWORD_IS
#	Your channel password is %s - remember it for later use.
	チャンネルパスワードは %s です。join するにはこれが必要になります。
CHAN_REGISTER_NONE_CHANNEL
#	You have attempted to register a nonexistent channel %s
	存在しないチャンネル %s は登録できません。
CHAN_SYMBOL_REQUIRED
#	Please use the symbol of # when attempting to register
	登録の際には、# を使用してください。


# IDENTIFY responses
CHAN_IDENTIFY_SYNTAX
#	IDENTIFY channel password
	IDENTIFY チャンネル パスワード
CHAN_IDENTIFY_FAILED
#	Sorry, identification failed.
	ご迷惑をおかけして申し訳ありません。認証に失敗しました。
CHAN_IDENTIFY_SUCCEEDED
#	Password accepted - you now have founder-level access to %s.
	認証に成功しました。founder 権限で %s へのアクセスが可能です。

# LOGOUT responses
CHAN_LOGOUT_SYNTAX
	LOGOUT channel nickname
CHAN_LOGOUT_SERVADMIN_SYNTAX
	LOGOUT channel [nickname]
CHAN_LOGOUT_SUCCEEDED
#	User %s has been logged out of channel %s.
	 ユーザ %s がチャンネル %s からログアウトしました。
CHAN_LOGOUT_ALL_SUCCEEDED
#	All users identified have been logged out of channel %s (except the channel founder).
	チャンネルを作ったユーザを除く指定されたユーザ全員がチャンネル %s からログアウトしました。
CHAN_LOGOUT_FOUNDER_FAILED
#	You may not log out of %s (you are founder).
	あなたはチャンネルを作ったユーザなので %s からログアウトすることはできません。

# DROP responses
CHAN_DROP_SYNTAX
	DROP channel
CHAN_DROP_DISABLED
#	Sorry, channel de-registration is temporarily disabled.
	ご迷惑を掛けて申し訳ございません。一時的にチャンネルの登録を解除することができなくなっています。
CHAN_DROPPED
#	Channel %s has been dropped.
	チャンネル %s の登録が解除されました。

# SET responses
CHAN_SET_SYNTAX
	SET channel option parameters
CHAN_SET_DISABLED
#	Sorry, channel option setting is temporarily disabled.
	ご迷惑を掛けて申し訳ございません。一時的にチャンネルオプションを変更することができなくなっています。
CHAN_SET_UNKNOWN_OPTION
#	Unknown SET option %s.
	オプション %s は定義されていません。

# SET FOUNDER responses
CHAN_SET_FOUNDER_TOO_MANY_CHANS
#	%s has too many channels registered.
	%s が登録できるチャンネル数の上限に到達しました。
CHAN_FOUNDER_CHANGED
#	Founder of %s changed to %s.
	チャンネル %s の登録メンバーが %s に変更されました。

# SET SUCCESSOR responses
CHAN_SUCCESSOR_CHANGED
#	Successor for %s changed to %s.
	チャンネル %s のメンテナ権を %s に譲渡しました。
CHAN_SUCCESSOR_UNSET
#	Successor for %s unset.
	チャンネル %s のメンテナが解除されました。
CHAN_SUCCESSOR_IS_FOUNDER
#	%s cannot be the successor on channel %s because he is its founder.
	%s はチャンネル %s のメンテナになれません。なぜなら、 %s はチャンネル開設者だからです。

# SET PASSWORD responses
CHAN_SET_PASSWORD_FAILED
#	Sorry, couldn't set password.
	パスワードを設定できません。
CHAN_PASSWORD_CHANGED
#	%s password changed.
	%s のパスワードを変更しました。
CHAN_PASSWORD_CHANGED_TO
#	%s password changed to %s.
	%s のパスワードを %s に変更しました。

# SET DESC responses
CHAN_DESC_CHANGED
#	Description of %s changed to %s.
	チャンネル %s の説明を %s に変更しました。

# SET URL responses
CHAN_URL_CHANGED
#	URL for %s changed to %s.
	チャンネル %s のURLを %s に変更しました。
CHAN_URL_UNSET
#	URL for %s unset.
	チャンネル %s のURLを未設定に戻しました。

# SET EMAIL responses
CHAN_EMAIL_CHANGED
#	E-mail address for %s changed to %s.
	チャンネル %s のメールアドレスを %s に変更しました。
CHAN_EMAIL_UNSET
#	E-mail address for %s unset.
	チャンネル %s のメールアドレスを未設定に戻しました。

# SET ENTRYMSG responses
CHAN_ENTRY_MSG_CHANGED
#	Entry message for %s changed.
	チャンネル %s のエントリーメッセージを変更しました。
CHAN_ENTRY_MSG_UNSET
#	Entry message for %s unset.
	チャンネル %s のエントリーメッセージを未設定に戻しました。
	
# SET BANTYPE responses
CHAN_SET_BANTYPE_INVALID
#	%s is not a valid ban type.
	%s は有効な禁止タイプではありません。
CHAN_SET_BANTYPE_CHANGED
#	Ban type for channel %s is now #%d.
	チャンネル %s の現在の禁止タイプは #%d です。

# SET MLOCK responses
CHAN_SET_MLOCK_UNKNOWN_CHAR
#	Unknown mode character %c ignored.
	認識できないモードキャラクタ %c を無視しました。
CHAN_SET_MLOCK_IMPOSSIBLE_CHAR
#	Mode %c ignored because you can't lock it.
	ロック権限が無いのでモード %c を無視しました。
CHAN_SET_MLOCK_L_REQUIRED
#	You must lock mode +l as well to lock mode +L.
	ロックモード +L をONにするのと同時に +l もONにしてください。
CHAN_SET_MLOCK_K_REQUIRED
#	You must lock mode +i as well to lock mode +K.
	ロックモード +K をONにするのと同時に +i もONにしてください。
CHAN_MLOCK_CHANGED
#	Mode lock on channel %s changed to %s.
	チャンネル %s のロックモードを %s に変更しました。

# SET KEEPTOPIC responses
CHAN_SET_KEEPTOPIC_SYNTAX
#	SET channel KEEPTOPIC {ON | OFF}
	SET チャンネル名 KEEPTOPIC {ON | OFF}
CHAN_SET_KEEPTOPIC_ON
#	Topic retention option for %s is now ON.
	チャンネル %s のトピック保存オプションは ON です。
CHAN_SET_KEEPTOPIC_OFF
#	Topic retention option for %s is now OFF.
	チャンネル %s のトピック保存オプションは OFF です。

# SET TOPICLOCK responses
CHAN_SET_TOPICLOCK_SYNTAX
#	SET channel TOPICLOCK {ON | OFF}
	SET チャンネル名 TOPICLOCK {ON | OFF}
CHAN_SET_TOPICLOCK_ON
#	Topic lock option for %s is now ON.
	チャンネル %s のトピックロックオプションは ON です。
CHAN_SET_TOPICLOCK_OFF
#	Topic lock option for %s is now OFF.
	チャンネル %s のトピックロックオプションは OFF です。

# SET PEACE responses
CHAN_SET_PEACE_SYNTAX
#	SET channel PEACE {ON | OFF}
	SET チャンネル名 PEACE {ON | OFF}
CHAN_SET_PEACE_ON
#	Peace option for %s is now ON.
	チャンネル %s の Peace オプションは ON です。
CHAN_SET_PEACE_OFF
#	Peace option for %s is now OFF.
	チャンネル %s の Peace オプションは OFF です。

# SET PRIVATE responses
CHAN_SET_PRIVATE_SYNTAX
#	SET channel PRIVATE {ON | OFF}
	SET チャンネル名 PRIVATE {ON | OFF}
CHAN_SET_PRIVATE_ON
#	Private option for %s is now ON.
	チャンネル %s のプライベートオプションは ON です。
CHAN_SET_PRIVATE_OFF
#	Private option for %s is now OFF.
	チャンネル %s のプライベートオプションは OFF です。

# SET SECUREOPS responses
CHAN_SET_SECUREOPS_SYNTAX
#	SET channel SECUREOPS {ON | OFF}
	SET チャンネル名 SECUREOPS {ON | OFF}
CHAN_SET_SECUREOPS_ON
#	Secure ops option for %s is now ON.
	チャンネル %s の安全オペレータオプションは ON です。
CHAN_SET_SECUREOPS_OFF
#	Secure ops option for %s is now OFF.
	チャンネル %s の安全オペレータオプションは OFF です。

# SET SECUREFOUNDER responses
CHAN_SET_SECUREFOUNDER_SYNTAX
#	SET channel SECUREFOUNDER {ON | OFF}
	SET チャンネル名 SECUREFOUNDER {ON | OFF}
CHAN_SET_SECUREFOUNDER_ON
#	Secure founder option for %s is now ON.
	チャンネル %s の安全開設者オプションは ON です。
CHAN_SET_SECUREFOUNDER_OFF
#	Secure founder option for %s is now OFF.
	チャンネル %s の安全開設者オプションは OFF です。

# SET RESTRICTED responses
CHAN_SET_RESTRICTED_SYNTAX
#	SET channel RESTRICTED {ON | OFF}
	SET チャンネル名 RESTRICTED {ON | OFF}
CHAN_SET_RESTRICTED_ON
#	Restricted access option for %s is now ON.
	チャンネル %s の制限アクセスオプションは ON です。
CHAN_SET_RESTRICTED_OFF
#	Restricted access option for %s is now OFF.
	チャンネル %s の制限アクセスオプションは OFF です。

# SET SECURE responses
CHAN_SET_SECURE_SYNTAX
#	SET channel SECURE {ON | OFF}
	SET チャンネル名 SECURE {ON | OFF}
CHAN_SET_SECURE_ON
#	Secure option for %s is now ON.
	チャンネル %s の安全オプションは ON です。
CHAN_SET_SECURE_OFF
#	Secure option for %s is now OFF.
	チャンネル %s の安全オプションは OFF です。

# SET SIGNKICK responses
CHAN_SET_SIGNKICK_SYNTAX
#	SET channel SIGNKICK {ON | LEVEL | OFF}
	SET チャンネル名 SIGNKICK {ON | LEVEL | OFF}
CHAN_SET_SIGNKICK_ON
#	Signed kick option for %s is now ON.
	チャンネル %s の Signed kick オプションは ON です。
CHAN_SET_SIGNKICK_LEVEL
#	Signed kick option for %s is now ON, but depends of the
#	level of the user that is using the command.
	チャンネル %s の Signed kick オプションは ON ですが、
	レベルはコマンドを発行したユーザの設定に依存します。
CHAN_SET_SIGNKICK_OFF
#	Signed kick option for %s is now OFF.
	チャンネル %s の Signed kick オプションは OFF です。

# SET OPNOTICE responses
CHAN_SET_OPNOTICE_SYNTAX
#	SET channel OPNOTICE {ON | OFF}
	SET チャンネル名 OPNOTICE {ON | OFF}
CHAN_SET_OPNOTICE_ON
#	Op-notice option for %s is now ON.
	チャンネル %s の Op-notice オプションは ON です。
CHAN_SET_OPNOTICE_OFF
#	Op-notice option for %s is now OFF.
	チャンネル %s の Op-notice オプションは OFF です。

# SET XOP responses
CHAN_SET_XOP_SYNTAX
#	SET channel XOP {ON | OFF}
	SET チャンネル名 XOP {ON | OFF}
CHAN_SET_XOP_ON
#	xOP lists system for %s is now ON.
	チャンネル %s の xOP オプションは ON です。
CHAN_SET_XOP_OFF
#	xOP lists system for %s is now OFF.
	チャンネル %s の xOP オプションは OFF です。

# SET NOEXPIRE responses
CHAN_SET_NOEXPIRE_SYNTAX
#	SET channel NOEXPIRE {ON | OFF}
	SET チャンネル名 NOEXPIRE {ON | OFF}
CHAN_SET_NOEXPIRE_ON
#	Channel %s will not expire.
	チャンネル %s はユーザがいなくなってもなくなりません。
CHAN_SET_NOEXPIRE_OFF
#	Channel %s will expire.
	チャンネル %s はユーザがいなくなったら なくなります。

# xOP messages
CHAN_XOP_REACHED_LIMIT
#	Sorry, you can only have %d AOP/SOP/VOP entries on a channel.
	%d AOP/SOP/VOP エントリーより多くは登録出来ません。
CHAN_XOP_LIST_FORMAT
	  %3d  %s
CHAN_XOP_ACCESS
#	You can't use this command. Use the ACCESS command instead.
#	Type %R%s HELP ACCESS for more information.
	このコマンドは使用できません。 ACCESS コマンドを使用してください。
	より詳しい情報は %R%s HELP ACCESS と入力してください。
CHAN_XOP_NOT_AVAILABLE
#	xOP system is not available.
	xOP システムは使用できません。

# AOP messages
CHAN_AOP_SYNTAX
#	AOP channel {ADD|DEL|LIST|CLEAR} [nick | entry-list]
	AOP チャンネル名 {ADD|DEL|LIST|CLEAR} [ニックネーム | エントリー番号]
CHAN_AOP_DISABLED
#	Sorry, channel AOP list modification is temporarily disabled.
	チャンネルの AOP リストの変更は一時的に禁止されています。
CHAN_AOP_NICKS_ONLY
#	Channel AOP lists may only contain registered nicknames.
	チャンネルの AOP リストに追加できるニックネームは登録されたものでなければいけません。
CHAN_AOP_ADDED
#	%s added to %s AOP list.
	チャンネル %s の AOP リストに%s を追加しました。
CHAN_AOP_MOVED
#	%s moved to %s AOP list.
	チャンネル %s の AOP リストに%s を移動しました。
CHAN_AOP_NO_SUCH_ENTRY
#	No such entry (#%d) on %s AOP list.
	チャンネル %s の AOP リストにエントリー(#%d) は見つかりません。
CHAN_AOP_NOT_FOUND
#	%s not found on %s AOP list.
	チャンネル %s の AOP リストに %s は見つかりません。
CHAN_AOP_NO_MATCH
#	No matching entries on %s AOP list.
	チャンネル %s の AOP リストにマッチするエントリーがありません。
CHAN_AOP_DELETED
#	%s deleted from %s AOP list.
	チャンネル %s の AOP リストから %s を削除しました。
CHAN_AOP_DELETED_ONE
#	Deleted 1 entry from %s AOP list.
	チャンネル %s の AOP リストからエントリーを 1 個削除しました。
CHAN_AOP_DELETED_SEVERAL
#	Deleted %d entries from %s AOP list.
	チャンネル %s の AOP リストからエントリーを %d 個削除しました。
CHAN_AOP_LIST_EMPTY
#	%s AOP list is empty.
	チャンネル %s の AOP リストは空です。
CHAN_AOP_LIST_HEADER
#	AOP list for %s:
#	  Num  Nick
	チャンネル %s の AOP リスト:
	  番号 ニックネーム
CHAN_AOP_CLEAR
#	Channel %s AOP list has been cleared.
	チャンネル %s の AOP リストを初期化しました。

# HOP messages
CHAN_HOP_SYNTAX
#	HOP channel {ADD|DEL|LIST|CLEAR} [nick | entry-list]
	HOP チャンネル名 {ADD|DEL|LIST|CLEAR} [ニックネーム | エントリー番号]
CHAN_HOP_DISABLED
#	Sorry, channel HOP list modification is temporarily disabled.
	チャンネルの HOP リストの変更は一時的に禁止されています。
CHAN_HOP_NICKS_ONLY
#	Channel HOP lists may only contain registered nicknames.
	チャンネルの HOP リストに追加できるニックネームは登録されたものでなければいけません。
CHAN_HOP_ADDED
#	%s added to %s HOP list.
	チャンネル %s の HOP リストに%s を追加しました。
CHAN_HOP_MOVED
#	%s moved to %s HOP list.
	チャンネル %s の HOP リストに%s を移動しました。
CHAN_HOP_NO_SUCH_ENTRY
#	No such entry (#%d) on %s HOP list.
	チャンネル %s の HOP リストにエントリー(#%d) は見つかりません。
CHAN_HOP_NOT_FOUND
#	%s not found on %s HOP list.
	チャンネル %s の HOP リストに %s は見つかりません。
CHAN_HOP_NO_MATCH
#	No matching entries on %s HOP list.
	チャンネル %s の HOP リストにマッチするエントリーがありません。
CHAN_HOP_DELETED
#	%s deleted from %s HOP list.
	チャンネル %s の HOP リストから %s を削除しました。
CHAN_HOP_DELETED_ONE
#	Deleted 1 entry from %s HOP list.
	チャンネル %s の HOP リストからエントリーを 1 個削除しました。
CHAN_HOP_DELETED_SEVERAL
#	Deleted %d entries from %s HOP list.
	チャンネル %s の HOP リストからエントリーを %d 個削除しました。
CHAN_HOP_LIST_EMPTY
#	%s HOP list is empty.
	チャンネル %s の HOP リストは空です。
CHAN_HOP_LIST_HEADER
#	HOP list for %s:
#	  Num  Nick
	チャンネル %s の HOP リスト:
	  番号 ニックネーム
CHAN_HOP_CLEAR
#	Channel %s HOP list has been cleared.
	チャンネル %s の HOP リストを初期化しました。

# SOP messages
CHAN_SOP_SYNTAX
#	SOP channel {ADD|DEL|LIST|CLEAR} [nick | entry-list]
	SOP チャンネル名 {ADD|DEL|LIST|CLEAR} [ニックネーム | エントリー番号]
CHAN_SOP_DISABLED
#	Sorry, channel SOP list modification is temporarily disabled.
	チャンネルの SOP リストの変更は一時的に禁止されています。
CHAN_SOP_NICKS_ONLY
#	Channel SOP lists may only contain registered nicknames.
	チャンネルの SOP リストに追加できるニックネームは登録されたものでなければいけません。
CHAN_SOP_ADDED
#	%s added to %s SOP list.
	チャンネル %s の SOP リストに%s を追加しました。
CHAN_SOP_MOVED
#	%s moved to %s SOP list.
	チャンネル %s の SOP リストに%s を移動しました。
CHAN_SOP_NO_SUCH_ENTRY
#	No such entry (#%d) on %s SOP list.
	チャンネル %s の SOP リストにエントリー(#%d) は見つかりません。
CHAN_SOP_NOT_FOUND
#	%s not found on %s SOP list.
	チャンネル %s の SOP リストに %s は見つかりません。
CHAN_SOP_NO_MATCH
#	No matching entries on %s SOP list.
	チャンネル %s の SOP リストにマッチするエントリーがありません。
CHAN_SOP_DELETED
#	%s deleted from %s SOP list.
	チャンネル %s の SOP リストから %s を削除しました。
CHAN_SOP_DELETED_ONE
#	Deleted 1 entry from %s SOP list.
	チャンネル %s の SOP リストからエントリーを 1 個削除しました。
CHAN_SOP_DELETED_SEVERAL
#	Deleted %d entries from %s SOP list.
	チャンネル %s の SOP リストからエントリーを %d 個削除しました。
CHAN_SOP_LIST_EMPTY
#	%s SOP list is empty.
	チャンネル %s の SOP リストは空です。
CHAN_SOP_LIST_HEADER
#	SOP list for %s:
#	  Num  Nick
	チャンネル %s の SOP リスト:
	  番号 ニックネーム
CHAN_SOP_CLEAR
	Channel %s SOP list has been cleared.
	チャンネル %s の SOP リストを初期化しました。

# VOP messages
CHAN_VOP_SYNTAX
#	VOP channel {ADD|DEL|LIST|CLEAR} [nick | entry-list]
	VOP チャンネル名 {ADD|DEL|LIST|CLEAR} [ニックネーム | エントリー番号]
CHAN_VOP_DISABLED
#	Sorry, channel VOP list modification is temporarily disabled.
	チャンネルの VOP リストの変更は一時的に禁止されています。
CHAN_VOP_NICKS_ONLY
#	Channel VOP lists may only contain registered nicknames.
	チャンネルの VOP リストに追加できるニックネームは登録されたものでなければいけません。
CHAN_VOP_ADDED
#	%s added to %s VOP list.
	チャンネル %s の VOP リストに%s を追加しました。
CHAN_VOP_MOVED
#	%s moved to %s VOP list.
	チャンネル %s の VOP リストに%s を移動しました。
CHAN_VOP_NO_SUCH_ENTRY
#	No such entry (#%d) on %s VOP list.
	チャンネル %s の VOP リストにエントリー(#%d) は見つかりません。
CHAN_VOP_NOT_FOUND
#	%s not found on %s VOP list.
	チャンネル %s の VOP リストに %s は見つかりません。
CHAN_VOP_NO_MATCH
#	No matching entries on %s VOP list.
	チャンネル %s の VOP リストにマッチするエントリーがありません。
CHAN_VOP_DELETED
#	%s deleted from %s VOP list.
	チャンネル %s の VOP リストから %s を削除しました。
CHAN_VOP_DELETED_ONE
#	Deleted 1 entry from %s VOP list.
	チャンネル %s の VOP リストからエントリーを 1 個削除しました。
CHAN_VOP_DELETED_SEVERAL
#	Deleted %d entries from %s VOP list.
	チャンネル %s の VOP リストからエントリーを %d 個削除しました。
CHAN_VOP_LIST_EMPTY
#	%s VOP list is empty.
	チャンネル %s の VOP リストは空です。
CHAN_VOP_LIST_HEADER
#	VOP list for %s:
#	  Num  Nick
	チャンネル %s の VOP リスト:
	  番号 ニックネーム
CHAN_VOP_CLEAR
#	Channel %s VOP list has been cleared.
	チャンネル %s の VOP リストを初期化しました。

# ACCESS messages
CHAN_ACCESS_SYNTAX
#	ACCESS channel {ADD|DEL|LIST|CLEAR} [nick [level] | entry-list]
	ACCESS チャンネル名 {ADD|DEL|LIST|CLEAR} [ニックネーム [レベル] | エントリー番号]
CHAN_ACCESS_XOP
#	You can't use this command. 
#	Use the AOP, SOP and VOP commands instead.
#	Type %R%s HELP command for more information.
	このコマンドを使うことは出来ません。
	AOP, SOP 又は VOP コマンドを使ってください。
	より詳しい情報は %R%s HELP command と入力してください。
CHAN_ACCESS_XOP_HOP
#	You can't use this command. 
#	Use the AOP, SOP, HOP and VOP commands instead.
#	Type %R%s HELP command for more information.
	このコマンドを使うことは出来ません。
	AOP, SOP, HOP 又は VOP コマンドを使ってください。
	より詳しい情報は %R%s HELP command と入力してください。
CHAN_ACCESS_DISABLED
#	Sorry, channel access list modification is temporarily disabled.
	チャンネルのアクセスリストの変更は一時的に禁止されています。
CHAN_ACCESS_LEVEL_NONZERO
#	Access level must be non-zero.
	アクセスレベルはゼロではいけません。
CHAN_ACCESS_LEVEL_RANGE
#	Access level must be between %d and %d inclusive.
	アクセスレベルは %d から %d の間に無くてはいけません。
CHAN_ACCESS_NICKS_ONLY
#	Channel access lists may only contain registered nicknames.
	チャンネルのアクセスリストに追加できるニックネームは登録されたものでなければいけません。
CHAN_ACCESS_REACHED_LIMIT
#	Sorry, you can only have %d access entries on a channel.
	チャンネルのアクセスエントリーを %d 個以上変えることは出来ません。
CHAN_ACCESS_LEVEL_UNCHANGED
#	Access level for %s on %s unchanged from %d.
	チャンネル %s のアクセスリスト、%s のレベルを %d から変更しませんでした。
CHAN_ACCESS_LEVEL_CHANGED
#	Access level for %s on %s changed to %d.
	チャンネル %s のアクセスリスト、%s のレベルを %d に変更しました。
CHAN_ACCESS_ADDED
#	%s added to %s access list at level %d.
	チャンネル %s のアクセスリスト、レベル %d に%s を追加しました。
CHAN_ACCESS_NO_SUCH_ENTRY
#	No such entry (#%d) on %s access list.
	チャンネル %s のアクセスリストにエントリー(#%d) は見つかりません。
CHAN_ACCESS_NOT_FOUND
#	%s not found on %s access list.
	チャンネル %s のアクセスリストに %s は見つかりません。
CHAN_ACCESS_NO_MATCH
#	No matching entries on %s access list.
	チャンネル %s のアクセスリストにマッチするエントリーがありません。
CHAN_ACCESS_DELETED
#	%s deleted from %s access list.
	チャンネル %s のアクセスリストから %s を削除しました。
CHAN_ACCESS_DELETED_ONE
#	Deleted 1 entry from %s access list.
	チャンネル %s のアクセスリストからエントリーを 1 個削除しました。
CHAN_ACCESS_DELETED_SEVERAL
#	Deleted %d entries from %s access list.
	チャンネル %s のアクセスリストからエントリーを %d 個削除しました。
CHAN_ACCESS_LIST_EMPTY
#	%s access list is empty.
	チャンネル %s のアクセスリストは空です。
CHAN_ACCESS_LIST_HEADER
#	Access list for %s:
#	  Num   Lev  Nick
	チャンネル %s のアクセスリスト:
	  番号  レベル ニックネーム
CHAN_ACCESS_LIST_FOOTER
#	End of access list.
	アクセスリストの最後。
CHAN_ACCESS_LIST_XOP_FORMAT
	  %3d   %s  %s
CHAN_ACCESS_LIST_AXS_FORMAT
	  %3d  %4d  %s
CHAN_ACCESS_CLEAR
#	Channel %s access list has been cleared.
	チャンネル %s の AOP リストを初期化しました。

# AKICK responses
CHAN_AKICK_SYNTAX
#	AKICK channel {ADD | STICK | UNSTICK | DEL | LIST | VIEW | ENFORCE | CLEAR} [nick-or-usermask] [reason]
	AKICK チャンネル {ADD | STICK | UNSTICK | DEL | LIST | VIEW | ENFORCE | CLEAR} [ニックネーム又はマスク] [理由]
CHAN_AKICK_DISABLED
#	Sorry, channel autokick list modification is temporarily disabled.
	チャンネルの自動キックリストの変更は一時的に禁止されています。
CHAN_AKICK_ALREADY_EXISTS
#	%s already exists on %s autokick list.
	チャンネル %s の自動キックリストに%s は登録済みです。
CHAN_AKICK_REACHED_LIMIT
#	Sorry, you can only have %d autokick masks on a channel.
	%d 個以上の自動キックマスクをつけることは出来ません。
CHAN_AKICK_ADDED
#	%s added to %s autokick list.
	チャンネル %s の自動キックリストに%s を追加しました。
CHAN_AKICK_NO_SUCH_ENTRY
#	No such entry (#%d) on %s autokick list.
	チャンネル %s の自動キックリストにエントリー(#%d) は見つかりません。
CHAN_AKICK_NOT_FOUND
#	%s not found on %s autokick list.
	チャンネル %s の自動キックリストに %s は見つかりません。
CHAN_AKICK_NO_MATCH
#	No matching entries on %s autokick list.
	チャンネル %s の自動キックリストにマッチするエントリーがありません。
CHAN_AKICK_STUCK
#	%s is now always active on channel %s.
	チャンネル %s の自動キックリスト内の%s に対するキック常に有効です。
CHAN_AKICK_UNSTUCK
#	%s is not always active anymore on channel %s.
	チャンネル %s の自動キックリスト内の%s に対するキック常に有効ではありません。
CHAN_AKICK_DELETED
#	%s deleted from %s autokick list.
	チャンネル %s の自動キックリストから %s を削除しました。
CHAN_AKICK_DELETED_ONE
#	Deleted 1 entry from %s autokick list.
	チャンネル %s の自動キックリストからエントリーを 1 個削除しました。
CHAN_AKICK_DELETED_SEVERAL
#	Deleted %d entries from %s autokick list.
	チャンネル %s の自動キックリストからエントリーを %d 個削除しました。
CHAN_AKICK_LIST_EMPTY
#	%s autokick list is empty.
	チャンネル %s の自動キックリストは空です。
CHAN_AKICK_LIST_HEADER
#	Autokick list for %s:
	チャンネル %s の自動キックリスト:
CHAN_AKICK_LIST_FORMAT
	  %3d %s (%s)
CHAN_AKICK_VIEW_FORMAT
	%3d %s (by %s on %s)
	    %s
CHAN_AKICK_VIEW_FORMAT_STUCK
	%3d %s (stuck) (by %s on %s)
	    %s
CHAN_AKICK_ENFORCE_DONE
#	AKICK ENFORCE for %s complete; %d users were affected.
	%s AKICK ENFORCE コマンド完了; %d 人のユーザに影響が出ました。
CHAN_AKICK_CLEAR
#	Channel %s akick list has been cleared.
	チャンネル %s の自動キックリストは空です。

# LEVELS responses
CHAN_LEVELS_SYNTAX
#	LEVELS channel {SET | DIS[ABLE] | LIST | RESET} [item [level]]
	LEVELS チャンネル {SET | DIS[ABLE] | LIST | RESET} [アイテム [レベル]]
CHAN_LEVELS_XOP
#	Levels are not available as xOP is enabled on this channel.
	このチャンネルでは xOP が有効なので、レベル設定を使えません。
CHAN_LEVELS_RANGE
#	Level must be between %d and %d inclusive.
	レベルは %d から %d の間に無くてはいけません。
CHAN_LEVELS_CHANGED
#	Level for %s on channel %s changed to %d.
	チャンネル %s の%s に対するレベルを %dに変更しました。
CHAN_LEVELS_UNKNOWN
#	Setting %s not known.  Type %R%s HELP LEVELS DESC for a list of valid settings.
	設定 %s は定義されていません。定義された設定のリストは %R%s HELP LEVELS DESC と入力してください。
CHAN_LEVELS_DISABLED
#	%s disabled on channel %s.
	チャンネル %s にてアクセスレベル%s の使用を禁止しました。
CHAN_LEVELS_LIST_HEADER
#	Access level settings for channel %s:
	チャンネル %s のアクセスレベル:
CHAN_LEVELS_LIST_DISABLED
	    %-*s  (disabled)
CHAN_LEVELS_LIST_FOUNDER
	    %-*s  (founder only)
CHAN_LEVELS_LIST_NORMAL
	    %-*s  %d
CHAN_LEVELS_RESET
#	Access levels for %s reset to defaults.
	%s のアクセスレベルを初期値に戻しました。

# Status Messages
CHAN_STATUS_SYNTAX
#	STATUS ERROR Syntax error
	STATUS ERROR 構文エラー
CHAN_STATUS_NOT_REGGED
#	STATUS ERROR Channel %s not registered
	STATUS ERROR チャンネル %s は登録されていません。
CHAN_STATUS_FORBIDDEN
#	STATUS ERROR Channel %s forbidden
	STATUS ERROR チャンネル %s は禁止されています。
CHAN_STATUS_NOTONLINE
#	STATUS ERROR Nick %s not online
	STATUS ERROR ニックネーム %s はオフラインです。
CHAN_STATUS_INFO
	STATUS %s %s %d

# INFO responses
CHAN_INFO_SYNTAX
	INFO channel [ALL]
CHAN_INFO_HEADER
#	Information for channel %s:
	チャンネル %s の情報:
CHAN_INFO_FOUNDER
#	        Founder: %s (%s)
	        設立者: %s (%s)
CHAN_INFO_NO_FOUNDER
#	        Founder: %s
	        設立者: %s
CHAN_INFO_SUCCESSOR
#	      Successor: %s (%s)
	      後継者: %s (%s)
CHAN_INFO_NO_SUCCESSOR
#	      Successor: %s
	      後継者: %s
CHAN_INFO_DESCRIPTION
#	    Description: %s
	    説明: %s
CHAN_INFO_ENTRYMSG
#	  Entry message: %s
	  エントリーメッセージ: %s
CHAN_INFO_TIME_REGGED
#	     Registered: %s
	     登録済み: %s
CHAN_INFO_LAST_USED
#	      Last used: %s
	      最新の使用: %s
CHAN_INFO_LAST_TOPIC
#	     Last topic: %s
	     最新のトピック: %s
CHAN_INFO_TOPIC_SET_BY
#	   Topic set by: %s
	   トピックを設定したユーザ: %s
CHAN_INFO_URL
	            URL: %s
CHAN_INFO_EMAIL
#	 E-mail address: %s
	 E-mail アドレス: %s
CHAN_INFO_BANTYPE
#	       Ban type: %d
	       禁止タイプ: %d
CHAN_INFO_OPTIONS
#	        Options: %s
	        オプション: %s
CHAN_INFO_OPT_KEEPTOPIC
	Topic Retention
CHAN_INFO_OPT_OPNOTICE
	OP Notice
CHAN_INFO_OPT_PEACE
	Peace
CHAN_INFO_OPT_PRIVATE
	Private
CHAN_INFO_OPT_RESTRICTED
	Restricted Access
CHAN_INFO_OPT_SECURE
	Secure
CHAN_INFO_OPT_SECUREOPS
	Secure Ops
CHAN_INFO_OPT_SECUREFOUNDER
	Secure Founder
CHAN_INFO_OPT_SIGNKICK
	Signed kicks
CHAN_INFO_OPT_TOPICLOCK
	Topic Lock
CHAN_INFO_OPT_XOP
	xOP lists system
CHAN_INFO_OPT_NONE
	None
CHAN_INFO_MODE_LOCK
	      Mode lock: %s
CHAN_INFO_EXPIRE
	      Expires on: %s
CHAN_INFO_NO_EXPIRE
#	This channel will not expire.
	このチャンネルはユーザがいなくなってもなくなりません。

# LIST responses
CHAN_LIST_SYNTAX
	LIST pattern
CHAN_LIST_SERVADMIN_SYNTAX
	LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE]
CHAN_LIST_HEADER
#	List of entries matching %s:
	%s にマッチするリスト:
CHAN_LIST_FORMAT
	    %-20s  %s
CHAN_LIST_END
#	End of list - %d/%d matches shown.
	リストの最後 - %d/%d 個のマッチしたエントリー。
	
# INVITE responses
CHAN_INVITE_SYNTAX
	INVITE channel

# UNBAN responses
CHAN_UNBAN_SYNTAX
	UNBAN channel
CHAN_UNBANNED
#	You have been unbanned from %s.
	%s から禁止解除しました。

# TOPIC responses
CHAN_TOPIC_SYNTAX
	TOPIC channel [topic]

# CLEAR responses
CHAN_CLEAR_SYNTAX
	CLEAR channel what
CHAN_CLEARED_BANS
#	All bans on channel %s have been removed.
	チャンネル %s の禁止リストを初期化しました。
CHAN_CLEARED_EXCEPTS
#	All excepts on channel %s have been removed.
	チャンネル %s の除外リストを初期化しました。
CHAN_CLEARED_MODES
#	All modes on channel %s have been reset.
	チャンネル %s のモードからすべてのモードを初期化しました。
CHAN_CLEARED_OPS
#	Mode +o has been cleared from channel %s.
	チャンネル %s のモードから +o を無効化しました。
CHAN_CLEARED_HOPS
#	Mode +h has been cleared from channel %s.
	チャンネル %s のモードから +h を無効化しました。
CHAN_CLEARED_VOICES
#	Mode +v has been cleared from channel %s.
	チャンネル %s のモードから +v を無効化しました。
CHAN_CLEARED_USERS
#	All users have been kicked from channel %s.
	チャンネル %s からすべてのユーザをキックしました。
CHAN_CLEARED_INVITES
#	All invites on channel %s have been removed.
	チャンネル %s の招聘リストを初期化しました。

# GETPASS responses
CHAN_GETPASS_SYNTAX
	GETPASS channel
CHAN_GETPASS_UNAVAILABLE
#	GETPASS command unavailable because encryption is in use.
	暗号化されているため、GETPASS コマンドは使えません。
CHAN_GETPASS_PASSWORD_IS
#	Password for channel %s is %s.
	チャンネル %s のパスワードは %s です。

# GETKEY responses
CHAN_GETKEY_SYNTAX
	GETKEY channel
CHAN_GETKEY_NOKEY
#	The channel %s has no key.
	チャンネル %s にキーが設定されていません。
CHAN_GETKEY_KEY
	KEY %s %s

# SENDPASS responses
CHAN_SENDPASS_SYNTAX
	SENDPASS channel
CHAN_SENDPASS_UNAVAILABLE
#	SENDPASS command unavailable because encryption is in use.
	暗号化されているため、SENDPASS コマンドは使えません。
CHAN_SENDPASS_SUBJECT
#	Channel password (%s)
	チャンネルパスワード (%s)
CHAN_SENDPASS_HEAD
#	Hi,
	こんにちわ。
CHAN_SENDPASS_LINE_1
#	You have requested to receive the password of channel %s by e-mail.
	チャンネル %s のパスワードを電子メールで要求しました。
CHAN_SENDPASS_LINE_2
#	The password is %s. For security reasons, you should change it as soon as you receive this mail.
	パスワードは %s です。保安上の理由からこのメールを受け取ったらすぐにパスワードを変更してください。
CHAN_SENDPASS_LINE_3
#	If you don't know why this mail is sent to you, please ignore it silently.
	このメールを受け取った理由がわからない場合、無視してください。
CHAN_SENDPASS_LINE_4
#	PLEASE DON'T ANSWER TO THIS MAIL!
	このメールに返信しないでください!
CHAN_SENDPASS_LINE_5
#	%s administrators.
	チャンネル %s の管理人。
CHAN_SENDPASS_OK
#	Password of %s has been sent.
	チャンネル %s のパスワードが送信されました。

# FORBID responses
CHAN_FORBID_SYNTAX
	FORBID channel [reason]
CHAN_FORBID_SYNTAX_REASON
	FORBID channel reason
CHAN_FORBID_SUCCEEDED
#	Channel %s is now forbidden.
	チャンネル %s を禁止にしました。
CHAN_FORBID_FAILED
#	Couldn't forbid channel %s!
	チャンネル %s を禁止に出来ません!
CHAN_FORBID_REASON
#	This channel has been forbidden.
	このチャンネルは禁止にされています。

# SUSPEND responses
CHAN_SUSPEND_SYNTAX
	SUSPEND channel [reason]
CHAN_SUSPEND_SYNTAX_REASON
	SUSPEND channel reason
CHAN_SUSPEND_SUCCEEDED
#	Channel %s is now suspended.
	チャンネル %s を休止状態にしました。
CHAN_SUSPEND_FAILED
#	Couldn't suspended channel %s!
	チャンネル %s を休止状態に出来ません!
CHAN_SUSPEND_REASON
#	This channel has been suspended.
	このチャンネルは休止状態です。

# UNSUSPEND responses
CHAN_UNSUSPEND_SYNTAX
	UNSUSPEND channel
CHAN_UNSUSPEND_ERROR
#	No # found in front of channel name.
	#がチャンネル名の前にありません。
CHAN_UNSUSPEND_SUCCEEDED
#	Channel %s is now released.
	チャンネル %s をリリースしました。
CHAN_UNSUSPEND_FAILED
#	Couldn't release channel %s!
	このチャンネルをリリースできません!


# Misc responses
CHAN_EXCEPTED
#	%s matches an except on %s and cannot be banned until the except have been removed.
	例外が解除されるまでは、チャンネル %s の例外にマッチした %s を禁止できません。

###########################################################################
#
# MemoServ messages
#
###########################################################################

# Automatic messages
MEMO_HAVE_NEW_MEMO
#	You have 1 new memo.
	 1 通の新しいメモがあります。
MEMO_HAVE_NEW_MEMOS
#	You have %d new memos.
	%d 通の新しいメモがあります。
MEMO_TYPE_READ_LAST
#	Type %R%s READ LAST to read it.
	%R%s READ LAST で最新のメモを読むことができます。
MEMO_TYPE_READ_NUM
#	Type %R%s READ %d to read it.
	%R%s READ %d で %d 通のメモを読むことができます。
MEMO_TYPE_LIST_NEW
#	Type %R%s LIST NEW to list them.
	%R%s LIST NEW で新着メモのリストが表示されます。
MEMO_AT_LIMIT
#	Warning: You have reached your maximum number of memos (%d).  You will be unable to receive any new memos until you delete some of your current ones.
	Warning: あなたが受け取れるメモの最大(%d)に達しました。現在のメモを削除しない限り、これ以上の新着メモを受け取ることはできません。
MEMO_OVER_LIMIT
#	Warning: You are over your maximum number of memos (%d).  You will be unable to receive any new memos until you delete some of your current ones.
	Warning: 既にあなたが受け取れるメモの最大(%d)に達しています。今あるメモを削除しない限り、これ以上の新着メモを受け取ることはできません。
MEMO_X_MANY_NOTICE
#	There are %d memos on channel %s.
	チャンネル %s に %d 通のメモがあります。
MEMO_X_ONE_NOTICE
#	There is %d memo on channel %s.
	チャンネル %s に %d 通のメモがあります。
MEMO_NEW_X_MEMO_ARRIVED
#	There is a new memo on channel %s.
#	Type %R%s READ %s %d to read it.
	チャンネル %s に新着メモがあります。
	メモを読むには、%R%s READ %s %d と入力してください。
MEMO_NEW_MEMO_ARRIVED
#	You have a new memo from %s.
#	Type %R%s READ %d to read it.
	%s からあなた宛に新着メモを受け取りました。
	メモを読むには、%R%s READ %d と入力してください。

# Multi-use responses
MEMO_HAVE_NO_MEMOS
#	You have no memos.
	メモを受け取っていません。
MEMO_X_HAS_NO_MEMOS
#	%s has no memos.
	%s はメモを受け取っていません。
MEMO_DOES_NOT_EXIST
#	Memo %d does not exist!
	%d 番目ののメモが見つかりませんでした!
MEMO_LIST_NOT_FOUND
#	No matching memos found.
	条件にマッチするメモが見つかりませんでした。

# SEND responses
MEMO_SEND_SYNTAX
	SEND {nick | channel} memo-text
MEMO_SEND_DISABLED
#	Sorry, memo sending is temporarily disabled.
	ご迷惑をおかけして申し訳ございません。一時的にメモを送ることができない状態です。
MEMO_SEND_PLEASE_WAIT
#	Please wait %d seconds before using the SEND command again.
	%d 秒待ってからもう一度 SEND コマンドをやり直してください。
MEMO_X_GETS_NO_MEMOS
#	%s cannot receive memos.
	%s はメモを受け取ることができません。
MEMO_X_HAS_TOO_MANY_MEMOS
#	%s currently has too many memos and cannot receive more.
	%s はこれ以上メモを受け取ることができません。
MEMO_SENT
#	Memo sent to %s.
	%s 宛てにメモを送信しました。
MEMO_MASS_SENT
#	A massmemo has been sent to all registered users.
	登録済みのユーザー全員宛にメモの大量送信が行われました。
	
# STAFF responses
MEMO_STAFF_SYNTAX
	STAFF memo-text
	
# CANCEL responses
MEMO_CANCEL_SYNTAX
	CANCEL {nick | channel}
MEMO_CANCEL_DISABLED
#	Sorry, memo canceling is temporarily disabled.
	ご迷惑をおかけして申し訳ありません。一時的にメモの送信をキャンセルすることができない状態になっています。
MEMO_CANCEL_NONE
#	No memo was cancelable.
	メモの送信がキャンセルされませんでした。
MEMO_CANCELLED
	Last memo to %s has been cancelled.
	最新の %s 宛てのメモ送信がキャンセルされました。

# LIST responses
MEMO_LIST_SYNTAX
	LIST [channel] [list | NEW]
MEMO_HAVE_NO_NEW_MEMOS
#	You have no new memos.
	新着メモがありません。
MEMO_X_HAS_NO_NEW_MEMOS
#	%s has no new memos.
	%s 宛ての新着メモはありません。
MEMO_LIST_MEMOS
#	Memos for %s.  To read, type: %R%s READ num
	%s 宛てのメモがあります。読むには、%R%s READ num のように入力してください。
MEMO_LIST_NEW_MEMOS
#	New memos for %s.  To read, type: %R%s READ num
	%s 宛ての新着メモがあります。読むには、%R%s READ num のように入力してください。
MEMO_LIST_CHAN_MEMOS
#	Memos for %s.  To read, type: %R%s READ %s num
	%s 宛てのメモがあります。読むには、%R%s READ %s num のように入力してください。
MEMO_LIST_CHAN_NEW_MEMOS
#	New memos for %s.  To read, type: %R%s READ %s num
	%s 宛ての新着メモがあります。読むには、 %R%s READ %s num のように入力してください。
MEMO_LIST_HEADER
#	 Num  Sender            Date/Time
	 番号 送信者            日時
MEMO_LIST_FORMAT
	%c%3d  %-16s  %s

# READ responses
MEMO_READ_SYNTAX
	READ [channel] {list | LAST | NEW}
MEMO_HEADER
#	Memo %d from %s (%s).  To delete, type: %R%s DEL %d
	%d 番目のメモ(送信者:%s 内容:%s)を削除するには、 %R%s DEL %d のように入力してください。
MEMO_CHAN_HEADER
#	Memo %d from %s (%s).  To delete, type: %R%s DEL %s %d
	%d 番目のメモ(送信者:%s 内容:%s)を削除するには、 %R%s DEL %s %d のように入力してください。
MEMO_TEXT
	%s

# DEL responses
MEMO_DEL_SYNTAX
	DEL [channel] {num | list | ALL}
MEMO_DELETED_NONE
#	No memos were deleted.
	これ以上メモを削除することはできません。
MEMO_DELETED_ONE
#	Memo %d has been deleted.
	%d 番目のメモを削除しました。
MEMO_DELETED_SEVERAL
#	Memos %s have been deleted.
	%s のメモを削除しました。
MEMO_DELETED_ALL
#	All of your memos have been deleted.
	あなた宛てのメモを全て削除しました。
MEMO_CHAN_DELETED_ALL
#	All memos for channel %s have been deleted.
	チャンネル %s 宛てのすべてのメモを削除しました。

# SET responses
MEMO_SET_SYNTAX
	SET option parameters
MEMO_SET_DISABLED
#	Sorry, memo option setting is temporarily disabled.
	ご迷惑をかけて申し訳ありません。メモ機能に対するオプション操作は一時的に使うことができない状態になっています。
MEMO_SET_UNKNOWN_OPTION
#	Unknown SET option %s.
	メモ機能の SET オプションで %s という引数を使うことはできません。

# SET NOTIFY responses
MEMO_SET_NOTIFY_SYNTAX
	SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}
MEMO_SET_NOTIFY_ON
#	%s will now notify you of memos when you log on and when they are sent to you.
	ログオン時と、あなた宛のメモが到着した時に、%s が新着メモを通知します。
MEMO_SET_NOTIFY_LOGON
#	%s will now notify you of memos when you log on or unset /AWAY.
	ログオン時と、/AWAY を解除した時に、%s が新着メモを通知します。
MEMO_SET_NOTIFY_NEW
#	%s will now notify you of memos when they are sent to you.
	メモが到着した時に、%s が新着メモを通知します。
MEMO_SET_NOTIFY_OFF
#	%s will not send you any notification of memos.
	%s はメモの着信をお知らせしません。
MEMO_SET_NOTIFY_MAIL
#	You will now be informed about new memos via email.
	email による新着メモの通知を有効にしました。
MEMO_SET_NOTIFY_NOMAIL
#	You will no longer be informed via email.
	email による新着メモの通知を無効にしました。
MEMO_SET_NOTIFY_INVALIDMAIL
#	There's no email address set for your nick.
	あなたのニックネームに対する email アドレスが見つかりません。

# SET LIMIT responses
MEMO_SET_LIMIT_SYNTAX
	SET LIMIT [channel] limit
MEMO_SET_LIMIT_SERVADMIN_SYNTAX
	SET LIMIT [user | channel] {limit | NONE} [HARD]
MEMO_SET_YOUR_LIMIT_FORBIDDEN
#	You are not permitted to change your memo limit.
	あなたはメモ保存量の上限値を変える許可を持っていません。
MEMO_SET_LIMIT_FORBIDDEN
#	The memo limit for %s may not be changed.
	%s のメモ保存量の上限値は変わりませんでした。
MEMO_SET_YOUR_LIMIT_TOO_HIGH
#	You cannot set your memo limit higher than %d.
	メモ保存量の上限値を %d 以上にすることはできません。
MEMO_SET_LIMIT_TOO_HIGH
#	You cannot set the memo limit for %s higher than %d.
	%s のメモ保存量の上限値を %d 以上にすることはできません。
MEMO_SET_LIMIT_OVERFLOW
#	Memo limit too large; limiting to %d instead.
	メモ保存量の上限値が大きすぎたため、%d に制限しました。
MEMO_SET_YOUR_LIMIT
#	Your memo limit has been set to %d.
	あなたのメモ保存量の上限を %d にしました。
MEMO_SET_YOUR_LIMIT_ZERO
#	You will no longer be able to receive memos.
	これ以上メモを受け取ることができません。
MEMO_UNSET_YOUR_LIMIT
#	Your memo limit has been disabled.
	メモ保存量の上限値が無効になりました。
MEMO_SET_LIMIT
#	Memo limit for %s set to %d.
	%s のメモ保存量の上限が %d になりました。
MEMO_SET_LIMIT_ZERO
#	Memo limit for %s set to 0.
	%s のメモ保存量の上限が 0 になりました。
MEMO_UNSET_LIMIT
#	Memo limit disabled for %s.
	%s のメモ保存量の上限値が無効になりました。

# INFO responses
MEMO_INFO_SYNTAX
	INFO [channel]
MEMO_INFO_SERVADMIN_SYNTAX
	INFO [nick | channel]
MEMO_INFO_NO_MEMOS
#	You currently have no memos.
	今のところ、あなた宛のメモはありません。
MEMO_INFO_MEMO
#	You currently have 1 memo.
	あなた宛のメモが 1 通あります。
MEMO_INFO_MEMO_UNREAD
#	You currently have 1 memo, and it has not yet been read.
	あなた宛のメモが 1 通あり、未読です。
MEMO_INFO_MEMOS
#	You currently have %d memos.
	あなた宛のメモが %d 通あります。
MEMO_INFO_MEMOS_ONE_UNREAD
#	You currently have %d memos, of which 1 is unread.
	あなた宛のメモが %d 通あり、内1 通が未読です。
MEMO_INFO_MEMOS_SOME_UNREAD
#	You currently have %d memos, of which %d are unread.
	あなた宛のメモが %d 通あり、内%d 通が未読です。
MEMO_INFO_MEMOS_ALL_UNREAD
#	You currently have %d memos; all of them are unread.
	あなた宛のメモが %d 通あり、全て未読です。
MEMO_INFO_LIMIT
#	Your memo limit is %d.
	あなた宛のメモ保存量の上限値は %d です。
MEMO_INFO_HARD_LIMIT
#	Your memo limit is %d, and may not be changed.
	あなた宛のメモ保存量の上限値は %d で変わりません。
MEMO_INFO_LIMIT_ZERO
#	Your memo limit is 0; you will not receive any new memos.
	あなた宛のメモ保存量の上限値が 0 なのでメモを受け取ることができない状態です。
MEMO_INFO_HARD_LIMIT_ZERO
#	Your memo limit is 0; you will not receive any new memos.  You cannot change this limit.
	あなた宛のメモ保存量の上限値が 0 なのでメモを受け取ることができない状態です。また、メモの上限値を変えることは出来ません。
MEMO_INFO_NO_LIMIT
#	You have no limit on the number of memos you may keep.
	あなた宛のメモ保存量の上限値が在りません。
MEMO_INFO_NOTIFY_OFF
#	You will not be notified of new memos.
	あなた宛の新着メモが到着してもお知らせしません。
MEMO_INFO_NOTIFY_ON
#	You will be notified of new memos at logon and when they arrive.
	あなた宛の新着メモの到着をログオン時と受信時にお知らせします。
MEMO_INFO_NOTIFY_RECEIVE
#	You will be notified when new memos arrive.
	あなた宛の新着メモの到着を受信時にお知らせします。
MEMO_INFO_NOTIFY_SIGNON
#	You will be notified of new memos at logon.
	あなた宛の新着メモの到着をログオン時にお知らせします。
MEMO_INFO_X_NO_MEMOS
#	%s currently has no memos.
	今のところ %s はメモを受け取っていません。
MEMO_INFO_X_MEMO
#	%s currently has 1 memo.
	%s 宛てのメモが 1 通あります。
MEMO_INFO_X_MEMO_UNREAD
#	%s currently has 1 memo, and it has not yet been read.
	%s 宛のメモが 1 通あり、未読です。
MEMO_INFO_X_MEMOS
#	%s currently has %d memos.
	%s 宛のメモが %d 通あります。
MEMO_INFO_X_MEMOS_ONE_UNREAD
#	%s currently has %d memos, of which 1 is unread.
	%s 宛のメモが %d 通あり、内1 通が未読です。
MEMO_INFO_X_MEMOS_SOME_UNREAD
#	%s currently has %d memos, of which %d are unread.
	%s 宛のメモが %d 通あり、内%d 通が未読です。
MEMO_INFO_X_MEMOS_ALL_UNREAD
#	%s currently has %d memos; all of them are unread.
	%s 宛のメモが %d 通あり、全て未読です。
MEMO_INFO_X_LIMIT
#	%s's memo limit is %d.
	%s 宛のメモ保存量の上限値は %d です。
MEMO_INFO_X_HARD_LIMIT
#	%s's memo limit is %d, and may not be changed.
	%s 宛のメモ保存量の上限値は %d で変わりません。
MEMO_INFO_X_NO_LIMIT
#	%s has no memo limit.
	%s 宛てのメモ保存量の上限値が在りません。
MEMO_INFO_X_NOTIFY_OFF
#	%s is not notified of new memos.
	%s 宛の新着メモを受け取ってもお知らせしません。
MEMO_INFO_X_NOTIFY_ON
#	%s is notified of new memos at logon and when they arrive.
	%s 宛の新着メモの到着をログオン時と受信時にお知らせします。
MEMO_INFO_X_NOTIFY_RECEIVE
#	%s is notified when new memos arrive.
	%s 宛の新着メモの到着を受信時にお知らせします。
MEMO_INFO_X_NOTIFY_SIGNON
#	%s is notified of news memos at logon.
	%s 宛の新着メモの到着をログオン時にお知らせします。

# Memo2Mail responses
MEMO_MAIL_SUBJECT
#	New memo
	新着メモ
MEMO_MAIL_TEXT1
#	Hi %s
	やぁ %s
MEMO_MAIL_TEXT2
#	You've just received a new memo from %s. This is memo number %d.
	%s からの新着メモが到着しました。メモ番号は %d です。
MEMO_MAIL_TEXT3
	Memo Text:
	メモ内容:

# RSEND responses
MEMO_RSEND_PLEASE_WAIT
#	Please wait %d seconds before using the RSEND command again.
	RSEND  コマンドを使う前に %d 秒待ってください。
MEMO_RSEND_DISABLED
#	Sorry, RSEND has been disabled on this network.
	ご迷惑をかけて申し訳ございません。RSEND コマンドをこのネットワークで使うことはできません。
MEMO_RSEND_SYNTAX
	RSEND {nick | channel} memo-text
MEMO_RSEND_NICK_MEMO_TEXT
#	[auto-memo] The memo you sent has been viewed.
	[auto-memo] あなたが送信したメモが開封されました。
MEMO_RSEND_CHAN_MEMO_TEXT
#	[auto-memo] The memo you sent to %s has been viewed.
	[auto-memo] あなたが %s 宛てに送信したメモが開封されました。
MEMO_RSEND_USER_NOTIFICATION
#	A notification memo has been sent to %s informing him/her you have
#	read his/her memo.
	%s 宛てにあなたが %s からのメモを開封したことを
	お知らせするメモが送信されました。

# CHECK responses
MEMO_CHECK_SYNTAX
	CHECK nickname
MEMO_CHECK_NOT_READ
#	The last memo you sent to %s (sent on %s) has not yet been read.
	あなたが %s 宛てに送信した最新のメモは未開封のままです。
MEMO_CHECK_READ
#	The last memo you sent to %s (sent on %s) has been read.
	あなたが %s 宛てに送信した最新のメモが開封されました。
MEMO_CHECK_NO_MEMO
#	Nick %s doesn't have a memo from you.
	あなたはニックネーム %s 宛てのメモを送信していません。
MEMO_NO_RSEND_SELF
#	You can not request a receipt when sending a memo to yourself.
	自分から自分宛てのメモをに対する開封確認をすることはできません。

###########################################################################
#
# BotServ messages
#
###########################################################################
	
# Standard responses
BOT_DOES_NOT_EXIST
#	Bot %s does not exist.
	ボット %s はいません。
BOT_NOT_ASSIGNED
#	You must assign a bot to the channel before using this command.
#	Type %R%S HELP ASSIGN for more information.
	このコマンドを使う前に、ボットをチャンネルに召喚しなければいけません。
	より詳細なヘルプは、%R%S HELP ASSIGN で見る事ができます。
BOT_NOT_ON_CHANNEL
#	Bot is not on channel %s.
	チャンネル %s にボットはいません。
	
# Kick reasons (must be a single line)
BOT_REASON_BADWORD
#	Don't use the word \"%s\" on this channel!
	このチャンネルで \"%s\" という単語は使わないでください。
BOT_REASON_BADWORD_GENTLE
#	Watch your language!
	言葉に気をつけてください！
BOT_REASON_BOLD
#	Don't use bolds on this channel!
	このチャンネルでは太字を使わないでください！
BOT_REASON_CAPS
#	Turn caps lock OFF!
	caps lock を OFF にしてください！
BOT_REASON_COLOR
#	Don't use colors on this channel!
	このチャンネルでは色付き文字を使わないでください！
BOT_REASON_FLOOD
#	Stop flooding!
	flood 攻撃を止めてください！
BOT_REASON_REPEAT
#	Stop repeating yourself!
	何回も同じ発言をしないでください！
BOT_REASON_REVERSE
#	Don't use reverses on this channel!
	このチャンネルでは反転文字を使わないでください！
BOT_REASON_UNDERLINE
#	Don't use underlines on this channel!
	このチャンネルでは下線を使わないでください！
	
# !seen replies
BOT_SEEN_BOT
#	You found me, %s!
	見つかっちゃったね。%s!
BOT_SEEN_YOU
#	Looking for yourself, eh %s?
	自分を探してるのかい %s?
BOT_SEEN_ON_CHANNEL
#	%s is on the channel right now!
	たった今、%s がこのチャンネルに参加しました！
BOT_SEEN_ON_CHANNEL_AS
#	%s is on the channel right now (as %s) ! 
	たった今、%s が %s としてこのチャンネルに参加しました！
BOT_SEEN_ON
#	%s was last seen here %s ago.
	%s がこのチャンネルにいたのは %s 前です。
BOT_SEEN_NEVER
#	I've never seen %s on this channel.
	%s は今までこのチャンネルに参加したことがないようです。
BOT_SEEN_UNKNOWN
#	I don't know who %s is.
	%s って誰ですか？

# BOT responses
BOT_BOT_SYNTAX
	BOT ADD nick user host real
	BOT CHANGE oldnick newnick [user [host [real]]]
	BOT DEL nick
BOT_BOT_ALREADY_EXISTS
#	Bot %s already exists.
	ボット %s は既にこのサーバーにいます。
BOT_BOT_CREATION_FAILED
#	Sorry, bot creation failed.
	ご迷惑をかけて申し訳ございません。ボット召喚に失敗しました。
BOT_BOT_READONLY
#	Sorry, bot modification is temporarily disabled.
	ご迷惑をかけて申し訳ございません。ボット召喚に失敗しました。
BOT_BOT_ADDED
#	%s!%s@%s (%s) added to the bot list.
	%s!%s@%s (%s) がボットリストに追加されました。
BOT_BOT_ANY_CHANGES
#	Old info is equal to the new one.
	infoに変化がありませんでした。
BOT_BOT_CHANGED
#	Bot %s has been changed to %s!%s@%s (%s)
	ボット %s は %s!%s@%s (%s) に変わりました。
BOT_BOT_DELETED
	Bot %s has been deleted.
	ボット %s は 削除されました。
	
# BOTLIST responses
BOT_BOTLIST_HEADER
#	Bot list:
	ボットリスト:
BOT_BOTLIST_PRIVATE_HEADER
#	Bots reserved to IRC operators:
	オペレーターに管理されているボット:
BOT_BOTLIST_FOOTER
#	%d bots available.
	%d 個のボットが活動中です。
BOT_BOTLIST_EMPTY
#	There are no bots available at this time.
#	Ask a Services admin to create one!
	現在活動中のボットはいません。
	サーバーオペレーターに1つボットを作るように要請してください!
	
# ASSIGN responses
BOT_ASSIGN_SYNTAX
	ASSIGN chan nick
BOT_ASSIGN_READONLY
#	Sorry, bot assignment is temporarily disabled.
	ご迷惑をおかけして申し訳ございません。一時的にボットの召喚ができなくなっています。
BOT_ASSIGN_ALREADY
#	Bot %s is already assigned to channel %s.
	ボット %s は既にチャンネル %s に召喚されています。
BOT_ASSIGN_ASSIGNED
#	Bot %s has been assigned to %s.
	ボット %s が %s に召喚されました。
	
# UNASSIGN responses
BOT_UNASSIGN_SYNTAX
	UNASSIGN chan
BOT_UNASSIGN_UNASSIGNED
#	There is no bot assigned to %s anymore.
	%s からボットを削除しました。
	
# INFO responses
BOT_INFO_SYNTAX
	INFO {chan | nick}
BOT_INFO_NOT_FOUND
#	%s is not a valid bot or registered channel.
	%s は正しいボットの名前でないか、このボットが登録されたチャンネルではありません。
BOT_INFO_BOT_HEADER
#	Information for bot %s:
	ボット %s の情報:
BOT_INFO_BOT_MASK
#	       Mask : %s@%s
	     マスク : %s@%s
BOT_INFO_BOT_REALNAME
	  Real name : %s
BOT_INFO_BOT_CREATED
#	    Created : %s
	   召喚日時 : %s
BOT_INFO_BOT_USAGE
#	    Used on : %d channel(s)
	     使用数 : %d チャンネル
BOT_INFO_BOT_OPTIONS
#	    Options : %s
	 オプション : %s
BOT_INFO_OPT_PRIVATE
#	Private
	プライベート
BOT_INFO_CHAN_HEADER
#	Information for channel %s:
	チャンネル %s の情報:
BOT_INFO_CHAN_BOT
#	           Bot nick : %s
	     ボットのニック : %s
BOT_INFO_CHAN_BOT_NONE
#	           Bot nick : not assigned yet.
	     ボットのニック : 設定されていません
BOT_INFO_CHAN_KICK_BADWORDS
#	   Bad words kicker : %s
	 禁止ワードキッカー : %s
BOT_INFO_CHAN_KICK_BADWORDS_BAN
#	   Bad words kicker : %s (%d kick(s) to ban)
	 禁止ワードキッカー : %s (バンするためにキックした回数: %d回)
BOT_INFO_CHAN_KICK_BOLDS
#	       Bolds kicker : %s
	       太字キッカー : %s
BOT_INFO_CHAN_KICK_BOLDS_BAN
#	       Bolds kicker : %s (%d kick(s) to ban)
	       太字キッカー : %s (バンするためにキックした回数: %d回)
BOT_INFO_CHAN_KICK_CAPS_ON
#	        Caps kicker : %s (minimum %d/%d%%)
	     大文字キッカー : %s (minimum %d/%d%%)
BOT_INFO_CHAN_KICK_CAPS_BAN
#	        Caps kicker : %s (%d kick(s) to ban; minimum %d/%d%%)
	     大文字キッカー : %s (バンするためにキックした回数: %d回; minimum %d/%d%%)
BOT_INFO_CHAN_KICK_CAPS_OFF
#	        Caps kicker : %s
	     大文字キッカー : %s
BOT_INFO_CHAN_KICK_COLORS
#	      Colors kicker : %s
	     色文字キッカー : %s
BOT_INFO_CHAN_KICK_COLORS_BAN
#	      Colors kicker : %s (%d kick(s) to ban)
	     色文字キッカー : %s(バンするためにキックした回数: %d回)
BOT_INFO_CHAN_KICK_FLOOD_ON
#	       Flood kicker : %s (%d lines in %ds)
	 Flood 攻撃キッカー : %s (%d 回の書き込みを %d 秒以内に行うとキック)
BOT_INFO_CHAN_KICK_FLOOD_BAN
#	       Flood kicker : %s (%d kick(s) to ban; %d lines in %ds)
	 Flood 攻撃キッカー : %s (バンするためにキックした回数: %d回; %d 回の書き込みを %d 秒以内に行うとキック)
BOT_INFO_CHAN_KICK_FLOOD_OFF
#	       Flood kicker : %s
	 Flood 攻撃キッカー : %s
BOT_INFO_CHAN_KICK_REPEAT_ON
#	      Repeat kicker : %s (%d times)
	   繰り返しキッカー : %s (%d 回でキック)
BOT_INFO_CHAN_KICK_REPEAT_BAN
#	      Repeat kicker : %s (%d kick(s) to ban; %d times)
	   繰り返しキッカー : %s (バンするためにキックした回数: %d回; %d 回でキック)
BOT_INFO_CHAN_KICK_REPEAT_OFF
#	      Repeat kicker : %s
	   繰り返しキッカー : %s
BOT_INFO_CHAN_KICK_REVERSES
#	    Reverses kicker : %s
	   反転表示キッカー : %s
BOT_INFO_CHAN_KICK_REVERSES_BAN
#	    Reverses kicker : %s (%d kick(s) to ban)
	   反転表示キッカー : %s (バンするためにキックした回数: %d回)
BOT_INFO_CHAN_KICK_UNDERLINES
#	  Underlines kicker : %s
	       下線キッカー : %s
BOT_INFO_CHAN_KICK_UNDERLINES_BAN
#	  Underlines kicker : %s (%d kick(s) to ban)
	       下線キッカー : %s (バンするためにキックした回数: %d回)
BOT_INFO_ACTIVE
#	enabled
	有効
BOT_INFO_INACTIVE
#	disabled
	無効
BOT_INFO_CHAN_OPTIONS
#	            Options : %s
	            オプション : %s
BOT_INFO_OPT_DONTKICKOPS
#	Ops protection
	オペレーター保護
BOT_INFO_OPT_DONTKICKVOICES
#	Voices protection
	Voicesユーザー保護
BOT_INFO_OPT_FANTASY
#	Fantasy
	ファンタジー
BOT_INFO_OPT_GREET
#	Greet
	挨拶
BOT_INFO_OPT_NOBOT
#	No bot
	ボット禁止
BOT_INFO_OPT_SYMBIOSIS
	Symbiosis
BOT_INFO_OPT_NONE
#	None
	未設定
	
# SET responses
BOT_SET_SYNTAX
	SET (channel | bot) option settings
BOT_SET_DISABLED
#	Sorry, bot option setting is temporarily disabled.
	ご迷惑をかけて申し訳ありません。ボット機能に対するオプション操作は一時的に使うことができない状態になっています。
BOT_SET_UNKNOWN
#	Unknown option %s.
#	Type %R%S HELP SET for more information.
	ボット機能の SET オプションで %s という引数を使うことはできません。
	より詳細なヘルプは、%R%S HELP SET で見る事ができます。
	
# SET DONTKICKOPS messages
BOT_SET_DONTKICKOPS_SYNTAX
	SET channel DONTKICKOPS {ON|OFF}
BOT_SET_DONTKICKOPS_ON
	Bot won't kick ops on channel %s.
	ボットはチャンネル %s から オペレーターをキックしません。
BOT_SET_DONTKICKOPS_OFF
	Bot will kick ops on channel %s.
	ボットはチャンネル %s から オペレーターをキックします。
	
# SET DONTKICKVOICES messages
BOT_SET_DONTKICKVOICES_SYNTAX
	SET channel DONTKICKVOICES {ON|OFF}
BOT_SET_DONTKICKVOICES_ON
#	Bot won't kick voices on channel %s.
	ボットはチャンネル %s から voiceユーザーをキックしません。
BOT_SET_DONTKICKVOICES_OFF
#	Bot will kick voices on channel %s.
	ボットはチャンネル %s から voiceユーザーをキックします。

# SET FANTASY messages
BOT_SET_FANTASY_SYNTAX
	SET channel FANTASY {ON|OFF}
BOT_SET_FANTASY_ON
#	Fantasy mode is now ON on channel %s.
	チャンネル %s でファンタジーモードが 有効化 されました。
BOT_SET_FANTASY_OFF
#	Fantasy mode is now OFF on channel %s.
	チャンネル %s でファンタジーモードが 無効化 されました。
	
# SET GREET messages
BOT_SET_GREET_SYNTAX
	SET channel GREET {ON|OFF}
BOT_SET_GREET_ON
#	Greet mode is now ON on channel %s.
	チャンネル %s で挨拶モードが 有効化 されました。
BOT_SET_GREET_OFF
#	Greet mode is now OFF on channel %s.
	チャンネル %s で挨拶モードが 無効化 されました。
	
# SET NOBOT
BOT_SET_NOBOT_SYNTAX
	SET botname NOBOT {ON|OFF}
BOT_SET_NOBOT_ON
#	No Bot mode is now ON on channel %s.
	チャンネル %s でボット禁止モードが有効化 されました。
BOT_SET_NOBOT_OFF
#	No Bot mode is now OFF on channel %s.
	チャンネル %s でボット禁止モードが無効化 されました。

# SET PRIVATE
BOT_SET_PRIVATE_SYNTAX
	SET botname PRIVATE {ON|OFF}
BOT_SET_PRIVATE_ON
#	Private mode of bot %s is now ON.
	ボット %s のプライベートモードが 有効化 されました。
BOT_SET_PRIVATE_OFF
#	Private mode of bot %s is now OFF.
	ボット %s のプライベートモードが 無効化 されました。

# SET SYMBIOSIS
BOT_SET_SYMBIOSIS_SYNTAX
	SET channel SYMBIOSIS {ON|OFF}
BOT_SET_SYMBIOSIS_ON
#	Symbiosis mode is now ON on channel %s.
	チャンネル %s で Symbiosis モードが 有効化 されました。
BOT_SET_SYMBIOSIS_OFF
#	Symbiosis mode is now OFF on channel %s.
	チャンネル %s で Symbiosis モードが 無効化 されました。
	
# KICK responses
BOT_KICK_SYNTAX
	KICK channel option {ON|OFF} [settings]
BOT_KICK_DISABLED
#	Sorry, kicker configuration is temporarily disabled.
	ご迷惑をかけて申し訳ありません。キック設定は一時的にすることができない状態になっています。
BOT_KICK_UNKNOWN
#	Unknown option %s.
#	Type %R%S HELP KICK for more information.
	キック機能のオプション項目に %s という項目はありません。
	より詳細なヘルプは、%R%S HELP KICK で見る事ができます。
BOT_KICK_BAD_TTB
	%s cannot be taken as times to ban.

BOT_KICK_BADWORDS_ON
#	Bot will now kick bad words. Use the BADWORDS command
#	to add or remove a bad word.
	ボットは 禁止ワード に反応してキックを行います。
	BADWORD コマンドで禁止ワードの追加と削除が行えます。
BOT_KICK_BADWORDS_ON_BAN
#	Bot will now kick bad words, and will place a ban after 
#	%d kicks for the same user. Use the BADWORDS command
#	to add or remove a bad word.
	ボットは 禁止ワード に反応してキックを行い、
	同一ユーザーのキックが %d 回になったところでバンします。
	BADWORD コマンドで禁止ワードの追加と削除が行えます。
BOT_KICK_BADWORDS_OFF
#	Bot won't kick bad words anymore.
	ボットは 禁止ワード の発言に対してキックを行いません。
BOT_KICK_BOLDS_ON
#	Bot will now kick bolds.
	ボットは 太文字 発言に対してキックを行います。
BOT_KICK_BOLDS_ON_BAN
#	Bot will now kick bolds, and will place a ban after 
#	%d kicks for the same user.
	ボットは 太文字 発言に対してキックを行い、
	同一ユーザーのキックが %d 回になったところでバンします。
BOT_KICK_BOLDS_OFF
#	Bot won't kick bolds anymore.
	ボットは 太文字 発言に対してキックを行いません。
BOT_KICK_CAPS_ON
#	Bot will now kick caps (they must constitute at least
#	%d characters and %d%% of the entire message).
	ボットは 大文字 発言に対してキックを行います。
	(大文字が少なくとも %d 文字以上で発言全体の文字数に対する割合が %d%% 以上)
BOT_KICK_CAPS_ON_BAN
#	Bot will now kick caps (they must constitute at least
#	%d characters and %d%% of the entire message), and will 
#	place a ban after %d kicks for the same user.
	ボットは 大文字 発言に対してキックを行い、
	(大文字が少なくとも %d 文字以上で発言全体の文字数に対する割合が %d%% 以上)
	同一ユーザーのキックが %d 回になったところでバンします。
BOT_KICK_CAPS_OFF
#	Bot won't kick caps anymore.
	ボットは 大文字 発言に対してキックを行いません。
BOT_KICK_COLORS_ON
#	Bot will now kick colors.
	ボットは 色文字 発言に対してキックを行います。
BOT_KICK_COLORS_ON_BAN
#	Bot will now kick colors, and will place a ban after %d 
#	kicks for the same user.
	ボットは 色文字 発言に対してキックを行い、
	同一ユーザーのキックが %d 回になったところでバンします。
BOT_KICK_COLORS_OFF
#	Bot won't kick colors anymore.
	ボットは 色文字 発言に対してキックを行いません。
BOT_KICK_FLOOD_ON
#	Bot will now kick flood (%d lines in %d seconds).
	ボットは flood 攻撃 に対してキックを行います。(%d 回の発言を %d 秒以内に繰り返したら)
BOT_KICK_FLOOD_ON_BAN
#	Bot will now kick flood (%d lines in %d seconds), and 
#	will place a ban after %d kicks for the same user.
	ボットは flood 攻撃 に対してキックを行い、(%d 回の発言を %d 秒以内に繰り返したら)
	同一ユーザーのキックが %d 回になったところでバンします。
BOT_KICK_FLOOD_OFF
#	Bot won't kick flood anymore.
	ボットは flood 攻撃 に対してキックを行いません。
BOT_KICK_REPEAT_ON
#	Bot will now kick repeats (users that say %d times
#	the same thing).
	ボットは 同一内容の発言 に対してキックを行います。(%d 回
	繰り返して同じ内容を発言した場合)
BOT_KICK_REPEAT_ON_BAN
#	Bot will now kick repeats (users that say %d times
#	the same thing), and will place a ban after %d 
#	kicks for the same user.
	ボットは 同一内容の発言 に対してキックを行い、(%d 回
	繰り返して同じ内容を発言した場合) 同一ユーザーのキックが %d 回
	になったところでバンします。
BOT_KICK_REPEAT_OFF
#	Bot won't kick repeats anymore.
	ボットは 同一内容の発言 に対してキックを行いません。
BOT_KICK_REVERSES_ON
#	Bot will now kick reverses.
	ボットは 反転文字発言 に対してキックを行います。
BOT_KICK_REVERSES_ON_BAN
#	Bot will now kick reverses, and will place a ban after %d 
#	kicks for the same user.
	ボットは 反転文字発言 に対してキックを行い、同一ユーザーのキックが %d 回
	になったところでバンします。
BOT_KICK_REVERSES_OFF
#	Bot won't kick reverses anymore.
	ボットは 反転文字発言 に対してキックを行いません。
BOT_KICK_UNDERLINES_ON
#	Bot will now kick underlines.
	ボットは 下線発言 に対してキックを行います。
BOT_KICK_UNDERLINES_ON_BAN
#	Bot will now kick underlines, and will place a ban after %d 
#	kicks for the same user.
	ボットは 下線発言 に対してキックを行い、同一ユーザーのキックが %d 回
	になったところでバンします。
BOT_KICK_UNDERLINES_OFF
#	Bot won't kick underlines anymore.
	ボットは 下線発言 に対してキックを行いません。
	
# BADWORDS messages
BOT_BADWORDS_SYNTAX
	BADWORDS channel {ADD|DEL|LIST|CLEAR} [word | entry-list] [SINGLE|START|END]
BOT_BADWORDS_DISABLED
#	Sorry, channel bad words list modification is temporarily disabled.
	ご迷惑をかけて申し訳ありません。禁止ワードリストの編集は一時的にすることができない状態になっています。
BOT_BADWORDS_REACHED_LIMIT
#	Sorry, you can only have %d bad words entries on a channel.
	ご迷惑をかけて申し訳ありません。禁止ワードリストの登録数は %d 個に制限されています。
BOT_BADWORDS_ALREADY_EXISTS
#	%s already exists in %s bad words list.
	%s は既に %s の禁止ワードリストに登録されています。
BOT_BADWORDS_ADDED
#	%s added to %s bad words list.
	%s が %s の禁止ワードリストに登録されました。
BOT_BADWORDS_NO_SUCH_ENTRY
#	No such entry (#%d) on %s bad words list.
	#%d というエントリは %s の禁止ワードリストに登録されていません。
BOT_BADWORDS_NOT_FOUND
#	%s not found on %s bad words list.
	%s は %s の禁止ワードリストに登録されていません。
BOT_BADWORDS_NO_MATCH
#	No matching entries on %s bad words list.
	該当するエントリが %s の禁止ワードリストに登録されていません。
BOT_BADWORDS_DELETED
#	%s deleted from %s bad words list.
	%s が %s の禁止ワードリストから削除されました。
BOT_BADWORDS_DELETED_ONE
#	Deleted 1 entry from %s bad words list.
	1個のエントリが %s の禁止ワードリストから削除されました。
BOT_BADWORDS_DELETED_SEVERAL
#	Deleted %d entries from %s bad words list.
	%d 個のエントリが %s の禁止ワードリストから削除されました。
BOT_BADWORDS_LIST_EMPTY
#	%s bad words list is empty.
	%s の禁止ワードリストに登録されているエントリはありません。
BOT_BADWORDS_LIST_HEADER
#	Bad words list for %s:
#	  Num   Word                           Type
	%s の禁止ワードリスト:
	  番号  ワード                         タイプ
BOT_BADWORDS_LIST_FORMAT
	  %3d   %-30s %s
BOT_BADWORDS_CLEAR
#	Bad words list is now empty.
	禁止ワードリストに登録されているエントリはありません。

# SAY responses
BOT_SAY_SYNTAX
	SAY channel text

# ACT responses
BOT_ACT_SYNTAX
	ACT channel text

# Errors
BOT_EXCEPT
	User matches channel except.
BOT_BAD_NICK
#	Bot Nicks may only contain valid nick characters.
	ボットのニックネームにはニックネームでの使用が許可されている文字を使ってください。
BOT_BAD_HOST
#	Bot Hosts may only contain valid host characters.
	ボットのホストネームにはホストネームでの使用が許可されている文字を使ってください。
BOT_BAD_IDENT
#	Bot Idents may only contain valid characters.
	ボットのIdentsにはIdentsでの使用が許可されている文字を使ってください。
BOT_LONG_IDENT
#	Bot Idents may only contain %d characters.
	ボットのIdentsには %d 文字以上必要です。
BOT_LONG_HOST
#	Bot Hosts may only contain %d characters.
	ボットのホストネームには %d 文字以上必要です。

###########################################################################
#
# OperServ messages
#
###########################################################################

# General messages
OPER_BOUNCY_MODES
#	Services is unable to change modes.  Are your servers configured correctly?
	モードを変えることができません。サーバーの設定を見直してください。
OPER_BOUNCY_MODES_U_LINE
#	Services is unable to change modes.  Are your servers' U:lines configured correctly?
	モードを変えることができません。サーバーの設定項目のU:linesの項目を見直してください。

# GLOBAL responses
OPER_GLOBAL_SYNTAX
	GLOBAL message

# STATS responses
OPER_STATS_UNKNOWN_OPTION
#	Unknown STATS option %s.
	STATS オプションに %s が見つかりません。
OPER_STATS_CURRENT_USERS
#	Current users: %d (%d ops)
	現在のユーザー数: %d (オペレーター数 %d)
OPER_STATS_MAX_USERS
#	Maximum users: %d (%s)
	ユーザー数の上限: %d (%s)
# This is ugly, but at least it's language-portable...
# Note that you can include seconds in any of these--my personal preference
# is to only give resolution to the nearest minute when uptime is one hour
# or more, but just add a %d to get seconds as well.
# これは冗長ですが、多言語対応(名詞の複数変化)のためです。
# 以下のすべての項目に秒のフィールドを含めることができることに注意してください。
# 以下の設定では、uptime が1時間を越えると秒の代わりに分を表示するようになります。
# しかし、%dのフィールドを追加することで秒を表示することもできます。
OPER_STATS_UPTIME_DHMS
#	Services up %d days, %02d:%02d
	サービス継続時間 %d 日, %02d:%02d
OPER_STATS_UPTIME_1DHMS
#	Services up %d day, %02d:%02d
	サービス継続時間 %d 日, %02d:%02d
OPER_STATS_UPTIME_HMS
#	Services up %d hours, %d minutes
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_HM1S
#	Services up %d hours, %d minutes
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_H1MS
#	Services up %d hours, %d minute
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_H1M1S
#	Services up %d hours, %d minute
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_1HMS
#	Services up %d hour, %d minutes
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_1HM1S
#	Services up %d hour, %d minutes
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_1H1MS
#	Services up %d hour, %d minute
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_1H1M1S
#	Services up %d hour, %d minute
	サービス継続時間 %d 時間, %d 分
OPER_STATS_UPTIME_MS
#	Services up %d minutes, %d seconds
	サービス継続時間 %d 分, %d 秒
OPER_STATS_UPTIME_M1S
#	Services up %d minutes, %d second
	サービス継続時間 %d 分, %d 秒
OPER_STATS_UPTIME_1MS
#	Services up %d minute, %d seconds
	サービス継続時間 %d 分, %d 秒
OPER_STATS_UPTIME_1M1S
#	Services up %d minute, %d second
	サービス継続時間 %d 分, %d 秒
OPER_STATS_BYTES_READ
#	Bytes read    : %5d kB
	読み取りバイト: %5d kB
OPER_STATS_BYTES_WRITTEN
#	Bytes written : %5d kB
	書き込みバイト: %5d kB
OPER_STATS_USER_MEM
#	User          : %6d records, %5d kB
	ユーザー数      : %6d レコード, %5d kB
OPER_STATS_CHANNEL_MEM
#	Channel       : %6d records, %5d kB
	チャンネル数  : %6d レコード, %5d kB
OPER_STATS_GROUPS_MEM
#	NS Groups     : %6d records, %5d kB
	NS グループ数 : %6d レコード, %5d kB
OPER_STATS_ALIASES_MEM
#	NS Aliases    : %6d records, %5d kB
	NS エイリアス数:%6d レコード, %5d kB
OPER_STATS_CHANSERV_MEM
#	ChanServ      : %6d records, %5d kB
	ChanServ      : %6d レコード, %5d kB
OPER_STATS_BOTSERV_MEM
#	BotServ       : %6d records, %5d kB
	BotServ       : %6d レコード, %5d kB
OPER_STATS_HOSTSERV_MEM
#	HostServ      : %6d records, %5d kB
	HostServ      : %6d レコード, %5d kB
OPER_STATS_OPERSERV_MEM
#	OperServ      : %6d records, %5d kB
	OperServ      : %6d レコード, %5d kB
OPER_STATS_SESSIONS_MEM
#	Sessions      : %6d records, %5d kB
	セッション数  : %6d レコード, %5d kB
OPER_STATS_AKILL_COUNT
#	Current number of AKILLs: %d
	現在までに AKILL した数 : %d
OPER_STATS_AKILL_EXPIRE_DAYS
#	Default AKILL expiry time: %d days
	AKILL 失効時間の初期値   : %d 日
OPER_STATS_AKILL_EXPIRE_DAY
#	Default AKILL expiry time: 1 day
	AKILL 失効時間の初期値   : 1 日
OPER_STATS_AKILL_EXPIRE_HOURS
#	Default AKILL expiry time: %d hours
	AKILL 失効時間の初期値   : %d 時間
OPER_STATS_AKILL_EXPIRE_HOUR
#	Default AKILL expiry time: 1 hour
	AKILL 失効時間の初期値   : 1 時間
OPER_STATS_AKILL_EXPIRE_MINS
#	Default AKILL expiry time: %d minutes
	AKILL 失効時間の初期値   : %d 分
OPER_STATS_AKILL_EXPIRE_MIN
#	Default AKILL expiry time: 1 minute
	AKILL 失効時間の初期値   : 1 分
OPER_STATS_AKILL_EXPIRE_NONE
#	Default AKILL expiry time: No expiration
	AKILL 失効時間の初期値   : 未設定
OPER_STATS_SGLINE_COUNT
#	Current number of SGLINEs: %d
	現在の SGLINE 数         : %d
OPER_STATS_SGLINE_EXPIRE_DAYS
#	Default SGLINE expiry time: %d days
	SGLINE 失効時間の初期値   : %d 日
OPER_STATS_SGLINE_EXPIRE_DAY
#	Default SGLINE expiry time: 1 day
	SGLINE 失効時間の初期値   : 1 日
OPER_STATS_SGLINE_EXPIRE_HOURS
#	Default SGLINE expiry time: %d hours
	SGLINE 失効時間の初期値   : %d 時間
OPER_STATS_SGLINE_EXPIRE_HOUR
#	Default SGLINE expiry time: 1 hour
	SGLINE 失効時間の初期値   : 1 時間
OPER_STATS_SGLINE_EXPIRE_MINS
#	Default SGLINE expiry time: %d minutes
	SGLINE 失効時間の初期値   : %d 分
OPER_STATS_SGLINE_EXPIRE_MIN
#	Default SGLINE expiry time: 1 minute
	SGLINE 失効時間の初期値   : 1 分
OPER_STATS_SGLINE_EXPIRE_NONE
#	Default SGLINE expiry time: No expiration
	SGLINE 失効時間の初期値   : 未設定
OPER_STATS_SQLINE_COUNT
#	Current number of SQLINEs: %d
	現在の SQLINE 数         : %d
OPER_STATS_SQLINE_EXPIRE_DAYS
#	Default SQLINE expiry time: %d days
	SQLINE 失効時間の初期値   : %d 日
OPER_STATS_SQLINE_EXPIRE_DAY
#	Default SQLINE expiry time: 1 day
	SQLINE 失効時間の初期値   : 1 日
OPER_STATS_SQLINE_EXPIRE_HOURS
#	Default SQLINE expiry time: %d hours
	SQLINE 失効時間の初期値   : %d 時間
OPER_STATS_SQLINE_EXPIRE_HOUR
#	Default SQLINE expiry time: 1 hour
	SQLINE 失効時間の初期値   : 1 時間
OPER_STATS_SQLINE_EXPIRE_MINS
#	Default SQLINE expiry time: %d minutes
	SQLINE 失効時間の初期値   : %d 分
OPER_STATS_SQLINE_EXPIRE_MIN
#	Default SQLINE expiry time: 1 minute
	SQLINE 失効時間の初期値   : 1 分
OPER_STATS_SQLINE_EXPIRE_NONE
#	Default SQLINE expiry time: No expiration
	SQLINE 失効時間の初期値   : 未設定
OPER_STATS_SZLINE_COUNT
#	Current number of SZLINEs: %d
	現在の SZLINE 数         : %d
OPER_STATS_SZLINE_EXPIRE_DAYS
#	Default SZLINE expiry time: %d days
	SZLINE 失効時間の初期値   : %d 日
OPER_STATS_SZLINE_EXPIRE_DAY
#	Default SZLINE expiry time: 1 day
	SZLINE 失効時間の初期値   : 1 日
OPER_STATS_SZLINE_EXPIRE_HOURS
#	Default SZLINE expiry time: %d hours
	SZLINE 失効時間の初期値   : %d 時間
OPER_STATS_SZLINE_EXPIRE_HOUR
#	Default SZLINE expiry time: 1 hour
	SZLINE 失効時間の初期値   : 1 時間
OPER_STATS_SZLINE_EXPIRE_MINS
#	Default SZLINE expiry time: %d minutes
	SZLINE 失効時間の初期値   : %d 分
OPER_STATS_SZLINE_EXPIRE_MIN
#	Default SZLINE expiry time: 1 minute
	SZLINE 失効時間の初期値   : 1 分
OPER_STATS_SZLINE_EXPIRE_NONE
#	Default SZLINE expiry time: No expiration
	SZLINE 失効時間の初期値   : 未設定
OPER_STATS_RESET
#	Statistics reset.
	設定がリセットされました。
OPER_STATS_UPLINK_SERVER
#	Uplink server: %s
	アップリンクサーバー: %s
OPER_STATS_UPLINK_CAPAB
	Uplink capab: %s
OPER_STATS_UPLINK_SERVER_COUNT
#	Servers found: %d
	アップリンクサーバー数: %d

# MODE responses
OPER_MODE_SYNTAX
	MODE channel modes

# UMODE respondes
OPER_UMODE_SYNTAX
	UMODE nick modes
OPER_UMODE_SUCCESS
#	Changed usermodes of %s.
	%s のユーザーモードを変更しました。
OPER_UMODE_CHANGED
#	%s changed your usermodes.
	%s があなたのユーザーモードを変更しました。

# OLINE responses
OPER_OLINE_SYNTAX
	OLINE nick flags
OPER_OLINE_SUCCESS
#	Operflags %s have been added for %s.
	オペレーターフラグ %s が %s に設定されました。
OPER_OLINE_IRCOP
#	You are now an IRC Operator.
	あなたは現在 IRC オペレーターです。

# CLEARMODES responses
OPER_CLEARMODES_SYNTAX
	CLEARMODES channel [ALL]
OPER_CLEARMODES_DONE
#	Binary modes and bans cleared from channel %s.
	チャンネル %s のバイナリモードとbanリストが初期化されました。
OPER_CLEARMODES_ALL_DONE
	All modes cleared from channel %s.
	チャンネル %s のすべてのモードが初期化されました。

# KICK responses
OPER_KICK_SYNTAX
	KICK channel user reason

# SVSNICK responses
OPER_SVSNICK_SYNTAX
	SVSNICK nick newnick 
OPER_SVSNICK_NEWNICK
#	The nick %s is now being changed to %s.
	%s のニックネームが %s に変わりました。
	
# ADMIN responses
OPER_ADMIN_SYNTAX
	ADMIN {ADD|DEL|LIST|CLEAR} [nick | entry-list]
OPER_ADMIN_SKELETON
#	Services is in skeleton mode; the ADMIN command is unavailable.
	サービスはスケルトンモードになっています。ADMIN コマンドは使えません。
OPER_ADMIN_EXISTS
#	%s already exists on Services admin list.
	%s は既にサービス管理者リストに登録されています。
OPER_ADMIN_REACHED_LIMIT
#	Sorry, you can only have %d Services admins.
	ご迷惑をかけて申し訳ありません。あなたは %d 個以上のサービス管理者にはなれません。
OPER_ADMIN_ADDED
#	%s added to Services admin list.
	%s がサービス管理者リストに登録されました。
OPER_ADMIN_NOT_FOUND
#	%s not found on Services admin list.
	%s はサービス管理者リストに登録されていません。
OPER_ADMIN_NO_MATCH
#	No matching entries on Services admin list.
	サービス管理者リストに該当するエントリが見つかりませんでした。
OPER_ADMIN_DELETED
#	%s deleted from Services admin list.
	%s がサービス管理者リストから削除されました。
OPER_ADMIN_DELETED_ONE
#	Deleted 1 entry from Services admin list.
	1 個のエントリがサービス管理者リストから削除されました。
OPER_ADMIN_DELETED_SEVERAL
#	Deleted %d entries from Services admin list.
	%d 個のエントリがサービス管理者リストから削除されました。
OPER_ADMIN_LIST_EMPTY
#	Services admin list is empty.
	サービス管理者リストが空です。
OPER_ADMIN_LIST_HEADER
#	Services admin list:
#	  Num   Nick
	サービス管理者リスト:
	  番号  ニックネーム
OPER_ADMIN_LIST_FORMAT
	  %3d   %s
OPER_ADMIN_CLEAR
#	Services admin list has been cleared.
	サービス管理者リストが空になりました。
OPER_ADMIN_MOVED
#	%s has been moved to Services Administrators list.
	%s がサービス管理者リストに移動されました。

# OPER responses
OPER_OPER_SYNTAX
	OPER {ADD|DEL|LIST|CLEAR} [nick | entry-list]
OPER_OPER_SKELETON
#	Services is in skeleton mode; the OPER command is unavailable.
	サービスはスケルトンモードになっています。OPER コマンドは使えません。
OPER_OPER_EXISTS
#	%s already exists on Services operator list.
	%s は既にサービスオペレーターリストに登録されています。
OPER_OPER_REACHED_LIMIT
#	Sorry, you can only have %d Services operators.
	ご迷惑をかけて申し訳ありません。あなたは %d 個以上のサービスオペレーターにはなれません。
OPER_OPER_ADDED
#	%s added to Services operator list.
	%s がサービスオペレーターリストに登録されました。
OPER_OPER_NOT_FOUND
#	%s not found on Services operator list.
	%s はサービスオペレーターリストに登録されていません。
OPER_OPER_NO_MATCH
#	No matching entries on Services operator list.
	サービスオペレーターリストに該当するエントリが見つかりませんでした。
OPER_OPER_DELETED
#	%s deleted from Services operator list.
	%s がサービスオペレーターリストから削除されました。
OPER_OPER_DELETED_ONE
#	Deleted 1 entry from Services operator list.
	1 個のエントリがサービスオペレーターリストから削除されました。
OPER_OPER_DELETED_SEVERAL
#	Deleted %d entries from Services operator list.
	%d 個のエントリがサービスオペレーターリストから削除されました。
OPER_OPER_LIST_EMPTY
#	Services operator list is empty.
	サービスオペレーターリストが空です。
OPER_OPER_LIST_HEADER
#	Services operator list:
#	  Num   Nick
	サービスオペレーターリスト:
	  番号  ニックネーム
OPER_OPER_LIST_FORMAT
	  %3d   %s
OPER_OPER_CLEAR
#	Services operator list has been cleared.
	サービスオペレーターリストが空になりました。
OPER_OPER_MOVED
#	%s has been moved to Services Operators list.
	%s がサービスオペレーターリストに移動されました。

# AKILL responses
OPER_AKILL_SYNTAX
	AKILL {ADD | DEL | LIST | VIEW | CLEAR} [[+expiry] {mask | entry-list} [reason]]
OPER_AKILL_EXISTS
#	%s already exists on the AKILL list.
	%s は既に AKILL リストに登録されています。
OPER_AKILL_ALREADY_COVERED
#	%s is already covered by %s.
	%s は 登録済みのマスク %s にマッチします。
OPER_AKILL_REACHED_LIMIT
#	Sorry, you can only have %d AKILLs.
	ご迷惑をかけて申し訳ございません。AKILL リスト登録数の上限は %d です。
OPER_AKILL_NO_NICK
#	Reminder: AKILL masks cannot contain nicknames; make sure you have not included a nick portion in your mask.
	リマインダ: AKILL マスクにニックネームを使うことはできません。マスクにニックネームが含まれていないか確認してください。
OPER_AKILL_ADDED
#	%s added to the AKILL list.
	%s が AKILL リストに登録されました。
OPER_AKILL_CHANGED
#	Expiry time of %s changed.
	%s の AKILL 失効時間が変更されました。
OPER_AKILL_NOT_FOUND
#	%s not found on the AKILL list.
	%s は AKILL リストに登録されていません。
OPER_AKILL_NO_MATCH
#	No matching entries on the AKILL list.
	AKILL リストに該当するエントリが見つかりませんでした。
OPER_AKILL_DELETED
#	%s deleted from the AKILL list.
	%s が AKILL リストから削除されました。
OPER_AKILL_DELETED_ONE
#	Deleted 1 entry from the AKILL list.
	1 個のエントリが AKILL リストから削除されました。
OPER_AKILL_DELETED_SEVERAL
#	Deleted %d entries from the AKILL list.
	%d 個のエントリが AKILL リストから削除されました。
OPER_AKILL_LIST_EMPTY
#	AKILL list is empty.
	AKILL リストが空です。
OPER_AKILL_LIST_HEADER
#	Current AKILL list:
#	  Num   Mask                              Reason
	現在の AKILL リスト:
	  番号  マスク                            理由
OPER_AKILL_LIST_FORMAT
	  %3d   %-32s  %s
OPER_AKILL_VIEW_HEADER
#	Current AKILL list:
	現在の AKILL リスト:
# number, mask, set-by, set-time, expires, reason
OPER_AKILL_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_AKILL_CLEAR
#	The AKILL list has been cleared.
	AKILL リストが空になりました。
OPER_CHANKILL_SYNTAX
	CHANKILL [+expiry] {#channel} [reason]
# SGLINE responses
OPER_SGLINE_SYNTAX
	SGLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+expiry] {mask | entry-list}[:reason]]
OPER_SGLINE_UNSUPPORTED
#	Sorry, SGLINE is not available on this network.
	ご迷惑をかけて申し訳ありません。SGLINE はこのネットワークでは使えません。
OPER_SGLINE_EXISTS
#	%s already exists on the SGLINE list.
	%s は既に SGLINE リストに登録されています。
OPER_SGLINE_ALREADY_COVERED
#	%s is already covered by %s.
	%s は 登録済みのマスク %s にマッチします。
OPER_SGLINE_REACHED_LIMIT
#	Sorry, you can only have %d SGLINEs.
	ご迷惑をかけて申し訳ございません。SGLINE リスト登録数の上限は %d です。
OPER_SGLINE_ADDED
#	%s added to the SGLINE list.
	%s が SGLINE リストに登録されました。
OPER_SGLINE_CHANGED
#	Expiry time of %s changed.
	%s の SGLINE 失効時間が変更されました。
OPER_SGLINE_NOT_FOUND
#	%s not found on the SGLINE list.
	%s は SGLINE リストに登録されていません。
OPER_SGLINE_NO_MATCH
#	No matching entries on the SGLINE list.
	SGLINE リストに該当するエントリが見つかりませんでした。
OPER_SGLINE_DELETED
#	%s deleted from the SGLINE list.
	%s が SGLINE リストから削除されました。
OPER_SGLINE_DELETED_ONE
#	Deleted 1 entry from the SGLINE list.
	1 個のエントリが SGLINE リストから削除されました。
OPER_SGLINE_DELETED_SEVERAL
#	Deleted %d entries from the SGLINE list.
	%d 個のエントリが SGLINE リストから削除されました。
OPER_SGLINE_LIST_EMPTY
#	SGLINE list is empty.
	SGLINE リストが空です。
OPER_SGLINE_LIST_HEADER
#	Current SGLINE list:
#	  Num   Mask                              Reason
	現在の SGLINE リスト:
	  番号  マスク                            理由
OPER_SGLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SGLINE_VIEW_HEADER
#	Current SGLINE list:
	現在の SGLINE リスト:
# number, mask, set-by, set-time, expires, reason
OPER_SGLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SGLINE_CLEAR
#	The SGLINE list has been cleared.
	SGLINE リストが空になりました。

# SQLINE responses
OPER_SQLINE_SYNTAX
	SQLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+expiry] {mask | entry-list} [reason]]
OPER_SQLINE_CHANNELS_UNSUPPORTED
#	Channel SQLINEs are not supported by your IRCd, so you can't use them.
	チャンネル SQLINE は御使用中のIRCデーモンではサポートされていません。そのためこの機能を使うことはできません。
OPER_SQLINE_EXISTS
#	%s already exists on the SQLINE list.
	%s は既に SQLINE リストに登録されています。
OPER_SQLINE_ALREADY_COVERED
#	%s is already covered by %s.
	%s は 登録済みのマスク %s にマッチします。
OPER_SQLINE_REACHED_LIMIT
#	Sorry, you can only have %d SQLINEs.
	ご迷惑をかけて申し訳ございません。SQLINE リスト登録数の上限は %d です。
OPER_SQLINE_ADDED
#	%s added to the SQLINE list.
	%s が SQLINE リストに登録されました。
OPER_SQLINE_CHANGED
#	Expiry time of %s changed.
	%s の SQLINE 失効時間が変更されました。
OPER_SQLINE_NOT_FOUND
#	%s not found on the SQLINE list.
	%s は SQLINE リストに登録されていません。
OPER_SQLINE_NO_MATCH
#	No matching entries on the SQLINE list.
	SQLINE リストに該当するエントリが見つかりませんでした。
OPER_SQLINE_DELETED
#	%s deleted from the SQLINE list.
	%s が SQLINE リストから削除されました。
OPER_SQLINE_DELETED_ONE
#	Deleted 1 entry from the SQLINE list.
	1 個のエントリが SQLINE リストから削除されました。
OPER_SQLINE_DELETED_SEVERAL
#	Deleted %d entries from the SQLINE list.
	%d 個のエントリが SQLINE リストから削除されました。
OPER_SQLINE_LIST_EMPTY
#	SQLINE list is empty.
	SQLINE リストが空です。
OPER_SQLINE_LIST_HEADER
#	Current SQLINE list:
#	  Num   Mask                              Reason
	現在の SQLINE リスト:
	  番号  マスク                            理由
OPER_SQLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SQLINE_VIEW_HEADER
#	Current SQLINE list:
	現在の SQLINE リスト:
# number, mask, set-by, set-time, expires, reason
OPER_SQLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SQLINE_CLEAR
#	The SQLINE list has been cleared.
	SQLINE リストが空になりました。

# SZLINE responses
OPER_SZLINE_SYNTAX
	SZLINE {ADD | DEL | LIST | VIEW | CLEAR} [[+expiry] {mask | entry-list} [reason]]
OPER_SZLINE_UNSUPPORTED
#	Sorry, SZLINE is not available on this network.
	ご迷惑をかけて申し訳ありません。SZLINE はこのネットワークでは使えません。
OPER_SZLINE_EXISTS
#	%s already exists on the SZLINE list.
	%s は既に SZLINE リストに登録されています。
OPER_SZLINE_ALREADY_COVERED
#	%s is already covered by %s.
	%s は 登録済みのマスク %s にマッチします。
OPER_SZLINE_REACHED_LIMIT
#	Sorry, you can only have %d SZLINEs.
	ご迷惑をかけて申し訳ございません。SZLINE リスト登録数の上限は %d です。
OPER_SZLINE_ONLY_IPS
#	Reminder: you can only add IP masks to the SZLINE list.
	リマインダ: SZLINE リストには IP アドレスマスク以外は登録できません。
OPER_SZLINE_ADDED
#	%s added to the SZLINE list.
	%s が SZLINE リストに登録されました。
OPER_SZLINE_CHANGED
#	Expiry time of %s changed.
	%s の SZLINE 失効時間が変更されました。
OPER_SZLINE_NOT_FOUND
#	%s not found on the SZLINE list.
	%s は SZLINE リストに登録されていません。
OPER_SZLINE_NO_MATCH
#	No matching entries on the SZLINE list.
	SZLINE リストに該当するエントリが見つかりませんでした。
OPER_SZLINE_DELETED
#	%s deleted from the SZLINE list.
	%s が SZLINE リストから削除されました。
OPER_SZLINE_DELETED_ONE
#	Deleted 1 entry from the SZLINE list.
	1 個のエントリが SZLINE リストから削除されました。
OPER_SZLINE_DELETED_SEVERAL
#	Deleted %d entries from the SZLINE list.
	%d 個のエントリが SZLINE リストから削除されました。
OPER_SZLINE_LIST_EMPTY
#	SZLINE list is empty.
	SZLINE リストが空です。
OPER_SZLINE_LIST_HEADER
#	Current SZLINE list:
#	  Num   Mask                              Reason
	現在の SZLINE リスト:
	  番号  マスク                            理由
OPER_SZLINE_LIST_FORMAT
	  %3d   %-32s  %s
OPER_SZLINE_VIEW_HEADER
#	Current SZLINE list:
	現在の SZLINE リスト:
# number, mask, set-by, set-time, expires, reason
OPER_SZLINE_VIEW_FORMAT
	%3d  %s (by %s on %s; %s)
	      %s
OPER_SZLINE_CLEAR
#	The SZLINE list has been cleared.
	SZLINE リストが空になりました。

# SET responses
OPER_SET_SYNTAX
	SET option setting
OPER_SET_IGNORE_ON
#	Ignore code will be used.
	無視コードを使用します。
OPER_SET_IGNORE_OFF
#	Ignore code will not be used.
	無視コードを使用しません。
OPER_SET_IGNORE_ERROR
#	Setting for IGNORE must be ON or OFF.
	IGNORE の setting 引数は ON か OFF のどちらかにしてください。
OPER_SET_READONLY_ON
#	Services are now in read-only mode.
	サービスは読取専用モードになっています。
OPER_SET_READONLY_OFF
#	Services are now in read-write mode.
	サービスは読み書きモードになっています。
OPER_SET_READONLY_ERROR
#	Setting for READONLY must be ON or OFF.
	READONLY の setting 引数は ON か OFF のどちらかにしてください。
OPER_SET_LOGCHAN_ON
#	Services are now reporting log messages to %s.
	チャンネルログを %s に出力します。
OPER_SET_LOGCHAN_OFF
#	Services are no longer reporting log messages to a channel.
	チャンネルログを出力しません。
OPER_SET_LOGCHAN_ERROR
#	Setting for LOGCHAN must be ON or OFF and LogChannel must be defined.
	LOGCHAN の setting 引数は ON か OFF のどちらかにし、LogChannel を定義してください。
OPER_SET_DEBUG_ON
#	Services are now in debug mode.
	サービスをデバッグモードに設定しました。
OPER_SET_DEBUG_OFF
#	Services are now in non-debug mode.
	サービスのデバッグモードを解除しました。
OPER_SET_DEBUG_LEVEL
#	Services are now in debug mode (level %d).
	サービスをデバッグモード(デバッグレベル %d)に設定しました。
OPER_SET_DEBUG_ERROR
#	Setting for DEBUG must be ON, OFF, or a positive number.
	DEBUG の setting 引数は ON か OFF か正数のどれかにしてください。
OPER_SET_NOEXPIRE_ON
#	Services are now in no expire mode.
	サービスの expire モードを解除しました。
OPER_SET_NOEXPIRE_OFF
#	Services are now in expire mode.
	サービスを expire モードに設定しました。
OPER_SET_NOEXPIRE_ERROR
#	Setting for NOEXPIRE must be ON or OFF.
	NOEXPIRE の setting 引数は ON か OFF のどちらかにしてください。
OPER_SET_UNKNOWN_OPTION
#	Unknown option %s.
	オプション %s は定義されていません。
OPER_SET_SQL_ON
#	SQL code will be used.
	SQL コードを使用します。
OPER_SET_SQL_OFF
#	SQL code will not be used.
	SQL コードを使用しません。
OPER_SET_SQL_ERROR
#	Setting for SQL must be ON or OFF.
	SQL の setting 引数は ON か OFF のどちらかにしてください。
OPER_SET_SQL_ERROR_INIT
#	Error during init of SQL, check your logs to correct.
	SQL の初期化中にエラーが発生しました。解決のためにログを確認してください。
OPER_SET_SQL_ERROR_DISABLED
#	SQL is not configured for this network. Please edit the
#	configuration file (services.conf).
	このネットワークでは SQL が設定されていません。
	設定ファイル(services.conf)を編集してください。
OPER_SET_LIST_OPTION_ON
#	%s is enabled
	%s が有効化されました。
OPER_SET_LIST_OPTION_OFF
#	%s is disabled
	%s が無効化されました。

# NOOP responses
OPER_NOOP_SYNTAX
	NOOP {SET|REVOKE} server
OPER_NOOP_SET
#	All O:lines of %s have been removed.
	サーバー %s  に対するすべての O:lines が削除されました。
OPER_NOOP_REVOKE
#	All O:lines of %s have been reset.
	サーバー %s  に対するすべての O:lines がリセットされました。

# JUPE responses
OPER_JUPE_SYNTAX
	JUPE servername [reason]
OPER_JUPE_HOST_ERROR
#	Please use a valid server name when juping
	正しいホスト名を使ってください。
OPER_JUPE_INVALID_SERVER
#	You can not jupe your services server or your uplink server.
	あなた自身のサーバーあなたのアップリンクサーバーにはjupeできません。。
	
# RAW responses
OPER_RAW_SYNTAX
	RAW text

# UPDATE responses
OPER_UPDATING
#	Updating databases.
	データベースを更新しています。
	
# RELOAD responses
OPER_RELOAD
#	Services' configuration file has been reloaded.
	サービスの設定ファイルのリロードを行いました。

# RESTART responses
OPER_CANNOT_RESTART
#	SERVICES_BIN not defined; cannot restart.  Rerun the \2configure\2 script and recompile Services to enable the RESTART command.
	SERVICES_BIN が未定義のため再起動できません。\2設定\2 スクリプトを再度走らせて、RESTART コマンドを有効化させるためにサービスを再コンパイルしてください。

# IGNORE respondes
OPER_IGNORE_SYNTAX
	IGNORE {ADD|DEL|LIST|CLEAR} [time] [nick | mask]
OPER_IGNORE_VALID_TIME
#	You have to enter a valid number as time.
	time 引数に有効な数字を設定してください。
OPER_IGNORE_TIME_DONE
#	%s will now be ignored for %s.
	%s は設定済みのマスク %s にマッチします。
OPER_IGNORE_PERM_DONE
#	%s will now permanently be ignored.
	%s を永久的に無視します。
OPER_IGNORE_DEL_DONE
#	%s will no longer be ignored.
	%s を無視しません。
OPER_IGNORE_LIST
#	Services ignore list:
	無視リスト:
OPER_IGNORE_LIST_NOMATCH
#	Nick %s not found on ignore list.
	ニックネーム %s  は無視リストに登録されていません。
OPER_IGNORE_LIST_EMPTY
#	Ignore list is empty.
	無視リストが空です。
OPER_IGNORE_LIST_CLEARED
#	Ignore list has been cleared.
	無視リストが空になりました。

# KILLCLONES responses
OPER_KILLCLONES_SYNTAX
	KILLCLONES nick
OPER_KILLCLONES_UNKNOWN_NICK
#	Could not find user %s.
	ニックネーム %s のユーザーが見つかりませんでした。
	
# CHANLIST responses
OPER_CHANLIST_HEADER
#	Channel list:
#	Name                 Users Modes   Topic
	チャンネルリスト:
	チャンネル名         ユーザーモード  トピック 
OPER_CHANLIST_HEADER_USER
#	%s channel list:
#	Name                 Users Modes   Topic
	ユーザー %s のチャンネルリスト:
	チャンネル名         ユーザーモード  トピック 
OPER_CHANLIST_RECORD
	%-20s  %4d +%-6s %s
OPER_CHANLIST_END
#	End of channel list.
	チャンネルリストは以上です。
	
# USERLIST responses
OPER_USERLIST_HEADER
#	Users list:
#	Nick                 Mask
	ユーザーリスト:
	ニックネーム         マスク
OPER_USERLIST_HEADER_CHAN
#	%s users list:
#	Nick                 Mask
	チャンネル %s のユーザーリスト:
	ニックネーム         マスク
OPER_USERLIST_RECORD
	%-20s %s@%s
OPER_USERLIST_END
#	End of users list.
	ユーザーリストは以上です。

OPER_SUPER_ADMIN_ON
#	You are now a SuperAdmin
	あなたは現在 SuperAdmin となっています。
OPER_SUPER_ADMIN_OFF
#	You are no longer a SuperAdmin
	あなたは SuperAdmin ではなくなりました。
OPER_SUPER_ADMIN_SYNTAX
#	Setting for SuperAdmin must be ON or OFF (must be enabled in services.conf)
	SuperAdmin の setting 引数は ON か OFF のどちらか(services.confの中で設定)にしてください。
OPER_SUPER_ADMIN_WALL_ON
#	%s is now a Super-Admin
	%s が現在の Super-Admin です。
OPER_SUPER_ADMIN_WALL_OFF
#	%s is no longer a Super-Admin
	%s は Super-Admin ではありません。
OPER_SUPER_ADMIN_ONLY
#	Only Super-Admins can use this command.
	Super-Admin だけがこのコマンドを使えます。
OPER_STAFF_LIST_HEADER
#	On Level Nick
	On レベル ニックネーム
OPER_STAFF_FORMAT
	 %c %s  %s
OPER_STAFF_AFORMAT
	 %c %s  %s [%s]

# DefCon Messages

OPER_DEFCON_SYNTAX
	DEFCON [1|2|3|4|5]
OPER_DEFCON_DENIED
#	Services are in Defcon mode, Please try again later.
	サービスが Defcon モードになっています。後からやり直してください。
OPER_DEFCON_NO_CONF
#	The Defcon system must be enabled in the services.conf file
	Defcon システムは services.conf 内でのみ有効化できます。
OPER_DEFCON_CHANGED
#	Services are now at DEFCON %d
	DEFCON レベルが変更されました。現在のレベルは %d です。
OPER_DEFCON_WALL
#	%s Changed the DEFCON level to %d
	%s が DEFCON レベルを %d に変更しました。
DEFCON_GLOBAL
#	The Defcon Level is now at Level: %d
	現在の DEFCON レベル : %d

# Module strings

OPER_MODULE_LOADED
#	Module %s loaded
	モジュール %s がロードされました。
OPER_MODULE_UNLOADED
#	Module %s unloaded
	モジュール %s がアンロードされました。
OPER_MODULE_LOAD_FAIL
#	Unable to load module %s
	モジュール %s がロードできませんでした。
OPER_MODULE_REMOVE_FAIL
#	Unable to remove module %s
	モジュール %s がアンロードできませんでした。
OPER_MODULE_NO_UNLOAD
#	This module can not be unloaded.
	このモジュールはアンロードできません。
OPER_MODULE_LOAD_SYNTAX
	MODLOAD FileName
OPER_MODULE_UNLOAD_SYNTAX
	MODUNLOAD FileName
OPER_MODULE_LIST_HEADER
#	Current Module list:
	現在のモジュールリスト:
OPER_MODULE_LIST
#	Module: %s [%s] [%s]
	モジュール: %s [%s] [%s]
OPER_MODULE_LIST_FOOTER
#	%d Modules loaded.
	%d 個のモジュールがロードされています。
OPER_MODULE_INFO_LIST
#	Module: %s Version: %s Author: %s loaded: %s
	モジュール: %s バージョン: %s 作者: %s ロード: %s
OPER_MODULE_CMD_LIST
#	Providing command: %R%s %s
	使用可能なコマンド   : %R%s %s
OPER_MODULE_MSG_LIST
#	Providing IRCD handler for: %s
	使用可能な IRC デーモンハンドラ: %R%s %s
OPER_MODULE_NO_LIST
#	No modules currently loaded
	モジュールが1つもロードされていません。
OPER_MODULE_NO_INFO
#	No information about module %s is available
	モジュール %s についての情報がありません。
OPER_MODULE_INFO_SYNTAX
	MODINFO FileName
MODULE_HELP_HEADER
#	The following commands have been loaded by a module:
	以下のコマンドはこのモジュールによってロードされています:

###########################################################################
#
# Session Limiting and Exception messages
#
###########################################################################

# EXCEPTION responses
OPER_EXCEPTION_SYNTAX
	EXCEPTION {ADD | DEL | MOVE | LIST | VIEW} [params]
OPER_EXCEPTION_ADD_SYNTAX
	EXCEPTION ADD [+expiry] mask limit reason
OPER_EXCEPTION_DEL_SYNTAX
	EXCEPTION DEL {mask | list}
OPER_EXCEPTION_MOVE_SYNTAX
	EXCEPTION MOVE num position
OPER_EXCEPTION_DISABLED
#	Session limiting is disabled.
	セッション数制限機能が無効化されています。
OPER_EXCEPTION_ALREADY_PRESENT
#	Mask %s already present on exception list.
	マスク %s は既に除外リストに登録済みです。
OPER_EXCEPTION_TOO_MANY
#	Session-limit exception list is full!
	セッション数制限からの除外リストが満杯です！
OPER_EXCEPTION_ADDED
#	Session limit for %s set to %d.
	%s に対するセッション数の上限値が %d に設定されました。
OPER_EXCEPTION_MOVED
#	Exception for %s (#%d) moved to position %d.
	%s (#%d) に対する除外リストの番号が %d に変わりました。
OPER_EXCEPTION_NO_SUCH_ENTRY
#	No such entry (#%d) session-limit exception list.
	セッション数制限からの除外リストに #%d というエントリはありません。
OPER_EXCEPTION_NOT_FOUND
#	%s not found on session-limit exception list.
	セッション数制限からの除外リストに %s というエントリはありません。
OPER_EXCEPTION_NO_MATCH
#	No matching entries on session-limit exception list.
	セッション数制限からの除外リストに該当するエントリはありません。
OPER_EXCEPTION_DELETED
#	%s deleted from session-limit exception list.
	セッション数制限からの除外リストから %s というエントリを削除しました。
OPER_EXCEPTION_DELETED_ONE
#	Deleted 1 entry from session-limit exception list.
	セッション数制限からの除外リストから 1 個のエントリを削除しました。
OPER_EXCEPTION_DELETED_SEVERAL
#	Deleted %d entries from session-limit exception list.
	セッション数制限からの除外リストから %d 個のエントリを削除しました。
OPER_EXCEPTION_LIST_HEADER
#	Current Session Limit Exception list:
	現在のセッション数制限からの除外リスト:
# mask, limit
OPER_EXCEPTION_LIST_FORMAT
	%3d  %4d   %s
OPER_EXCEPTION_LIST_COLHEAD
#	Num  Limit  Host
	番号 上限値 ホストマスク
# mask, set-by, set-time, expires, limit, reason
OPER_EXCEPTION_VIEW_FORMAT
	%3d.  %s  (by %s on %s; %s)
	    Limit: %-4d  - %s
OPER_EXCEPTION_INVALID_LIMIT
#	Invalid session limit. It must be a valid integer greater than or equal to zero and less than %d.
	無効なセッション数の上限値です。零以上で %d より小さな整数を設定してください。
OPER_EXCEPTION_INVALID_HOSTMASK
#	Invalid hostmask. Only real hostmasks are valid as exceptions are not matched against nicks or usernames.
	無効なホストマスクです。単純なホストマスクのみが有効で、マッチングはニックネームやユーザーネームに対しては行われません。
OPER_EXCEPTION_EXISTS
#	%s already exists on the EXCEPTION list.
	%s は既にセッション数制限からの除外リストに登録済みです。
OPER_EXCEPTION_CHANGED
#	Exception for %s has been updated to %d.
	%s に対するセッション数の上限値が %d に変更されました。

# SESSION responses
OPER_SESSION_SYNTAX
	SESSION {LIST limit | VIEW host}
OPER_SESSION_LIST_SYNTAX
	SESSION LIST limit
OPER_SESSION_VIEW_SYNTAX
	SESSION VIEW host
OPER_SESSION_DISABLED
#	Session limiting is disabled.
	セッション数制限機能が無効化されています。
OPER_SESSION_INVALID_THRESHOLD
#	Invalid threshold value. It must be a valid integer greater than 1.
	無効な上限値です。1より大きい整数を指定してください。
OPER_SESSION_NOT_FOUND
#	%s not found on session list.
	%s はセッションリストにありません。
OPER_SESSION_LIST_HEADER
#	Hosts with at least %d sessions:
	セッション数が %d 以上のホスト:
OPER_SESSION_LIST_COLHEAD
#	Sessions  Host
	セッション数 ホスト名
# limit, host
OPER_SESSION_LIST_FORMAT
	%6d    %s
# host, sessions, limit
OPER_SESSION_VIEW_FORMAT
#	The host %s currently has %d sessions with a limit of %d.
	現在、ホスト名 %s のセッション数は %d で上限値が %d に設定されています。

# EXCEPTION help

OPER_HELP_EXCEPTION
#	Syntax: EXCEPTION ADD [+expiry] mask limit reason
#	        EXCEPTION DEL {mask | list}
#	        EXCEPTION MOVE num position
#	        EXCEPTION LIST [mask | list]
#	        EXCEPTION VIEW [mask | list]
	構文: EXCEPTION ADD [+expiry] mask limit reason
	      EXCEPTION DEL {mask | list}
	      EXCEPTION MOVE num position
	      EXCEPTION LIST [mask | list]
	      EXCEPTION VIEW [mask | list]
	
#	Allows Services admins to manipulate the list of hosts that
#	have specific session limits - allowing certain machines, 
#	such as shell servers, to carry more than the default number
#	of clients at a time. Once a host reaches it's session limit,
#	all clients attempting to connect from that host will be
#	killed. Before the user is killed, they are notified, via a
#	/NOTICE from %S, of a source of help regarding session
#	limiting. The content of this notice is a config setting.
	サービス管理者はセッション数制限からの除外ホスト名のリストを編集できます。
	このリストには、各ホストに対するセッション数の上限値が記述 されています。
	たとえばシェルサーバーのようなマシンからのセッション数の上限値を初期値
	から増やすことができます。あるホストからのセッション数が上限値に達すると、
	以降にこのホストから接続試行を行ったクライアントは kill されます。
	セッション数制限機能の円滑な運用のために、このようなユーザーが kill
	される前に、%S からの /NOTICE で上限に達したことが通知されます。
	この通知の内容は設定ファイルで指定できます。
	
#	EXCEPTION ADD adds the given host mask to the exception list.
#	Note that nick!user@host and user@host masks are invalid!
#	Only real host masks, such as box.host.dom and *.host.dom,
#	are allowed because sessions limiting does not take nick or
#	user names into account. limit must be a number greater than
#	or equal to zero. This determines how many sessions this host
#	may carry at a time. A value of zero means the host has an
#	unlimited session limit. See the AKILL help for details about
#	the format of the optional expiry parameter.
#	EXCEPTION DEL removes the given mask from the exception list.
#	EXCEPTION MOVE moves exception num to position. The
#	exceptions inbetween will be shifted up or down to fill the gap.
#	EXCEPTION LIST and EXCEPTION VIEW show all current
#	exceptions; if the optional mask is given, the list is limited
#	to those exceptions matching the mask. The difference is that
#	EXCEPTION VIEW is more verbose, displaying the name of the
#	person who added the exception, it's session limit, reason, 
#	host mask and the expiry date and time.
	EXCEPTION ADD は与えられたホストマスクを除外リストに追加します。
	注意する点は、nick!user@host や user@host のようなマスク
	は無効だという点です。 例えば、box.host.dom や *.host.dom
	のような単純なホストマスクのみが有効です。その理由は、セッション数制限
	はニックネームやユーザーネームを考慮しないからです。また、limit は
	0以上の数字でなければいけません。この引数はマスクで指定したホスト群
	から一度に受け付けるセッション数の上限値を示しています。ただし、0を
	指定した場合はセッション数制限が無いという意味になります。
	EXCEPTION DEL は引数で指定されたマスクを除外リストから削除します。
	EXCEPTION MOVE は num 番目の除外エントリを position
	番目のエントリに移動します。2つのエントリ間にあるエントリは
	順番を保存したまま上下にシフトします。
	EXCEPTION LIST と EXCEPTION VIEW はすべての除外リストを
	表示します。mask 引数を指定した場合は、これにマッチする除外エントリ
	のみを表示します。2 つの違いは、EXCEPTION VIEW の方が詳細
	(除外エントリを設定した人の名前、セッション数の上限値、その理由、
	ホストマスク、失効日時を表示します。) という点です。
	
#	Note that a connecting client will "use" the first exception
#	their host matches. Large exception lists and widely matching
#	exception masks are likely to degrade services' performance.
	注意する点は、クライアントの接続試行に対して除外リストの
	上から1つづつマッチングを行うという点です。そのため、
	大きな除外リストや広範囲にマッチする除外マスクはサービスの
	パフォーマンスを低下させます。

OPER_HELP_SESSION
#	Syntax: SESSION LIST threshold
#	        SESSION VIEW host
	構文: SESSION LIST threshold
	      SESSION VIEW host
	
#	Allows Services admins to view the session list.
	サービス管理者はセッションリストを見ることができます。

#	SESSION LIST lists hosts with at least threshold sessions.
#	The threshold must be a number greater than 1. This is to 
#	prevent accidental listing of the large number of single 
#	session hosts.
#	SESSION VIEW displays detailed information about a specific
#	host - including the current session count and session limit.
#	The host value may not include wildcards.
	SESSION LIST は threshold 以下のセッション数を使っている
	ホストを表示します。この値は1よりも大きい数でなければいけません。
	これは、間違えて1を指定した結果、大量にリストアップされてしまう
	ことを防ぐためです。
	SESSION VIEW はあるホストについて詳細な情報を表示します。
	これには、セッション数とセッション数の上限値が含まれます。
	引数 host には、ワイルドカードを含めてはいけません。

#	See the EXCEPTION help for more information about session
#	limiting and how to set session limits specific to certain
#	hosts and groups thereof.
	セッション数制限の概要と、あるホストかホストグループに対して
	セッション数制限を設定する方法については、EXCEPTION の
	ヘルプも参照してください。

OPER_HELP_STAFF
#	Syntax: STAFF
	構文: STAFF

#	Displays all Services Staff nicks along with level
#	and on-line status.
	サービススタッフ全員のニックネーム、権限レベル
	とオンラインか否かを表示します。

OPER_HELP_DEFCON
#	Syntax: DEFCON [1|2|3|4|5]
	構文: DEFCON [1|2|3|4|5]

#	The defcon system can be used to implement a pre-defined
#	set of restrictions to services useful during an attempted
#	attack on the network.
	defcon システムはサービス対して、あらかじめ決められた容で
	制限を掛けます。これはネットワークが攻撃を受けている最中に
	有用です。

OPER_HELP_DEFCON_NO_NEW_CHANNELS
#	* No new channel registrations
	* 新規チャンネルの登録を禁止します。
OPER_HELP_DEFCON_NO_NEW_NICKS
#	* No new nick registrations
	* 新規ニックネームの登録を禁止します。
OPER_HELP_DEFCON_NO_MLOCK_CHANGE
#	* No MLOCK changes
	* MLOCK の変更を禁止します。
OPER_HELP_DEFCON_FORCE_CHAN_MODES
#	* Force Chan Modes (%s) to be set on all channels
	* 全てのチャンネルのチャンネルモードを (%s) に変更します。
OPER_HELP_DEFCON_REDUCE_SESSION
#	* Use the reduced session limit of %d
	* セッション数制限を %d に減らします。
OPER_HELP_DEFCON_NO_NEW_CLIENTS
#	* Kill any NEW clients connecting
	* 全ての新しいクライアントからの接続を Kill します。
OPER_HELP_DEFCON_OPER_ONLY
#	* Ignore any non-opers with message
	* メッセージを出して、全てのオペレーターでないユーザーを無視します。
OPER_HELP_DEFCON_SILENT_OPER_ONLY
#	* Silently ignore non-opers
	* メッセージを出さずに、全てのオペレーターでないユーザーを無視します。
OPER_HELP_DEFCON_AKILL_NEW_CLIENTS
#	* AKILL any new clients connecting
	* 新規クライアントからの接続を AKILL します。 
OPER_HELP_DEFCON_NO_NEW_MEMOS
#	* No new memos sent
	* 新規メモの送信を禁止します。
OPER_HELP_CHANKILL
#	Syntax: CHANKILL [+expiry] channel reason
	構文: CHANKILL [+expiry] channel reason

#	Puts an AKILL for every nick on the specified channel. It
#	uses the entire and complete real ident@host for every nick,
#	then enforces the AKILL. 
	あるチャンネルに参加している全てのニックネームを AKILL リストに
	加える。これは、全てのニックネームに対して、完全なident@hostを使い、
	AKILL を実行する。

###########################################################################
#
# News system messages
#
###########################################################################

NEWS_LOGON_TEXT
	[Logon News - %s] %s
NEWS_OPER_TEXT
	[Oper News - %s] %s
NEWS_RANDOM_TEXT
	[Random News - %s] %s

NEWS_LOGON_SYNTAX
	LOGONNEWS {ADD|DEL|LIST} [text|num]
NEWS_LOGON_LIST_HEADER
#	Logon news items:
	ログオンニュース:
NEWS_LOGON_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_LOGON_LIST_NONE
#	There is no logon news.
	ログオンニュースがありません。
NEWS_LOGON_ADD_SYNTAX
	LOGONNEWS ADD text
NEWS_LOGON_ADD_FULL
#	News list is full!
	ニュースリストが満杯です。
NEWS_LOGON_ADDED
#	Added new logon news item (#%d).
	新しいログオンニュース (#%d) を追加しました。
NEWS_LOGON_DEL_SYNTAX
	LOGONNEWS DEL {num | ALL}
NEWS_LOGON_DEL_NOT_FOUND
#	Logon news item #%d not found!
	ログオンニュース #%d が見つかりません！
NEWS_LOGON_DELETED
#	Logon news item #%d deleted.
	ログオンニュース #%d を削除しました。
NEWS_LOGON_DEL_NONE
#	No logon news items to delete!
	ログオンニュースを削除しませんでした！
NEWS_LOGON_DELETED_ALL
#	All logon news items deleted.
	ログオンニュースを全て削除しました。

NEWS_OPER_SYNTAX
	OPERNEWS {ADD|DEL|LIST} [text|num]
NEWS_OPER_LIST_HEADER
	Oper news items:
	サーバーオペレーターニュース:
NEWS_OPER_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_OPER_LIST_NONE
#	There is no oper news.
	サーバーオペレーターニュースがありません。
NEWS_OPER_ADD_SYNTAX
	OPERNEWS ADD text
NEWS_OPER_ADD_FULL
#	News list is full!
	ニュースリストが満杯です。
NEWS_OPER_ADDED
#	Added new oper news item (#%d).
	新しいサーバーオペレーターニュース (#%d) を追加しました。
NEWS_OPER_DEL_SYNTAX
	OPERNEWS DEL {num | ALL}
NEWS_OPER_DEL_NOT_FOUND
#	Oper news item #%d not found!
	サーバーオペレーターニュース #%d が見つかりません！
NEWS_OPER_DELETED
#	Oper news item #%d deleted.
	サーバーオペレーターニュース #%d を削除しました。
NEWS_OPER_DEL_NONE
#	No oper news items to delete!
	サーバーオペレーターニュースを削除できませんでした！
NEWS_OPER_DELETED_ALL
#	All oper news items deleted.
	サーバーオペレーターニュースを全て削除しました。

NEWS_RANDOM_SYNTAX
	RANDOMNEWS {ADD|DEL|LIST} [text|num]
NEWS_RANDOM_LIST_HEADER
	Random news items:
	ランダムニュース:
NEWS_RANDOM_LIST_ENTRY
	%5d (%s by %s)
	    %s
NEWS_RANDOM_LIST_NONE
#	There is no random news.
	ランダムニュースがありません。
NEWS_RANDOM_ADD_SYNTAX
	RANDOMNEWS ADD text
NEWS_RANDOM_ADD_FULL
#	News list is full!
	ニュースリストが満杯です。
NEWS_RANDOM_ADDED
#	Added new random news item (#%d).
	新しいランダムニュース (#%d) を追加しました。
NEWS_RANDOM_DEL_SYNTAX
	RANDOMNEWS DEL {num | ALL}
NEWS_RANDOM_DEL_NOT_FOUND
#	Random news item #%d not found!
	ランダムニュース #%d が見つかりません！
NEWS_RANDOM_DELETED
#	Random news item #%d deleted.
	ランダムニュース #%d を削除しました。
NEWS_RANDOM_DEL_NONE
#	No random news items to delete!
	ランダムニュースを削除できませんでした！
NEWS_RANDOM_DELETED_ALL
#	All random news items deleted.
	ランダムニュースを全て削除しました。

NEWS_HELP_LOGON
#	Syntax: LOGONNEWS ADD text
	構文: LOGONNEWS ADD text
	      LOGONNEWS DEL {num | ALL}
	      LOGONNEWS LIST
	
#	Edits or displays the list of logon news messages.  When a
#	user connects to the network, these messages will be sent
#	to them.  (However, no more than %s messages will be
#	sent in order to avoid flooding the user.  If there are
#	more news messages, only the most recent will be sent.)
#	NewsCount can be configured in services.conf.
	ログオンニュースを編集または表示する。ユーザーがネットワークに
	接続したときに、これらのメッセージがユーザーに送信される(ただし、
	ユーザーにこれを flood 攻撃と勘違いさせないために、%s 個以上
	のメッセージは送信されない。この場合、メッセージは新しいもの
	から順に送信される。)。NewsCount は services.conf 内で設定する。
	
#	LOGONNEWS may only be used by Services admins.
	LOGONNEWS はサービス管理者以外は使えない。


NEWS_HELP_OPER
#	Syntax: OPERNEWS ADD text
#		OPERNEWS DEL {num | ALL}
#		OPERNEWS LIST
	構文: OPERNEWS ADD text
	      OPERNEWS DEL {num | ALL}
	      OPERNEWS LIST
	
#	Edits or displays the list of oper news messages.  When a
#	user opers up (with the /OPER command), these messages will
#	be sent to them.  (However, no more than %s messages will
#	be sent in order to avoid flooding the user.  If there are
#	more news messages, only the most recent will be sent.)
#	NewsCount can be configured in services.conf.
	サーバーオペレーターニュースを編集または表示する。ユーザーが
	サーバーオペレーターになる(/OPER コマンドで)と、これらのメッセージ
	がユーザーに送信される。(ただし、ユーザーにこれを flood 攻撃と勘違い
	させないために、%s 個以上のメッセージは送信されない。
	この場合、メッセージは新しいものから順に送信される。)。
	NewsCount は services.conf 内で設定する。
	
#	OPERNEWS may only be used by Services admins.
	OPERNEWS はサービス管理者以外は使えない。

NEWS_HELP_RANDOM
#	Syntax: RANDOMNEWS ADD text
#		RANDOMNEWS DEL {num | ALL}
#		RANDOMNEWS LIST
	構文: RANDOMNEWS ADD text
	      RANDOMNEWS DEL {num | ALL}
	      RANDOMNEWS LIST
	
#	Edits or displays the list of random news messages.  When a
#	user connects to the network, one (and only one) of the
#	random news will be randomly chosen and sent to them.
	ランダムニュースを編集または表示する。ユーザーがネットワークに
	接続すると、ランダムニュースの中から1つ、ニュースが無作為に
	選ばれ、これが送信される。

#	RANDOMNEWS may only be used by Services admins.
	RANDOMNEWS はサービス管理者以外は使えない。

###########################################################################
#
# HelpServ help message
#
###########################################################################

HELP_HELP
#	%S is a service designed to give out information on
#	Services.  Help topics are accessible via 
#	the HELP commands of the other Services clients:
	%Sはサービスについての情報を伝えるためのサービスです。
	他のサービスクライアントについてのHELPコマンドにより、
	ヘルプ項目を読むことができます。

	%R%s HELP
#	     for information on registering nicknames
	     ニックネーム登録についての情報。

	%R%s HELP
#	     for information on registering and controlling
#	     channels
	     ニックネームとチャンネルの登録及び管理についての情報。

	%R%s HELP
#	     for information on sending messages to off-line users
	     現在接続していないユーザーにメッセージを送る事についての情報。

HELP_HELP_BOT

	%R%s HELP
#	     for information on setting up a bot on your channel
	     自分のチャンネルにボットを設置する事についての情報。

HELP_HELP_HOST

	%R%s HELP
#	     for information on setting up nick vHosts
	     仮想ホストを設置する事についての情報。

###########################################################################
#
# NickServ help messages
#
###########################################################################

NICK_HELP_CMD_CONFIRM
#	    CONFIRM    Confirm a nickserv auth code
	    CONFIRM    NickServの証明コード（auth code）を確認する。
NICK_HELP_CMD_RESEND
#	    RESEND     Resend a nickserv auth code
	    RESEND     NickServの証明コード（auth code）を再送りする。
NICK_HELP_CMD_REGISTER
#	    REGISTER   Register a nickname
	    REGISTER   ニックネームを登録する。
NICK_HELP_CMD_GROUP
#	    GROUP      Join a group
	    GROUP      グループに加わる。
NICK_HELP_CMD_IDENTIFY
#	    IDENTIFY   Identify yourself with your password
	    IDENTIFY   自分をパスワードで証明する。
NICK_HELP_CMD_ACCESS
#	    ACCESS     Modify the list of authorized addresses
	    ACCESS     許可されているアドレス表を編集する。
NICK_HELP_CMD_SET
#	    SET        Set options, including kill protection
	    SET        オプションの設定、殺し(KILL)防衛を含む。
NICK_HELP_CMD_SASET
#	    SASET      Set SET-options on another nickname
	    SASET      別のニックネームにSETオプションを設定する。
NICK_HELP_CMD_DROP
#	    DROP       Cancel the registration of a nickname
	    DROP       ニックネーム登録を解除する。
NICK_HELP_CMD_RECOVER
#	    RECOVER    Kill another user who has taken your nick
	    RECOVER    貴方のニックネームを使っているユーザーを殺す(KILL)。
NICK_HELP_CMD_RELEASE
#	    RELEASE    Regain custody of your nick after RECOVER
	    RELEASE    RECOVERの後でニックネームを取り戻す。
NICK_HELP_CMD_SENDPASS
#	    SENDPASS   Forgot your password? Try this
	    SENDPASS   パスワードを登録してるメールアドレスに送る。
NICK_HELP_CMD_GHOST
#	    GHOST      Disconnects a "ghost" IRC session using your nick
	    GHOST      貴方のニックネームを使ってるIRC「ゴースト」セッションを切断する。
NICK_HELP_CMD_ALIST
#	    ALIST      List channels you have access on
	    ALIST      貴方にアクセスが許可されてるチャンネルを表示する。
NICK_HELP_CMD_GLIST
#	    GLIST      Lists all nicknames in your group
	    GLIST      貴方のグループ内の全てのニックネームを表示する。
NICK_HELP_CMD_INFO
#	    INFO       Displays information about a given nickname
	    INFO       指定されたニックネームについての情報を表示する。
NICK_HELP_CMD_LIST
#	    LIST       List all registered nicknames that match a given pattern
	    LIST       指定されたパターンに合う登録されてる全てのニックネームを表示する。
NICK_HELP_CMD_LOGOUT
#	    LOGOUT     Reverses the effect of the IDENTIFY command
	    LOGOUT     IDENTIFYコマンドの効果を取り消す。
NICK_HELP_CMD_STATUS
#	    STATUS     Returns the owner status of the given nickname
	    STATUS     指定されたニックネームの持ち主状態を出力する。
NICK_HELP_CMD_UPDATE
#	    UPDATE     Updates your current status, i.e. it checks for new memos
	    UPDATE     貴方の現在の状態を更新する。例：新しいメモが届いたかを確認する。
NICK_HELP_CMD_GETPASS
#	    GETPASS    Retrieve the password for a nickname
	    GETPASS    指定されたニックネームのパスワードを出力する。
NICK_HELP_CMD_GETEMAIL
#	    GETEMAIL   Matches and returns all users that registered using given email
	    GETEMAIL   指定されたメールアドレスで登録されてる全てのユーザーを出力する。
NICK_HELP_CMD_FORBID
#	    FORBID     Prevents a nickname from being registered
	    FORBID     指定されたニックネームを登録禁止にする。
NICK_HELP_CMD_SUSPEND
#	    SUSPEND    Suspend a given nick
	    SUSPEND    指定されたニックネームを使用禁止にする。
NICK_HELP_CMD_UNSUSPEND
#	    UNSUSPEND  Unsuspend a given nick
	    UNSUSPEND  指定されたニックネームの使用禁止を解除する。

NICK_HELP
#	%S allows you to "register" a nickname and
#	prevent others from using it. The following
#	commands allow for registration and maintenance of
#	nicknames; to use them, type %R%S command.
#	For more information on a specific command, type
#	%R%S HELP command.
	%S を使うとニックネームの登録と、登録済みニックネーム
	をほかの人に使われることを防ぐことが出来ます。
	ニックネームの登録とメンテナンスをするには、
	%R%S command と入力してください。
	より詳細なコマンドについての情報は
	%R%S HELP command と入力してください。
	
NICK_HELP_FOOTER
	 
#	NOTICE: This service is intended to provide a way for
#	IRC users to ensure their identity is not compromised.
#	It is NOT intended to facilitate "stealing" of
#	nicknames or other malicious actions.  Abuse of %S
#	will result in, at minimum, loss of the abused
#	nickname(s).
	注意: このサービスを使うことで、IRCユーザに
	自分の正体が乗っ取られる可能性を示唆できます。
	ただし、これはニックネームやそのほかの挙動を盗むことを
	抑制出来ません。%S を乱用することは少なくとも
	乱用されたニックネームの損失を招きます。

NICK_HELP_EXPIRES
	
#	Nicknames that are not used anymore are subject to 
#	the automatic expiration, i.e. they will be deleted
#	after %d days if not used.
	使用禁止ニックネームの登録は自動的に解除されます。
	たとえば、使用禁止ニックネームが使用されない場合には
	%d 日後に自動的に登録解除されます。

NICK_HELP_REGISTER
#	Syntax: REGISTER password [email]
	構文: REGISTER password [email]
	
#	Registers your nickname in the %S database.  Once
#	your nick is registered, you can use the SET and ACCESS
#	commands to configure your nick's settings as you like
#	them.  Make sure you remember the password you use when
#	registering - you'll need it to make changes to your nick
#	later.  (Note that case matters!  ANOPE, Anope, and 
#	anope are all different passwords!)
	%S のデータベースにニックネームを登録します。登録した後は、
	SET や ACCESS コマンドを使ってニックネームの設定
	を変更できます。登録時のパスワードを忘れないようにしてください。
	また、登録時のパスワードを変更することも忘れないでください。
	(大文字と小文字は区別されることに注意してください。
	ANOPE、Anope、anope これらはすべて異なるパスワードです!)
	
#	Guidelines on choosing passwords:
	パスワード選択に関するガイドライン:
	
#	Passwords should not be easily guessable.  For example,
#	using your real name as a password is a bad idea.  Using
#	your nickname as a password is a much worse idea ;) and,
#	in fact, %S will not allow it.  Also, short
#	passwords are vulnerable to trial-and-error searches, so
#	you should choose a password at least 5 characters long.
#	Finally, the space character cannot be used in passwords.
	パスワードは簡単に推測できるものであってはなりません。例えば、
	あなたの実際の名前をパスワードにするのは良くありません。さらに、
	ニックネームをパスワードにするのは最悪ですし、%S はそれを
	許しません。また、短いパスワードは総当り検索に対して脆弱です。
	少なくとも5文字以上のパスワードを設定することをお勧めします。
	最後に、空白文字はパスワードとして使用できません。
	
#	The parameter email is optional and will set the email
#	for your nick immediately. However, it may be required
#	on certain networks.
#	Your privacy is respected; this e-mail won't be given to
#	any third-party person.
	パラメータemail は任意で設定可能で、ニックネームに対する
	メールアドレスの紐付けが直ちに行われます。しかし、ネットワーク
	によってはこの設定が必須な場合があります。
	我々はあなたのプライバシーを尊重します。ここで設定した
	メールアドレスが第三者に譲渡されることはありません。
	
#	This command also creates a new group for your nickname,
#	that will allow you to register other nicks later sharing
#	the same configuration, the same set of memos and the
#	same channel privileges. For more information on this
#	feature, type %R%S HELP GROUP.
	このコマンドはあなたのニックネームに対する新しいグループを
	作成します。このグループには同じ設定を共有するほかのニックネーム
	を登録することが出来ます。ここで設定とはメモや同じチャンネル
	に対する特権の事を指します。より詳しい情報は、
	%R%S HELP GROUP と入力してください。

	
NICK_HELP_GROUP
#	Syntax: GROUP target password
	構文: GROUP target password
	
#	This command makes your nickname join the target nickname's 
#	group. password is the password of the target nickname.
	このコマンドで target ニックネームのグループにあなたの
	ニックネームを追加します。password はターゲットニックネーム
	のパスワードです。
	
#	Joining a group will allow you to share your configuration,
#	memos, and channel privileges with all the nicknames in the
#	group, and much more!
	グループに登録すると、グループに登録されているニックネーム
	すべてに対して設定、メモ、チャンネル特権を共有できます。
	 
#	A group exists as long as it is useful. This means that even
#	if a nick of the group is dropped, you won't lose the
#	shared things described above, as long as there is at
#	least one nick remaining in the group.
	グループは使用可能な状態であれば存在し続けます。これは、
	グループに含まれるニックネームが無くなったとしても、
	1つ以上のニックネームがグループに含まれている限り、
	上で書いたような共有設定は失われないということです。
	
#	You can use this command even if you have not registered
#	your nick yet. If your nick is already registered, you'll
#	need to identify yourself before using this command. Type
#	%R%S HELP IDENTIFY for more information. This
#	last may be not possible on your IRC network.
	ニックネームが登録されていない場合、このコマンドを使えます。
	ニックネームが登録されている場合は、このコマンドを使う前に
	認証が必要です。より詳しい情報は %R%S HELP IDENTIFY 
	と入力してください。IRCネットワークによっては
	このコマンドが使えない場合があります。
	
#	It is recommended to use this command with a non-registered
#	nick because it will be registered automatically when 
#	using this command. You may use it with a registered nick (to 
#	change your group) only if your network administrators allowed 
#	it.
	このコマンドは未登録のニックネームと共に使うことをお勧めします。
	なぜなら、このコマンドを使うと自動的にニックネーム登録も
	されるからです。IRCネットワークの管理者が許している場合に限り、
	登録済みのニックネームと共に使う(グループ変更する)ことも可能です。
	
#	You can only be in one group at a time. Group merging is
#	not possible.
	同時に複数ののグループに登録することは出来ません。また、
	グループの結合は出来ません。
	
#	Note: all the nicknames of a group have the same password.
	注意: あるグループに含まれるニックネームのパスワードは
	すべて同じです。
	

NICK_HELP_IDENTIFY
#	Syntax: IDENTIFY password
	構文: IDENTIFY password
	
#	Tells %S that you are really the owner of this
#	nick.  Many commands require you to authenticate yourself
#	with this command before you use them.  The password
#	should be the same one you sent with the REGISTER
#	command.
	%S にあなたがこのニックネームの正統なオーナーであることを
	伝えます。このコマンドを使う前に多くのコマンドを使わなければ
	いけません。パスワードは REGISTER コマンドで指定した
	ものと同じでなければいけません。

NICK_HELP_UPDATE
#	Syntax: UPDATE
	構文: UPDATE

#	Updates your current status, i.e. it checks for new memos,
#	sets needed chanmodes (ModeonID) and updates your vhost and
#	your userflags (lastseentime, etc).
	現在の状態を更新します。例えば、新しいメモをチェックしたり、
	必要なチャンネルモード(ModeonID)の設定を行ったり、仮想ホストや
	ユーザフラグ(最終更新時間)のアップデートをします。
	
NICK_HELP_LOGOUT
#	Syntax: LOGOUT
	構文: LOGOUT
	
#	This reverses the effect of the IDENTIFY command, i.e.
#	make you not recognized as the real owner of the nick
#	anymore. Note, however, that you won't be asked to reidentify
#	yourself.
	IDENTIFY コマンドの影響を逆転します。例えば、
	自分がニックネームの正統なユーザであることを未証明の状態
	にします。再度証明するかどうかを尋ねられることは無いという
	点にに注意してください。

NICK_HELP_DROP
#	Syntax: DROP [nickname]
	構文: DROP [nickname]
	
#	Drops your nickname from the %S database.  A nick
#	that has been dropped is free for anyone to re-register.
	ニックネームを %S のデータベースから削除します。
	削除されたニックネームを改めて登録することも出来ます。
	
#	You may drop a nick within your group by passing it
#	as the nick parameter.
	nick パラメータを渡すことで、
	あなたのグループからニックネームを削除できます。
	
#	In order to use this command, you must first identify
#	with your password (%R%S HELP IDENTIFY for more
#	information).
	このコマンドを使うためには、まず自分の正統性を
	パスワードによって認証する必要があります。(より詳しい
	情報は%R%S HELP IDENTIFY と入力してください。)

NICK_HELP_ACCESS
#	Syntax: ACCESS ADD mask
#	        ACCESS DEL mask
#	        ACCESS LIST
	構文: ACCESS ADD mask
	      ACCESS DEL mask
	      ACCESS LIST
	
#	Modifies or displays the access list for your nick.  This
#	is the list of addresses which will be automatically
#	recognized by %S as allowed to use the nick.  If
#	you want to use the nick from a different address, you
#	need to send an IDENTIFY command to make %S
#	recognize you.
	ニックネームへのアクセスリストを変更又は表示します。
	%S が自動的にこのニックネームを使用できると判断する
	アドレスのリストです。別のアドレスからこのニックネーム
	を使いたい場合は、IDENTIFY コマンドを使用して、
	%S にアドレスとニックネームの紐付けを行ってください。
	
#	Examples:
	例:
	
	    ACCESS ADD anyone@*.bepeg.com
#	        Allows access to user anyone from any machine in
#	        the bepeg.com domain.
	        bepeg.com ドメインに属するマシンからの
		ユーザ anyone のアクセスを許可します。
	
	    ACCESS DEL anyone@*.bepeg.com
#	        Reverses the previous command.
	        上のコマンドを無効化します。
	
	    ACCESS LIST
#	        Displays the current access list.
		現在のアクセスリストを表示します。

NICK_HELP_SET
#	Syntax: SET option parameters
	構文: SET option parameters
	
#	Sets various nickname options.  option can be one of:
	ニックネームに関するオプションを設定する。option は以下の1つ:
	
#	    DISPLAY    Set the display of your group in Services
	    DISPLAY    サービス内でのグループ表示状態の設定
#	    PASSWORD   Set your nickname password
	    PASSWORD   ニックネームパスワードの設定
#	    LANGUAGE   Set the language Services will use when
#	                   sending messages to you
	    LANGUAGE   サービスからのメッセージの表示言語の設定
#	    URL        Associate a URL with your nickname
	    URL        ニックネームとURLの紐付け
#	    EMAIL      Associate an E-mail address with your nickname
	    EMAIL      ニックネームと電子メールアドレスの紐付け
#	    ICQ        Associate an ICQ number with your nickname
	    ICQ        ニックネームとICQ番号の紐付け
#	    GREET      Associate a greet message with your nickname
	    GREET      ニックネームと挨拶メッセージの紐付け
#	    KILL       Turn protection on or off
	    KILL       プロテクトのonとoffの設定
#	    SECURE     Turn nickname security on or off
	    SECURE     ニックネーム保護のonとoffの設定
#	    PRIVATE    Prevent your nickname from appearing in a
#	                   %R%S LIST
	    PRIVATE    ニックネームが%R%S LIST の中に
	                   現れないようにする。
#	    HIDE       Hide certain pieces of nickname information
	    HIDE       ニックネーム情報の一部を隠す
#	    MSG        Change the communication method of Services
	    MSG        サービスとの通信方法を変更
#	    AUTOOP     Should services op you automatically.    
	    AUTOOP     自動的にサービスオペレータ権をもらう
	
#	In order to use this command, you must first identify
#	with your password (%R%S HELP IDENTIFY for more
#	information).
	このコマンドを使うためには、まず自分の正統性を
	パスワードによって認証する必要があります。(より詳しい
	情報は%R%S HELP IDENTIFY と入力してください。)
	
#	Type %R%S HELP SET option for more information
#	on a specific option.
	それぞれのオプションに関するより詳しい情報は、
	%R%S HELP SET option と入力してください。

NICK_HELP_SET_DISPLAY
#	Syntax: SET DISPLAY new-display
	構文: SET DISPLAY new-display
	
#	Changes the display used to refer to your nickname group in 
#	Services. The new display MUST be a nick of your group.
	サービス内でのあなたのニックネームに関連付けられたグループ
	の表示状態を変更します。新しい表示はあなたのグループに登録された
	ニックネームでなければいけません。

NICK_HELP_SET_PASSWORD
#	Syntax: SET PASSWORD new-password
	構文: SET PASSWORD new-password
	
#	Changes the password used to identify you as the nick's
#	owner.
	ニックネームのオーナーパスワードを変更します。

NICK_HELP_SET_LANGUAGE
#	Syntax: SET LANGUAGE number
	構文: SET LANGUAGE number
	
#	Changes the language Services uses when sending messages to
#	you (for example, when responding to a command you send).
#	number should be chosen from the following list of
#	supported languages:
	サーバからのメッセージ表示言語を変更します。(例えば、
	あなたからのコマンドのレスポンス等。)number は
	以下の言語リストから選択してください。
	
NICK_HELP_SET_URL
#	Syntax: SET URL url
	構文: SET URL url
	
#	Associates the given URL with your nickname.  This URL
#	will be displayed whenever someone requests information
#	on your nick with the INFO command.
	ニックネームとURLを紐付けます。このURLはINFO コマンド
	で得られるニックネームに関する情報に表示されます。

NICK_HELP_SET_EMAIL
#	Syntax: SET EMAIL address
	構文: SET EMAIL address
	
#	Associates the given E-mail address with your nickname.
#	This address will be displayed whenever someone requests
#	information on the nickname with the INFO command.
	ニックネームと電子メールアドレスを紐付けます。
	このアドレスは INFO コマンドで得られるニックネーム
	に関する情報に表示されます。
	
NICK_HELP_SET_ICQ
#	Syntax: SET ICQ number
	構文: SET ICQ number
	
#	Associates the given ICQ number with your nickname.  This 
#	number will be displayed whenever someone requests 
#	information on your nick with the INFO command.
	ニックネームとICQ番号を紐付けます。
	このICQ番号は INFO コマンドで得られるニックネーム
	に関する情報に表示されます。
	
	
NICK_HELP_SET_GREET
#	Syntax: SET GREET message
	構文: SET GREET message
	
#	Makes the given message the greet of your nickname, that
#	will be displayed when joining a channel that has GREET
#	option enabled, provided that you have the necessary 
#	access on it.
	ニックネームの挨拶メッセージを設定します。
	この挨拶メッセージはGREETオプションが有効化されたチャンネル
	にjoinした際に表示され、あなたがチャンネルに必要なアクセス
	をもっている場合に供給されます。

NICK_HELP_SET_KILL
#	Syntax: SET KILL {ON | QUICK | IMMED | OFF}
	構文: SET KILL {ON | QUICK | IMMED | OFF}
	
#	Turns the automatic protection option for your nick
#	on or off.  With protection on, if another user
#	tries to take your nick, they will be given one minute to
#	change to another nick, after which %S will forcibly change
#	their nick.
	ニックネームに関する自動プロテクトのonとoffを切り替えます。
	プロテクトがonの状態で、ほかのユーザがあなたのニックネームを
	使おうとした場合、ほかのユーザは %S がニックネームを強制
	変更するまでの1分間にニックネームを変更しなければなりません。
	
#	If you select QUICK, the user will be given only 20 seconds
#	to change nicks instead of the usual 60.  If you select
#	IMMED, user's nick will be changed immediately without being
#	warned first or given a chance to change their nick; please
#	do not use this option unless necessary.  Also, your
#	network's administrators may have disabled this option.
	QUICK を選んだ場合、通常60秒の猶予時間を20秒にします。
	IMMED を選んだ場合、警告無しにニックネームを強制変更
	します。このオプションは極力使わないでください。また、
	ネットワーク管理者がこれを使わせないようにしているかもしれません。

NICK_HELP_SET_SECURE
#	Syntax: SET SECURE {ON | OFF}
	構文: SET SECURE {ON | OFF}
	

#	Turns %S's security features on or off for your
#	nick.  With SECURE set, you must enter your password
#	before you will be recognized as the owner of the nick,
#	regardless of whether your address is on the access
#	list.  However, if you are on the access list, %S
#	will not auto-kill you regardless of the setting of the
#	KILL option.
	あなたのニックネームに対する %S の保護機能をonかoffにします。
	SECURE をON二すると、このニックネームのオーナー認証
	を行う前に、アクセスリスト上のあなたのアドレスの有無にかかわらず
	パスワードを入力しなければなりません。ただし、アクセスリスト
	に穴画のアドレスが有る場合は、 KILL オプションの
	設定にかかわらず %S はあなたを自動的にKILLすることはありません。

NICK_HELP_SET_PRIVATE
#	Syntax: SET PRIVATE {ON | OFF}
	構文: SET PRIVATE {ON | OFF}
	
#	Turns %S's privacy option on or off for your nick.
#	With PRIVATE set, your nickname will not appear in
#	nickname lists generated with %S's LIST command.
#	(However, anyone who knows your nickname can still get
#	information on it using the INFO command.)
	あなたのニックネームに関する %S のプライバシーオプションを
	onかoffにします。PRIVATE をONにすると、%S の LIST
	コマンドで表示されるニックネームリストに出てこなくなります。
	(ただし、ニックネームを知っている人は、INFO コマンドで
	情報を見ることが出来ます。)
	

NICK_HELP_SET_HIDE
#	Syntax: SET HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	構文: SET HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	
#	Allows you to prevent certain pieces of information from
#	being displayed when someone does a %S INFO on your
#	nick.  You can hide your E-mail address (EMAIL), last seen
#	user@host mask (USERMASK), your services access status
#	(STATUS) and  last quit message (QUIT).
#	The second parameter specifies whether the information should
#	be displayed (OFF) or hidden (ON).
	ニックネームに関する %S の INFO コマンドで表示される情報
	を制限できます。電子メールアドレス(EMAIL)、user@host
	マスク(USERMASK)、サービスアクセス状態(STATUS)、最後の
	切断メッセージ(QUIT)を非表示に出来ます。
	二番目のパラメータで表示するか(OFF)、隠すか(ON)を
	指定します。
	
NICK_HELP_SET_MSG
#	Syntax: SET MSG {ON | OFF}
	構文: SET MSG {ON | OFF}
	
#	Allows you to choose the way Services are communicating with 
#	you. With MSG set, Services will use messages, else they'll 
#	use notices.
	サービスとの通信方法を選択できます。MSG がセットされると、
	サービスは messages を使用しますが、されなければ notices を使います。

NICK_HELP_SET_AUTOOP
#	Syntax: SET AUTOOP {ON | OFF}
	構文: SET AUTOOP {ON | OFF}
	
	Sets whether you will be opped automatically. Set to ON to 
	allow ChanServ to op you automatically when entering channels.

NICK_HELP_SASET
#	Syntax: SASET nickname option parameters.
	構文: SASET nickname option parameters.
	
	Sets various nickname options.  option can be one of:
	
	    DISPLAY    Set the display of the group in Services
	    PASSWORD   Set the nickname password
	    URL        Associate a URL with the nickname
	    EMAIL      Associate an E-mail address with the nickname
	    ICQ        Associate an ICQ number with the nickname
	    GREET      Associate a greet message with the nickname
	    KILL       Turn protection on or off
	    SECURE     Turn nickname security on or off
	    PRIVATE    Prevent the nickname from appearing in a
	                   %R%S LIST
	    HIDE       Hide certain pieces of nickname information
	    MSG        Change the communication method of Services
	    NOEXPIRE   Prevent the nickname from expiring
	    AUTOOP     Turn autoop on or off
	    LANGUAGE   Set the language Services will use when
	               sending messages to nickname
	
	Type %R%S HELP SASET option for more information
	on a specific option. The options will be set on the given
	nickname. 

NICK_HELP_SASET_DISPLAY
#	Syntax: SASET nickname DISPLAY new-display
	構文: SASET nickname DISPLAY new-display
	
	Changes the display used to refer to the nickname group in 
	Services. The new display MUST be a nick of the group.

NICK_HELP_SASET_PASSWORD
#	Syntax: SASET nickname PASSWORD new-password
	構文: SASET nickname PASSWORD new-password
	
	Changes the password used to identify as the nick's	owner.

NICK_HELP_SASET_URL
#	Syntax: SASET nickname URL url
	構文: SASET nickname URL url
	
	Associates the given URL with the nickname.  This URL
	will be displayed whenever someone requests information
	on the nick with the INFO command.

NICK_HELP_SASET_EMAIL
#	Syntax: SASET nickname EMAIL address
	構文: SASET nickname EMAIL address
	
	Associates the given E-mail address with the nickname.
	
NICK_HELP_SASET_ICQ
#	Syntax: SASET nickname ICQ number
	構文: SASET nickname ICQ number
	
	Associates the given ICQ number with the nickname.  This 
	number will be displayed whenever someone requests 
	information on the nick with the INFO command.
	
NICK_HELP_SASET_GREET
#	Syntax: SASET nickname GREET message
	構文: SASET nickname GREET message
	
	Makes the given message the greet of the nickname, that
	will be displayed when joining a channel that has GREET
	option enabled, provided that the user has the necessary 
	access on it.

NICK_HELP_SASET_KILL
#	Syntax: SASET nickname KILL {ON | QUICK | IMMED | OFF}
	構文: SASET nickname KILL {ON | QUICK | IMMED | OFF}
	
	Turns the automatic protection option for the nick
	on or off.  With protection on, if another user
	tries to take the nick, they will be given one minute to
	change to another nick, after which %S will forcibly change
	their nick.
	
	If you select QUICK, the user will be given only 20 seconds
	to change nicks instead of the usual 60.  If you select
	IMMED, user's nick will be changed immediately without being
	warned first or given a chance to change their nick; please
	do not use this option unless necessary.  Also, your
	network's administrators may have disabled this option.

NICK_HELP_SASET_SECURE
#	Syntax: SASET nickname SECURE {ON | OFF}
	構文: SASET nickname SECURE {ON | OFF}
	
	Turns %S's security features on or off for your
	nick.  With SECURE set, you must enter your password
	before you will be recognized as the owner of the nick,
	regardless of whether your address is on the access
	list.  However, if you are on the access list, %S
	will not auto-kill you regardless of the setting of the
	KILL option.

NICK_HELP_SASET_PRIVATE
#	Syntax: SASET nickname PRIVATE {ON | OFF}
	構文: SASET nickname PRIVATE {ON | OFF}
	
	Turns %S's privacy option on or off for the nick.
	With PRIVATE set, the nickname will not appear in
	nickname lists generated with %S's LIST command.
	(However, anyone who knows the nickname can still get
	information on it using the INFO command.)

NICK_HELP_SASET_HIDE
#	Syntax: SASET nickname HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	構文: SASET nickname HIDE {EMAIL | STATUS | USERMASK | QUIT} {ON | OFF}
	
	Allows you to prevent certain pieces of information from
	being displayed when someone does a %S INFO on the
	nick.  You can hide the E-mail address (EMAIL), last seen
	user@host mask (USERMASK), the services access status
	(STATUS) and  last quit message (QUIT).
	The second parameter specifies whether the information should
	be displayed (OFF) or hidden (ON).
	
NICK_HELP_SASET_MSG
#	Syntax: SASET nickname MSG {ON | OFF}
	構文: SASET nickname MSG {ON | OFF}
	
	Allows you to choose the way Services are communicating with 
	the given user. With MSG set, Services will use messages,
	else they'll use notices.

NICK_HELP_SASET_NOEXPIRE
#	Syntax: SASET nickname NOEXPIRE {ON | OFF}
	構文: SASET nickname NOEXPIRE {ON | OFF}
	
	Sets whether the given nickname will expire.  Setting this
	to ON prevents the nickname from expiring.

NICK_HELP_SASET_AUTOOP
#	Syntax: SASET nickname AUTOOP {ON | OFF}
	構文: SASET nickname AUTOOP {ON | OFF}
	
	Sets whether the given nickname will be opped automatically.
	Set to ON to allow ChanServ to op the given nickname 
	automatically when joining channels.

NICK_HELP_SASET_LANGUAGE
#	Syntax: SASET nickname LANGUAGE number
	構文: SASET nickname LANGUAGE number
	
	Changes the language Services uses when sending messages to
	nickname (for example, when responding to a command he sends).
	number should be chosen from a list of supported languages
	that you can get by typing %R%S HELP SET LANGUAGE.

NICK_HELP_RECOVER
#	Syntax: RECOVER nickname [password]
	構文: RECOVER nickname [password]
	
	Allows you to recover your nickname if someone else has
	taken it; this does the same thing that %S does
	automatically if someone tries to use a kill-protected
	nick.
	
	When you give this command, %S will bring a fake
	user online with the same nickname as the user you're
	trying to recover your nick from.  This causes the IRC
	servers to disconnect the other user.  This fake user will
	remain online for %s to ensure that the other
	user does not immediately reconnect; after that time, you
	can reclaim your nick.  Alternatively, use the RELEASE
	command (%R%S HELP RELEASE) to get the nick
	back sooner.
	
	In order to use the RECOVER command for a nick, your
	current address as shown in /WHOIS must be on that nick's
	access list, you must be identified and in the group of
	that nick, or you must supply the correct password for
	the nickname.

NICK_HELP_RELEASE
#	Syntax: RELEASE nickname [password]
	構文: RELEASE nickname [password]
	
	Instructs %S to remove any hold on your nickname
	caused by automatic kill protection or use of the RECOVER
	command.  This holds lasts for %s;
	this command gets rid of them sooner.
	
	In order to use the RELEASE command for a nick, your
	current address as shown in /WHOIS must be on that nick's
	access list, you must be identified and in the group of
	that nick, or you must supply the correct password for
	the nickname.

NICK_HELP_GHOST
#	Syntax: GHOST nickname [password]
	構文: GHOST nickname [password]
	
	Terminates a "ghost" IRC session using your nick.  A
	"ghost" session is one which is not actually connected,
	but which the IRC server believes is still online for one
	reason or another.  Typically, this happens if your
	computer crashes or your Internet or modem connection
	goes down while you're on IRC.
	
	In order to use the GHOST command for a nick, your
	current address as shown in /WHOIS must be on that nick's
	access list, you must be identified and in the group of
	that nick, or you must supply the correct password for
	the nickname.

NICK_HELP_INFO
#	Syntax: INFO nickname [ALL]
	構文: INFO nickname [ALL]
	
	Displays information about the given nickname, such as
	the nick's owner, last seen address and time, and nick
	options. If you are identified for the nick you're 
	getting information for and ALL is specified, you will
	be shown all the information; regardless of whether 
	it's hidden or not.

NICK_HELP_LIST
#	Syntax: LIST pattern
	構文: LIST pattern
	
	Lists all registered nicknames which match the given
	pattern, in nick!user@host format.  Nicks with the
	PRIVATE option set will not be displayed.
	
	Examples:
	
	    LIST *!joeuser@foo.com
	        Lists all nicks owned by joeuser@foo.com.
	
	    LIST *Bot*!*@*
	        Lists all registered nicks with Bot in their
	        names (case insensitive).
	
	    LIST *!*@*.bar.org
	        Lists all nicks owned by users in the bar.org
	        domain.

NICK_HELP_ALIST
#	Syntax: ALIST [level]
	構文: ALIST [level]
	
	Lists all channels you have access on. Optionally, you can specify
	a level in XOP or ACCESS format. The resulting list will only
	include channels where you have the given level of access.

	Examples:
	    ALIST Founder
	        Lists all channels where you have Founder
	        access.

	    ALIST AOP
	        Lists all channels where you have AOP
	        access or greater.

	    ALIST 10
	        Lists all channels where you have level 10
	        access or greater.

	Channels that have the NOEXPIRE option set will be
	prefixed by an exclamation mark.

NICK_HELP_GLIST
#	Syntax: GLIST
	構文: GLIST
	
	Lists all nicks in your group.

NICK_HELP_STATUS
#	Syntax: STATUS nickname...
	構文: STATUS nickname...
	
	Returns whether the user using the given nickname is
	recognized as the owner of the nickname.  The response has
	this format:
	
	    nickname status-code
	
	where nickname is the nickname sent with the command, and
	status-code is one of the following:
	
	    0 - no such user online or nickname not registered
	    1 - user not recognized as nickname's owner
	    2 - user recognized as owner via access list only
	    3 - user recognized as owner via password identification
	
	Up to sixteen nicknames may be sent with each command; the
	rest will be ignored. If no nickname is given, your status
	will be returned.

NICK_HELP_SENDPASS
#	Syntax: SENDPASS nickname
	構文: SENDPASS nickname
	
	Send the password of the given nickname to the e-mail address
	set in the nickname record. This command is really useful
	to deal with lost passwords.
	
	May be limited to IRC operators on certain networks.
	
	This command is unavailable when encryption is enabled.

NICK_HELP_CONFIRM
#	Syntax: CONFIRM passcode
	構文: CONFIRM passcode
	
	This is the second step of nickname registration process.
	You must perform this command in order to get your nickname
	registered with %S. The passcode (or called auth code also)
	is sent to your e-mail address in the first step of the
	registration process. For more information about the first
	stage of the registration process, type: %R%S HELP REGISTER

NICK_HELP_RESEND
#	Syntax: RESEND
	構文: RESEND
	
	This command will re-send the auth code (also called passcode)
	to the e-mail address of the user whom is performing it.

NICK_SERVADMIN_HELP
	 
	Services admins can also drop any nickname without needing
	to identify for the nick, and may view the access list for
	any nickname (%R%S ACCESS LIST nick).

NICK_SERVADMIN_HELP_LOGOUT
#	Syntax: LOGOUT [nickname [REVALIDATE]]
	構文: LOGOUT [nickname [REVALIDATE]]
	
	Without a parameter, reverses the effect of the IDENTIFY 
	command, i.e. make you not recognized as the real owner of the nick
	anymore. Note, however, that you won't be asked to reidentify
	yourself.
	
	With a parameter, does the same for the given nick. If you 
	specify REVALIDATE as well, Services will ask the given nick
	to re-identify. This use limited to Services admins.

NICK_SERVADMIN_HELP_DROP
#	Syntax: DROP [nickname]
	構文: DROP [nickname]
	
	Without a parameter, drops your nickname from the
	%S database.
	
	With a parameter, drops the named nick from the database.
	You may drop any nick within your group without any 
	special privileges. Dropping any nick is limited to 
	Services admins.

NICK_SERVADMIN_HELP_INFO
	
	Services admins may use the ALL parameter with any nick.

NICK_SERVADMIN_HELP_LIST
#	Syntax: LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
	構文: LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE] [UNCONFIRMED]
	
	Lists all registered nicknames which match the given
	pattern, in nick!user@host format.  Nicks with the PRIVATE
	option set will only be displayed to Services admins.  Nicks
	with the NOEXPIRE option set will have a ! appended to
	the nickname for Services admins.
	
	If the FORBIDDEN, SUSPENDED, NOEXPIRE or UNCONFIRMED options are given, only
	nicks which, respectively, are FORBIDDEN, SUSPENDED, UNCONFIRMED or have the
	NOEXPIRE flag set will be displayed. If multiple options are
	given, all nicks matching at least one option will be displayed.
	These options are limited to Services admins.  

	Examples:
	
	    LIST *!joeuser@foo.com
	        Lists all registered nicks owned by joeuser@foo.com.
	
	    LIST *Bot*!*@*
	        Lists all registered nicks with Bot in their
	        names (case insensitive).
	
	    LIST * NOEXPIRE
	        Lists all registered nicks which have been set to
	        not expire.

NICK_SERVADMIN_HELP_ALIST
#	Syntax: ALIST [nickname] [level]
	構文: ALIST [nickname] [level]
	
	With no parameters, lists channels you have access on. With
	one parameter, lists channels that nickname has access 
	on. With two parameters lists channels that nickname has 
	level access or greater on.

	This use limited to Services admins.

NICK_SERVADMIN_HELP_GLIST
#	Syntax: GLIST [nickname]
	構文: GLIST [nickname]
	
	Without a parameter, lists all nicknames that are in
	your group.
	
	With a parameter, lists all nicknames that are in the
	group of the given nick.
	This use limited to Services admins.

NICK_SERVADMIN_HELP_GETPASS
#	Syntax: GETPASS nickname
	構文: GETPASS nickname
	
	Returns the password for the given nickname.  Note that
	whenever this command is used, a message including the
	person who issued the command and the nickname it was used
	on will be logged and sent out as a WALLOPS/GLOBOPS.
	
	This command is unavailable when encryption is enabled.

NICK_SERVADMIN_HELP_GETEMAIL
#	Syntax: GETEMAIL user@emailhost
	構文: GETEMAIL user@emailhost

	Returns the matching nicks that used given email. Note that
	you can not use wildcards for either user or emailhost. Whenever
	this command is used, a message including the person who issued
	the command and the email it was used on will be logged.

NICK_SERVADMIN_HELP_FORBID
#	Syntax: FORBID nickname [reason]
	構文: FORBID nickname [reason]
	
	Disallows a nickname from being registered or used by
	anyone.  May be cancelled by dropping the nick.
	
	On certain networks, reason is required.

NICK_SERVADMIN_HELP_SUSPEND
#	Syntax: SUSPEND nickname reason
	構文: SUSPEND nickname reason

	SUSPENDs a nickname from being used.

NICK_SERVADMIN_HELP_UNSUSPEND
#	Syntax: UNSUSPEND nickname
	構文: UNSUSPEND nickname

	UNSUSPENDS a nickname from being used.

###########################################################################
#
# ChanServ help messages
#
###########################################################################

CHAN_HELP_CMD_GETPASS
	    GETPASS    Retrieve the founder password for a channel
CHAN_HELP_CMD_FORBID
	    FORBID     Prevent a channel from being used
CHAN_HELP_CMD_SUSPEND
	    SUSPEND    Prevent a channel from being used preserving
	               channel data and settings
CHAN_HELP_CMD_UNSUSPEND
	    UNSUSPEND  Releases a suspended channel
CHAN_HELP_CMD_STATUS
	    STATUS     Returns the current access level of a user
	               on a channel
CHAN_HELP_CMD_REGISTER
	    REGISTER   Register a channel
CHAN_HELP_CMD_IDENTIFY
	    IDENTIFY   Identify yourself with your password
CHAN_HELP_CMD_SET
	    SET        Set channel options and information
CHAN_HELP_CMD_AOP
	    AOP        Modify the list of AOP users
CHAN_HELP_CMD_SOP
	    SOP        Modify the list of SOP users
CHAN_HELP_CMD_ACCESS
	    ACCESS     Modify the list of privileged users
CHAN_HELP_CMD_LEVELS
	    LEVELS     Redefine the meanings of access levels
CHAN_HELP_CMD_AKICK
	    AKICK      Maintain the AutoKick list
CHAN_HELP_CMD_DROP
	    DROP       Cancel the registration of a channel
CHAN_HELP_CMD_SENDPASS
	    SENDPASS   Help retrieve lost passwords
CHAN_HELP_CMD_BAN
	    BAN        Bans a selected nick on a channel
CHAN_HELP_CMD_CLEAR
	    CLEAR      Tells ChanServ to clear certain settings on a channel
CHAN_HELP_CMD_DEVOICE
	    DEVOICE    Devoices a selected nick on a channel
CHAN_HELP_CMD_GETKEY
	    GETKEY     Returns the key of the given channel
CHAN_HELP_CMD_INFO
	    INFO       Lists information about the named registered channel
CHAN_HELP_CMD_INVITE
	    INVITE     Tells ChanServ to invite you into a channel
CHAN_HELP_CMD_KICK
	    KICK       Kicks a selected nick from a channel
CHAN_HELP_CMD_LIST
	    LIST       Lists all registered channels matching the given pattern
CHAN_HELP_CMD_LOGOUT
	    LOGOUT     This command will logout the selected nickname
CHAN_HELP_CMD_OP
	    OP         Gives Op status to a selected nick on a channel
CHAN_HELP_CMD_TOPIC
	    TOPIC      Manipulate the topic of the specified channel
CHAN_HELP_CMD_UNBAN
	    UNBAN      Remove all bans preventing you from entering a channel
CHAN_HELP_CMD_VOICE
	    VOICE      Voices a selected nick on a channel
CHAN_HELP_CMD_VOP
	    VOP        Maintains the VOP (VOicePeople) list for a channel
CHAN_HELP_CMD_DEHALFOP
	    DEHALFOP   Dehalfops a selected nick on a channel
CHAN_HELP_CMD_DEOWNER
	    DEOWNER    Removes your owner status on a channel
CHAN_HELP_CMD_DEPROTECT
	    DEPROTECT  Deprotects a selected nick on a channel
CHAN_HELP_CMD_HALFOP
	    HALFOP     Halfops a selected nick on a channel
CHAN_HELP_CMD_HOP
	    HOP        Maintains the HOP (HalfOP) list for a channel
CHAN_HELP_CMD_OWNER
	    OWNER      Gives you owner status on channel
CHAN_HELP_CMD_PROTECT
	    PROTECT    Protects a selected nick on a channel
CHAN_HELP_CMD_ADMIN
	    ADMIN      Protects a selected nick on a channel
CHAN_HELP_CMD_DEADMIN
	    DEADMIN    Deprotects a selected nick on a channel
CHAN_HELP_CMD_DEOP
	    DEOP       Deops a selected nick on a channel

CHAN_HELP
	%S allows you to register and control various
	aspects of channels.  %S can often prevent
	malicious users from "taking over" channels by limiting
	who is allowed channel operator privileges.  Available
	commands are listed below; to use them, type
	%R%S command.  For more information on a
	specific command, type %R%S HELP command.
	 
	
CHAN_HELP_EXPIRES
	
	Note that any channel which is not used for %d days
	(i.e. which no user on the channel's access list enters
	for that period of time) will be automatically dropped.

CHAN_HELP_REGISTER
#	Syntax: REGISTER channel password description
	構文: REGISTER channel password description
	
	Registers a channel in the %S database.  In order
	to use this command, you must first be a channel operator
	on the channel you're trying to register.  The password
	is used with the IDENTIFY command to allow others to
	make changes to the channel settings at a later time.
	The last parameter, which must be included, is a
	general description of the channel's purpose.
	
	When you register a channel, you are recorded as the
	"founder" of the channel.  The channel founder is allowed
	to change all of the channel settings for the channel;
	%S will also automatically give the founder
	channel-operator privileges when s/he enters the channel.
	See the ACCESS command (%R%S HELP ACCESS) for
	information on giving a subset of these privileges to
	other channel users.
	
	NOTICE: In order to register a channel, you must have
	first registered your nickname.  If you haven't,
	%R%s HELP for information on how to do so.

CHAN_HELP_IDENTIFY
#	Syntax: IDENTIFY channel password
	構文: IDENTIFY channel password
	
	Authenticates you to %S as the founder of the given
	channel.  Many commands require you to use this command
	before using them.  The password should be the same one
	you sent with the REGISTER command.
	
CHAN_HELP_LOGOUT
#	Syntax: LOGOUT channel nickname
	構文: LOGOUT channel nickname
	
	This command will log the selected nickname out meaning they 
	would have to reidentify themselves to regain their access.
	
	If you are the founder of the channel, you can log out anybody,
	else you can only log out yourself.

CHAN_HELP_DROP
#	Syntax: DROP channel
	構文: DROP channel
	
	Unregisters the named channel.  Can only be used by
	channel founder, who must use the IDENTIFY command first.

CHAN_HELP_SET
#	Syntax: SET channel option parameters
	構文: SET channel option parameters
	
	Allows the channel founder to set various channel options
	and other information.
	
	Available options:
	
	    FOUNDER       Set the founder of a channel
	    SUCCESSOR     Set the successor for a channel
	    PASSWORD      Set the founder password
	    DESC          Set the channel description
	    URL           Associate a URL with the channel
	    EMAIL         Associate an E-mail address with the channel
	    ENTRYMSG      Set a message to be sent to users when they
	                     enter the channel
	    BANTYPE       Set how Services make bans on the channel
	    MLOCK         Lock channel modes on or off
	    KEEPTOPIC     Retain topic when channel is not in use
	    OPNOTICE      Send a notice when OP/DEOP commands are used
	    PEACE         Regulate the use of critical commands
	    PRIVATE       Hide channel from LIST command
	    RESTRICTED    Restrict access to the channel
	    SECURE        Activate %S security features
	    SECUREOPS     Stricter control of chanop status
	    SECUREFOUNDER Stricter control of channel founder status
	    SIGNKICK      Sign kicks that are done with KICK command
	    TOPICLOCK     Topic can only be changed with TOPIC
	    XOP           Toggle the user privilege system
	
	Type %R%S HELP SET option for more information on a
	particular option.

CHAN_HELP_SET_FOUNDER
#	Syntax: SET channel FOUNDER nick
	構文: SET channel FOUNDER nick
	
	Changes the founder of a channel.  The new nickname must
	be a registered one.

CHAN_HELP_SET_SUCCESSOR
#	Syntax: SET channel SUCCESSOR nick
	構文: SET channel SUCCESSOR nick
	
	Changes the successor of a channel.  If the founder's
	nickname expires or is dropped while the channel is still
	registered, the successor will become the new founder of the
	channel.  However, if the successor already has too many
	channels registered (%d), the channel will be dropped
	instead, just as if no successor had been set.  The new
	nickname must be a registered one.

CHAN_HELP_SET_PASSWORD
#	Syntax: SET channel PASSWORD password
	構文: SET channel PASSWORD password
	
	Sets the password used to identify as the founder of the
	channel.

CHAN_HELP_SET_DESC
#	Syntax: SET channel DESC description
	構文: SET channel DESC description
	
	Sets the description for the channel, which shows up with
	the LIST and INFO commands.

CHAN_HELP_SET_URL
#	Syntax: SET channel URL [url]
	構文: SET channel URL [url]
	
	Associates the given URL with the channel.  This URL will
	be displayed whenever someone requests information on the
	channel with the INFO command.  If no parameter is given,
	deletes any current URL for the channel.

CHAN_HELP_SET_EMAIL
#	Syntax: SET channel EMAIL [address]
	構文: SET channel EMAIL [address]
	
	Associates the given E-mail address with the channel.
	This address will be displayed whenever someone requests
	information on the channel with the INFO command.  If no
	parameter is given, deletes any current E-mail address for
	the channel.

CHAN_HELP_SET_ENTRYMSG
#	Syntax: SET channel ENTRYMSG [message]
	構文: SET channel ENTRYMSG [message]
	
	Sets the message which will be sent via /notice to users
	when they enter the channel.  If no parameter is given,
	causes no message to be sent upon entering the channel.

CHAN_HELP_SET_BANTYPE
#	Syntax: SET channel BANTYPE bantype
	構文: SET channel BANTYPE bantype
	
	Sets the ban type that will be used by services whenever
	they need to ban someone from your channel.
	
	bantype is a number between 0 and 3 that means:
	
	0: ban in the form *!user@host
	1: ban in the form *!*user@host
	2: ban in the form *!*@host
	3: ban in the form *!*user@*.domain

CHAN_HELP_SET_KEEPTOPIC
#	Syntax: SET channel KEEPTOPIC {ON | OFF}
	構文: SET channel KEEPTOPIC {ON | OFF}
	
	Enables or disables the topic retention option for a
	channel.  When topic retention is set, the topic for the
	channel will be remembered by %S even after the
	last user leaves the channel, and will be restored the
	next time the channel is created.

CHAN_HELP_SET_TOPICLOCK
#	Syntax: SET channel TOPICLOCK {ON | OFF}
	構文: SET channel TOPICLOCK {ON | OFF}
	
	Enables or disables the topic lock option for a channel.
	When topic lock is set, %S will not allow the
	channel topic to be changed except via the TOPIC
	command.

CHAN_HELP_SET_MLOCK
#	Syntax: SET channel MLOCK modes
	構文: SET channel MLOCK modes
	
	Sets the mode-lock parameter for the channel. %S
	allows you to define certain channel modes to be always
	on, off or free to be either on or off.
	
	The modes parameter is constructed exactly the same way 
	as a /MODE command; that is, modes followed by a + are 
	locked on, and modes followed by a - are locked off. Note,
	however, that unlike the /MODE command, each use of
	SET MLOCK will remove all modes previously locked before
	setting the new!
	
	Warning:  If you set a mode-locked key, as in the second
	example below, you should also set the RESTRICTED option for
	the channel (see HELP SET RESTRICTED), or anyone entering
	the channel when it is empty will be able to see the key!
	
	Examples:
	
	    SET #channel MLOCK +nt-iklps
	        Forces modes n and t on, and modes i, k, l, p, and
	        s off.  Mode m is left free to be either on or off.
	
	    SET #channel MLOCK +knst-ilmp my-key
	        Forces modes k, n, s, and t on, and modes i, l, m,
	        and p off.  Also forces the channel key to be
	        "my-key".
	
	    SET #channel MLOCK +
	        Removes the mode lock; all channel modes are free
	        to be either on or off.

CHAN_HELP_SET_PEACE
#	Syntax: SET channel PEACE {ON | OFF}
	構文: SET channel PEACE {ON | OFF}
	
	Enables or disables the peace option for a channel.
	When peace is set, an user won't be able to kick,
	ban or remove a channel status of an user that has
	a level superior or equal to his via %S commands.

CHAN_HELP_SET_PRIVATE
#	Syntax: SET channel PRIVATE {ON | OFF}
	構文: SET channel PRIVATE {ON | OFF}
	
	Enables or disables the private option for a channel.
	When private is set, a %R%S LIST will not
	include the channel in any lists.

CHAN_HELP_SET_RESTRICTED
#	Syntax: SET channel RESTRICTED {ON | OFF}
	構文: SET channel RESTRICTED {ON | OFF}
	
	Enables or disables the restricted access option for a
	channel.  When restricted access is set, users not on
	the access list will instead be kicked and banned from the channel.

CHAN_HELP_SET_SECURE
#	Syntax: SET channel SECURE {ON | OFF}
	構文: SET channel SECURE {ON | OFF}
	
	Enables or disables %S's security features for a
	channel.  When SECURE is set, only users who have
	registered their nicknames with %s and IDENTIFY'd
	with their password will be given access to the channel
	as controlled by the access list.

CHAN_HELP_SET_SECUREOPS
#	Syntax: SET channel SECUREOPS {ON | OFF}
	構文: SET channel SECUREOPS {ON | OFF}
	
	Enables or disables the secure ops option for a channel.
	When secure ops is set, users who are not on the userlist
	will not be allowed chanop status.
	
CHAN_HELP_SET_SECUREFOUNDER
#	Syntax: SET channel SECUREFOUNDER {ON | OFF}
	構文: SET channel SECUREFOUNDER {ON | OFF}
	
	Enables or disables the secure founder option for a channel.
	When secure founder is set, only the real founder will be
	able to drop the channel, change its password, its founder and its
	successor, and not those who are IDENTIFY'd with %S.
	
CHAN_HELP_SET_SIGNKICK
#	Syntax: SET channel SIGNKICK {ON | LEVEL | OFF}
	構文: SET channel SIGNKICK {ON | LEVEL | OFF}
	
	Enables or disables signed kicks for a
	channel.  When SIGNKICK is set, kicks issued with
	%S KICK command will have the nick that used the
	command in their reason.
	
	If you use LEVEL, those who have a level that is superior 
	or equal to the SIGNKICK level on the channel won't have their 
	kicks signed. See %R%S HELP LEVELS for more information. 

CHAN_HELP_SET_XOP
#	Syntax: SET channel XOP {ON | OFF}
	構文: SET channel XOP {ON | OFF}
	
	Enables or disables the xOP lists system for a channel.
	When XOP is set, you have to use the AOP/SOP/VOP
	commands in order to give channel privileges to
	users, else you have to use the ACCESS command.
	
	Technical Note: when you switch from access list to xOP 
	lists system, your level definitions and user levels will be
	changed, so you won't find the same values if you
	switch back to access system! 
	
	You should also check that your users are in the good xOP 
	list after the switch from access to xOP lists, because the 
	guess is not always perfect... in fact, it is not recommended 
	to use the xOP lists if you changed level definitions with 
	the LEVELS command.
	
	Switching from xOP lists system to access list system
	causes no problem though.

CHAN_HELP_SET_OPNOTICE
#	Syntax: SET channel OPNOTICE {ON | OFF}
	構文: SET channel OPNOTICE {ON | OFF}
	
	Enables or disables the op-notice option for a channel.
	When op-notice is set, %S will send a notice to the
	channel whenever the OP or DEOP commands are used for a user
	in the channel.

CHAN_HELP_AOP
#	Syntax: AOP channel ADD nick
#	        AOP channel DEL {nick | entry-num | list}
#	        AOP channel LIST [mask | list]
#	        AOP channel CLEAR
	構文: AOP channel ADD nick
	      AOP channel DEL {nick | entry-num | list}
	      AOP channel LIST [mask | list]
	      AOP channel CLEAR
	
	Maintains the AOP (AutoOP) list for a channel. The AOP 
	list gives users the right to be auto-opped on your channel,
	to unban or invite themselves if needed, to have their
	greet message showed on join, and so on.
	
	The AOP ADD command adds the given nickname to the
	AOP list.
	
	The AOP DEL command removes the given nick from the
	AOP list.  If a list of entry numbers is given, those
	entries are deleted.  (See the example for LIST below.)
	
	The AOP LIST command displays the AOP list.  If
	a wildcard mask is given, only those entries matching the
	mask are displayed.  If a list of entry numbers is given,
	only those entries are shown; for example:

	   AOP #channel LIST 2-5,7-9
	      Lists AOP entries numbered 2 through 5 and
	      7 through 9.
	      
	The AOP CLEAR command clears all entries of the
	AOP list.
	
	The AOP ADD and AOP DEL commands are limited to
	SOPs or above, while the AOP CLEAR command can only
	be used by the channel founder. However, any user on the
	AOP list may use the AOP LIST command.
	
	This command may have been disabled for your channel, and
	in that case you need to use the access list. See 
	%R%S HELP ACCESS for information about the access list,
	and %R%S HELP SET XOP to know how to toggle between 
	the access list and xOP list systems.

CHAN_HELP_HOP
#	Syntax: HOP channel ADD nick
#	        HOP channel DEL {nick | entry-num | list}
#	        HOP channel LIST [mask | list]
#	        HOP channel CLEAR
	構文: HOP channel ADD nick
	      HOP channel DEL {nick | entry-num | list}
	      HOP channel LIST [mask | list]
	      HOP channel CLEAR
	
	Maintains the HOP (HalfOP) list for a channel. The HOP 
	list gives users the right to be auto-halfopped on your 
	channel.
	
	The HOP ADD command adds the given nickname to the
	HOP list.
	
	The HOP DEL command removes the given nick from the
	HOP list.  If a list of entry numbers is given, those
	entries are deleted.  (See the example for LIST below.)
	
	The HOP LIST command displays the HOP list.  If
	a wildcard mask is given, only those entries matching the
	mask are displayed.  If a list of entry numbers is given,
	only those entries are shown; for example:

	   HOP #channel LIST 2-5,7-9
	      Lists HOP entries numbered 2 through 5 and
	      7 through 9.
	      
	The HOP CLEAR command clears all entries of the
	HOP list.
	
	The HOP ADD, HOP DEL and HOP LIST commands are 
	limited to AOPs or above, while the HOP CLEAR command 
	can only be used by the channel founder.
	
	This command may have been disabled for your channel, and
	in that case you need to use the access list. See 
	%R%S HELP ACCESS for information about the access list,
	and %R%S HELP SET XOP to know how to toggle between 
	the access list and xOP list systems.

CHAN_HELP_SOP
#	Syntax: SOP channel ADD nick
#	        SOP channel DEL {nick | entry-num | list}
#	        SOP channel LIST [mask | list]
#	        SOP channel CLEAR
	構文: SOP channel ADD nick
	      SOP channel DEL {nick | entry-num | list}
	      SOP channel LIST [mask | list]
	      SOP channel CLEAR
	
	Maintains the SOP (SuperOP) list for a channel. The SOP 
	list gives users all rights given by the AOP list, and adds
	those needed to use the AutoKick and the BadWords lists, 
	to send and read channel memos, and so on.
	
	The SOP ADD command adds the given nickname to the
	SOP list.
	
	The SOP DEL command removes the given nick from the
	SOP list.  If a list of entry numbers is given, those
	entries are deleted.  (See the example for LIST below.)
	
	The SOP LIST command displays the SOP list.  If
	a wildcard mask is given, only those entries matching the
	mask are displayed.  If a list of entry numbers is given,
	only those entries are shown; for example:

	   SOP #channel LIST 2-5,7-9
	      Lists AOP entries numbered 2 through 5 and
	      7 through 9.
	      
	The SOP CLEAR command clears all entries of the
	SOP list.
	
	The SOP ADD, SOP DEL and SOP CLEAR commands are 
	limited to the channel founder. However, any user on the
	AOP list may use the SOP LIST command.
	
	This command may have been disabled for your channel, and
	in that case you need to use the access list. See 
	%R%S HELP ACCESS for information about the access list,
	and %R%S HELP SET XOP to know how to toggle between 
	the access list and xOP list systems.

CHAN_HELP_VOP
#	Syntax: VOP channel ADD nick
#	        VOP channel DEL {nick | entry-num | list}
#	        VOP channel LIST [mask | list]
#	        VOP channel CLEAR
	構文: VOP channel ADD nick
	      VOP channel DEL {nick | entry-num | list}
	      VOP channel LIST [mask | list]
	      VOP channel CLEAR
	
	Maintains the VOP (VOicePeople) list for a channel.  
	The VOP list allows users to be auto-voiced and to voice 
	themselves if they aren't.
	
	The VOP ADD command adds the given nickname to the
	VOP list.
	
	The VOP DEL command removes the given nick from the
	VOP list.  If a list of entry numbers is given, those
	entries are deleted.  (See the example for LIST below.)
	
	The VOP LIST command displays the VOP list.  If
	a wildcard mask is given, only those entries matching the
	mask are displayed.  If a list of entry numbers is given,
	only those entries are shown; for example:

	   VOP #channel LIST 2-5,7-9
	      Lists VOP entries numbered 2 through 5 and
	      7 through 9.
	      
	The VOP CLEAR command clears all entries of the
	VOP list.
	
	The VOP ADD, VOP DEL and VOP LIST commands are 
	limited to AOPs or above, while the VOP CLEAR command 
	can only be used by the channel founder.
	
	This command may have been disabled for your channel, and
	in that case you need to use the access list. See 
	%R%S HELP ACCESS for information about the access list,
	and %R%S HELP SET XOP to know how to toggle between 
	the access list and xOP list systems.

CHAN_HELP_ACCESS
#	Syntax: ACCESS channel ADD nick level
#	        ACCESS channel DEL {nick | entry-num | list}
#	        ACCESS channel LIST [mask | list]
#	        ACCESS channel CLEAR
	構文: ACCESS channel ADD nick level
	      ACCESS channel DEL {nick | entry-num | list}
	      ACCESS channel LIST [mask | list]
	      ACCESS channel CLEAR
	
	Maintains the access list for a channel.  The access
	list specifies which users are allowed chanop status or
	access to %S commands on the channel.  Different
	user levels allow for access to different subsets of
	privileges; %R%S HELP ACCESS LEVELS for more
	specific information.  Any nick not on the access list has
	a user level of 0.
	
	The ACCESS ADD command adds the given nickname to the
	access list with the given user level; if the nick is
	already present on the list, its access level is changed to
	the level specified in the command.  The level specified
	must be less than that of the user giving the command, and
	if the nick is already on the access list, the current
	access level of that nick must be less than the access level
	of the user giving the command.
	
	The ACCESS DEL command removes the given nick from the
	access list.  If a list of entry numbers is given, those
	entries are deleted.  (See the example for LIST below.)
	
	The ACCESS LIST command displays the access list.  If
	a wildcard mask is given, only those entries matching the
	mask are displayed.  If a list of entry numbers is given,
	only those entries are shown; for example:

	   ACCESS #channel LIST 2-5,7-9
	      Lists access entries numbered 2 through 5 and
	      7 through 9.
	      
	The ACCESS CLEAR command clears all entries of the
	access list.

CHAN_HELP_ACCESS_LEVELS
	User access levels
	
	By default, the following access levels are defined:
	
	   Founder   Full access to %S functions; automatic
	                     opping upon entering channel.  Note
	                     that only one person may have founder
	                     status (it cannot be given using the
	                     ACCESS command).
	        10   Access to AKICK command; automatic opping.
	         5   Automatic opping.
	         3   Automatic voicing.
	         0   No special privileges; can be opped by other
	                     ops (unless secure-ops is set).
	        <0   May not be opped.
	
	These levels may be changed, or new ones added, using the
	LEVELS command; type %R%S HELP LEVELS for
	information.

CHAN_HELP_AKICK
#	Syntax: AKICK channel ADD {nick | mask} [reason]
#	        AKICK channel STICK mask
#	        AKICK channel UNSTICK mask
#	        AKICK channel DEL {nick | mask | entry-num | list}
#	        AKICK channel LIST [mask | entry-num | list]
#	        AKICK channel VIEW [mask | entry-num | list]
#	        AKICK channel ENFORCE
#	        AKICK channel CLEAR
	構文: AKICK channel ADD {nick | mask} [reason]
	      AKICK channel STICK mask
	      AKICK channel UNSTICK mask
	      AKICK channel DEL {nick | mask | entry-num | list}
	      AKICK channel LIST [mask | entry-num | list]
	      AKICK channel VIEW [mask | entry-num | list]
	      AKICK channel ENFORCE
	      AKICK channel CLEAR
	
	Maintains the AutoKick list for a channel.  If a user
	on the AutoKick list attempts to join the channel,
	%S will ban that user from the channel, then kick
	the user.
	
	The AKICK ADD command adds the given nick or usermask
	to the AutoKick list.  If a reason is given with
	the command, that reason will be used when the user is
	kicked; if not, the default reason is "You have been
	banned from the channel".
	When akicking a registered nick the nickserv account
	will be added to the akick list instead of the mask.
	All users within that nickgroup will then be akicked.
	
	The AKICK STICK command permanently bans the given mask 
	on the channel. If someone tries to remove the ban, %S
	will automatically set it again. You can't use it for
	registered nicks.
	
	The AKICK UNSTICK command cancels the effect of the
	AKICK STICK command, so you'll be able to unset the
	ban again on the channel.
	
	The AKICK DEL command removes the given nick or mask
	from the AutoKick list.  It does not, however, remove any
	bans placed by an AutoKick; those must be removed
	manually.
	
	The AKICK LIST command displays the AutoKick list, or
	optionally only those AutoKick entries which match the
	given mask.
	
	The AKICK VIEW command is a more verbose version of
	AKICK LIST command.
	
	The AKICK ENFORCE command causes %S to enforce the
	current AKICK list by removing those users who match an
	AKICK mask.
	
	The AKICK CLEAR command clears all entries of the
	akick list.

CHAN_HELP_LEVELS
#	Syntax: LEVELS channel SET type level
#	        LEVELS channel {DIS | DISABLE} type
#	        LEVELS channel LIST
#	        LEVELS channel RESET
	構文: LEVELS channel SET type level
	      LEVELS channel {DIS | DISABLE} type
	      LEVELS channel LIST
	      LEVELS channel RESET
	
	The LEVELS command allows fine control over the meaning of
	the numeric access levels used for channels.  With this
	command, you can define the access level required for most
	of %S's functions.  (The SET FOUNDER and SET PASSWORD
	commands, as well as this command, are always restricted to
	the channel founder.)
	
	LEVELS SET allows the access level for a function or group of
	functions to be changed.  LEVELS DISABLE (or DIS for short)
	disables an automatic feature or disallows access to a
	function by anyone other than the channel founder.
	LEVELS LIST shows the current levels for each function or
	group of functions.  LEVELS RESET resets the levels to the
	default levels of a newly-created channel (see
	HELP ACCESS LEVELS).
	
	For a list of the features and functions whose levels can be
	set, see HELP LEVELS DESC.

CHAN_HELP_LEVELS_DESC
	The following feature/function names are understood.  Note
	that the levels for AUTODEOP and NOJOIN are maximum levels,
	while all others are minimum levels.

CHAN_HELP_LEVELS_DESC_FORMAT
	    %-*s  %s

CHAN_HELP_INFO
#	Syntax: INFO channel [ALL]
	構文: INFO channel [ALL]
	
	Lists information about the named registered channel,
	including its founder, time of registration, last time
	used, description, and mode lock, if any. If ALL is 
	specified, the entry message and successor will also 
	be displayed.
	
	By default, the ALL option is limited to those with
	founder access on the channel.

CHAN_HELP_LIST
#	Syntax: LIST pattern
	構文: LIST pattern
	
	Lists all registered channels matching the given pattern.
	(Channels with the PRIVATE option set are not listed.)
	Note that a preceding '#' specifies a range, channel names
	are to be written without '#'.

CHAN_HELP_OP
#	Syntax: OP [#channel [nick]]
	構文: OP [#channel [nick]]
	
	Ops a selected nick on a channel. If nick is not given,
	it will op you. If channel and nick are not given,
	it will op you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel.

CHAN_HELP_DEOP
#	Syntax: DEOP [#channel [nick]]
	構文: DEOP [#channel [nick]]
	
	Deops a selected nick on a channel. If nick is not given,
	it will deop you. If channel and nick are not given,
	it will deop you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel.
	
CHAN_HELP_VOICE
#	Syntax: VOICE [#channel [nick]]
	構文: VOICE [#channel [nick]]
	
	Voices a selected nick on a channel. If nick is not given,
	it will voice you. If channel and nick are not given,
	it will voice you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel, or to VOPs or those with level 3 
	and above for self voicing.

CHAN_HELP_DEVOICE
#	Syntax: DEVOICE [#channel [nick]]
	構文: DEVOICE [#channel [nick]]
	
	Devoices a selected nick on a channel. If nick is not given,
	it will devoice you. If channel and nick are not given,
	it will devoice you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel, or to VOPs or those with level 3 
	and above for self devoicing.
	
CHAN_HELP_HALFOP
#	Syntax: HALFOP [#channel [nick]]
	構文: HALFOP [#channel [nick]]
	
	Halfops a selected nick on a channel. If nick is not given,
	it will halfop you. If channel and nick are not given,
	it will halfop you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs and those with level 5 access 
	and above on the channel, or to HOPs or those with level 4 
	and above for self halfopping.

CHAN_HELP_DEHALFOP
#	Syntax: DEHALFOP [#channel [nick]]
	構文: DEHALFOP [#channel [nick]]
	
	Dehalfops a selected nick on a channel. If nick is not given,
	it will dehalfop you. If channel and nick are not given,
	it will dehalfop you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs and those with level 5 access 
	and above on the channel, or to HOPs or those with level 4 
	and above for self dehalfopping.
	
CHAN_HELP_PROTECT
#	Syntax: PROTECT [#channel [nick]]
	構文: PROTECT [#channel [nick]]
	
	Protects a selected nick on a channel. If nick is not given,
	it will protect you. If channel and nick are not given,
	it will protect you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to the founder, or to SOPs or those with 
	level 10 and above on the channel for self protecting.

CHAN_HELP_DEPROTECT
#	Syntax: DEPROTECT [#channel [nick]]
	構文: DEPROTECT [#channel [nick]]
	
	Deprotects a selected nick on a channel. If nick is not given,
	it will deprotect you. If channel and nick are not given,
	it will deprotect you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to the founder, or to SOPs or those with 
	level 10 and above on the channel for self deprotecting.

CHAN_HELP_OWNER
#	Syntax: OWNER [#channel]
	構文: OWNER [#channel]
	
	Gives you owner status on channel. If channel is not 
	given, it will give you owner status on all channels you're 
	on, provided you have the rights to.
	
	Limited to those with founder access on the channel.

CHAN_HELP_DEOWNER
#	Syntax: DEOWNER [#channel]
	構文: DEOWNER [#channel]
	
	Removes your owner status on channel. If channel is 
	not given, it will remove your owner status on all channels 
	you're on, provided you have the rights to.
	
	Limited to those with founder access on the channel.

CHAN_HELP_INVITE
#	Syntax: INVITE channel
	構文: INVITE channel
	
	Tells %S to invite you into the given channel.  
	
	By default, limited to AOPs or those with level 5 and above
	on the channel.

CHAN_HELP_UNBAN
#	Syntax: UNBAN channel
	構文: UNBAN channel
	
	Tells %S to remove all bans preventing you from
	entering the given channel.  
	
	By default, limited to AOPs or those with level 5 and above
	on the channel.
	
CHAN_HELP_KICK
#	Syntax: KICK [#channel [nick [reason]]]
	構文: KICK [#channel [nick [reason]]]
	
	Kicks a selected nick on a channel. If nick is not given,
	it will kick you. If channel and nick are not given,
	it will kick you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel.

CHAN_HELP_BAN
#	Syntax: BAN [#channel [nick [reason]]]
	構文: BAN [#channel [nick [reason]]]
	
	Bans a selected nick on a channel. If nick is not given,
	it will ban you. If channel and nick are not given,
	it will ban you on all channels you're on, provided you
	have the rights to.
	
	By default, limited to AOPs or those with level 5 access 
	and above on the channel.

CHAN_HELP_TOPIC
#	Syntax: TOPIC channel [topic]
	構文: TOPIC channel [topic]
	
	Causes %S to set the channel topic to the one
	specified. If topic is not given, then an empty topic
	is set. This command is most useful in conjunction
	with SET TOPICLOCK. See %R%S HELP SET TOPICLOCK
	for more information.
	
	By default, limited to those with founder access on the
	channel. 

CHAN_HELP_CLEAR
#	Syntax: CLEAR channel what
	構文: CLEAR channel what
	
	Tells %S to clear certain settings on a channel.  what
	can be any of the following:
	
	     MODES    Resets all modes on the channel (i.e. clears
	                  modes i,k,l,m,n,p,s,t).
	     BANS     Clears all bans on the channel.
	     EXCEPTS  Clears all excepts on the channel.
	     INVITES  Clears all invites on the channel.
	     OPS      Removes channel-operator status (mode +o) from
	                  all channel operators.
	     HOPS     Removes channel-halfoperator status (mode +h) from
	                  all channel halfoperators, if supported.
	     VOICES   Removes "voice" status (mode +v) from anyone
	                  with that mode set.
	     USERS    Removes (kicks) all users from the channel.
	
	By default, limited to those with founder access on the
	channel.
	
CHAN_HELP_GETKEY
#	Syntax: GETKEY channel
	構文: GETKEY channel
	
	Returns the key of the given channel. This is a command
	mainly intended to be used by bots and/or scripts, so
	the output is in the following way:
	
	KEY <channel> <key>
	
	key is "NO KEY" if no key is set.
	
CHAN_HELP_SENDPASS
#	Syntax: SENDPASS channel
	構文: SENDPASS channel
	
	Send the password of the given channel to the e-mail address
	set in the founder's nickname record. This command is really 
	useful to deal with lost passwords.
	
	May be limited to IRC operators on certain networks.
	
	This command is unavailable when encryption is enabled.

CHAN_SERVADMIN_HELP
	 
	Services admins can also drop any channel without needing
	to identify via password, and may view the access, AKICK,
	and level setting lists for any channel.
	
CHAN_SERVADMIN_HELP_LOGOUT
#	Syntax: LOGOUT channel [nickname]
	構文: LOGOUT channel [nickname]
	
	This command will log the selected nickname out meaning they 
	would have to reidentify themselves to regain their access.
	
	If you are the founder of the channel, you can log out anybody,
	else you can only log out yourself.
	
	If you are a Services admin, you can log out 
	anybody of any channel without having to be the founder
	of the channel. Also, you can omit the nickname parameter;
	this will log out all identified users from the channel.

CHAN_SERVADMIN_HELP_DROP
#	Syntax: DROP channel
	構文: DROP channel
	
	Unregisters the named channel.  Only Services admins
	can drop a channel for which they have not identified.

CHAN_SERVADMIN_HELP_SET
	
	Services admins can also set the option NOEXPIRE, with
	which channels can be prevented from expiring.
	Additionally, Services admins can set options for any
	channel without identifying by password for the channel.

CHAN_SERVADMIN_HELP_SET_NOEXPIRE
#	Syntax: SET channel NOEXPIRE {ON | OFF}
	構文: SET channel NOEXPIRE {ON | OFF}
	
	Sets whether the given channel will expire.  Setting this
	to ON prevents the channel from expiring.

CHAN_SERVADMIN_HELP_INFO
	
	Services admins can use the ALL parameter with any channel.

CHAN_SERVADMIN_HELP_LIST
#	Syntax: LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE]
	構文: LIST pattern [FORBIDDEN] [SUSPENDED] [NOEXPIRE]
	
	Lists all registered channels matching the given pattern.
	Channels with the PRIVATE option set will only be displayed
	to Services admins. Channels with the NOEXPIRE option set 
	will have a ! appended to the channel name for Services admins.
	
	If the FORBIDDEN, SUSPENDED or NOEXPIRE options are given, only 
	channels which, respectively, are FORBIDden, SUSPENDed or have 
	the NOEXPIRE flag set will be displayed.  If multiple options are 
	given, more types of channels will be displayed. These options are 
	limited to Services admins.

CHAN_SERVADMIN_HELP_GETPASS
#	Syntax: GETPASS channel
	構文: GETPASS channel
	
	Returns the password for the given channel.  Note that
	whenever this command is used, a message including the
	person who issued the command and the channel it was used
	on will be logged and sent out as a WALLOPS/GLOBOPS.

CHAN_SERVADMIN_HELP_FORBID
#	Syntax: FORBID channel [reason]
	構文: FORBID channel [reason]
	
	Disallows anyone from registering or using the given
	channel.  May be cancelled by dropping the channel.
	
	Reason may be required on certain networks.

CHAN_SERVADMIN_HELP_SUSPEND
#	Syntax: SUSPEND channel [reason]
	構文: SUSPEND channel [reason]
	
	Disallows anyone from registering or using the given
	channel.  May be cancelled by using the UNSUSPEND
	command to preserve all previous channel data/settings.
	
	Reason may be required on certain networks.

CHAN_SERVADMIN_HELP_UNSUSPEND
#	Syntax: UNSUSPEND channel
	構文: UNSUSPEND channel
	
	Releases a suspended channel. All data and settings
	are preserved from before the suspension.

CHAN_SERVADMIN_HELP_STATUS
#	Syntax: STATUS channel nickname
	構文: STATUS channel nickname
	
	Returns the current access level of the given nick on the
	given channel.  The reply is of the form:
	
	    STATUS channel nickname access-level
	
	If an error occurs, the reply will be in the form:
	
	    STATUS ERROR error-message

###########################################################################
#
# MemoServ help messages
#
###########################################################################

MEMO_HELP_CMD_SEND
#	    SEND   Send a memo to a nick or channel
	    SEND   ニックネームかチャンネル宛てにメモを送信
MEMO_HELP_CMD_CANCEL
#	    CANCEL Cancel last memo you sent
	    CANCEL 最新のメモの送信をキャンセル
MEMO_HELP_CMD_LIST
#	    LIST   List your memos
	    LIST   あなた宛のメモを表示
MEMO_HELP_CMD_READ
#	    READ   Read a memo or memos
	    READ   メモを読む
MEMO_HELP_CMD_DEL
#	    DEL    Delete a memo or memos
	    DEL    メモを削除する
MEMO_HELP_CMD_SET
#	    SET    Set options related to memos
	    SET    メモに関するオプションの設定
MEMO_HELP_CMD_INFO
#	    INFO   Displays information about your memos
	    INFO   あなた宛のメモに関する情報を表示
MEMO_HELP_CMD_RSEND
#	    RSEND  Sends a memo and requests a read receipt
	    RSEND  メモを送信して、開封確認を要求する
MEMO_HELP_CMD_CHECK
#	    CHECK  Checks if last memo to a nick was read
	    CHECK  ニックネーム宛ての最新のメモが読まれたかチェックする
MEMO_HELP_CMD_SENDALL
#	    SENDALL  Send a memo to all registered users
	    SENDALL  登録済みのユーザー全員にメモを送信
MEMO_HELP_CMD_STAFF
#	    STAFF  Send a memo to all opers/admins
	    STAFF  サーバーオペレーターと管理者にメモを送信

MEMO_HELP_HEADER
#	%S is a utility allowing IRC users to send short
#	messages to other IRC users, whether they are online at
#	the time or not, or to channels(*).  Both the sender's
#	nickname and the target nickname or channel must be
#	registered in order to send a memo.
	IRCユーザーは %S を使って他の IRC ユーザーやチャンネル
	に短いメッセージを送信できます。ユーザー宛てのメッセージは、
	そのIRCユーザーがオンラインでなくても送信できます。
	メモを送信するためには、あなたのニックネームと宛先の
	ニックネーム、又はチャンネル名が登録済みでなければいけません。

#	%S's commands include:
	%S 機能に関するコマンド:


MEMO_HELP_ADMIN
#	not used.
	使われていません。
MEMO_HELP_OPER
#	not used.
	使われていません。

MEMO_HELP_FOOTER
	
#	Type %R%S HELP command for help on any of the
#	above commands.
	%R%S HELP command と入力すれば、上に挙げたコマンドの
	ヘルプを見ることができます。

#	(*) By default, any user with at least level 10 access on a
#	    channel can read that channel's memos.  This can be
#	    changed with the %s LEVELS command.
	(*) 初期状態では、チャンネルに参加中で権限レベル 10 以上
	    のユーザーのみがチャンネルメモを読むことができます。
	    このレベルは %s LEVELS コマンドで変更できます。
	

MEMO_HELP_SEND
#	Syntax: SEND {nick | channel} memo-text
	構文: SEND {nick | channel} memo-text
	
#	Sends the named nick or channel a memo containing
#	memo-text.  When sending to a nickname, the recipient will
#	receive a notice that he/she has a new memo.  The target
#	nickname/channel must be registered.
	ニックネーム nick か チャンネル名 channel 宛てに
	内容 memo-text のメモを送信します。ニックネーム宛てに
	メモを送信する場合は、受取人に新着メモを通知します。
	宛先のニックネームやチャンネル名は登録済みのものでなければ
	いけません。
	
MEMO_HELP_CANCEL
#	Syntax: CANCEL {nick | channel}
	構文: CANCEL {nick | channel}
	
	Cancels the last memo you sent to the given nick or channel,
	provided it has not been read at the time you use the command.
	指定されたニックネームかチャンネル宛てに送信した最新のメモを
	キャンセルし、このコマンドを実行後はメモが読まれないようにします。

MEMO_HELP_LIST
#	Syntax: LIST [channel] [list | NEW]
	構文: LIST [channel] [list | NEW]
	
#	Lists any memos you currently have.  With NEW, lists only
#	new (unread) memos.  Unread memos are marked with a "*"
#	to the left of the memo number.  You can also specify a list
#	of numbers, as in the example below:
	あなたが現在受け取っているメモを表示します。NEW が指定された
	場合、未読のメモだけを表示します。未読のメモにはメモ番号の左に"*"
	がついています。また以下のように、番号を指定して表示させること
	もできます。

	   LIST 2-5,7-9
#	      Lists memos numbered 2 through 5 and 7 through 9.
	      2から5番と7から8番のメモを表示します。

MEMO_HELP_READ
#	Syntax: READ [channel] {num | list | LAST | NEW}
	構文: READ [channel] {num | list | LAST | NEW}
	
#	Sends you the text of the memos specified.  If LAST is
#	given, sends you the memo you most recently received.  If
#	NEW is given, sends you all of your new memos.  Otherwise,
#	sends you memo number num.  You can also give a list of
#	numbers, as in this example:
	指定されたメモの内容を表示します。LAST が指定された場合は、
	最新のメモを表示します。NEW が指定された場合は、新着メモを
	全て表示します。これら以外の場合、num で指定された
	メモを表示します。また、以下のように、一度に複数の番号を
	指定することもできます。
	
	   READ 2-5,7-9
#	      Displays memos numbered 2 through 5 and 7 through 9.
	      2から5番と7から8番のメモを表示します。

MEMO_HELP_DEL
#	Syntax: DEL [channel] {num | list | LAST | ALL}
	構文: DEL [channel] {num | list | LAST | ALL}
	
#	Deletes the specified memo or memos.  You can supply
#	multiple memo numbers or ranges of numbers instead of a
#	single number, as in the second example below.
	指定されたメモ削除します。削除するメモ番号を1個づつ指定
	することもできますが、以下の2番目の例のように、複数の
	メモ番号を指定したり、範囲で番号を指定することもできます。
	
#	If LAST is given, the last memo will be deleted.
#	If ALL is given, deletes all of your memos.
	LAST が指定された場合は、最新のメモが削除されます。
	ALL が指定された場合は、全てのメモが削除されます。
	
#	Examples:
	例:
	
	   DEL 1
#	      Deletes your first memo.
	      最初のメモを削除します。
	
	   DEL 2-5,7-9
#	      Deletes memos numbered 2 through 5 and 7 through 9.
	      2から5番と7から8番のメモを削除します。

MEMO_HELP_SET
#	Syntax: SET option parameters
	構文: SET option parameters

#	Sets various memo options.  option can be one of:
	メモ機能に関するオプションを設定します。 option に指定できるのは以下:
	
#	    NOTIFY      Changes when you will be notified about
#	                    new memos (only for nicknames)
#	    LIMIT       Sets the maximum number of memos you can
#	                    receive
	    NOTIFY      新着メモを通知するタイミングを変更します。
			    引数ではニックネームを指定します。
	    LIMIT       あなたが受け取るメモの上限数を設定します。
	
#	Type %R%S HELP SET option for more information
#	on a specific option.
	それぞれのオプションについて、%R%S HELP SET option
	と入力すれば、より詳しい情報を見ることができます。

MEMO_HELP_SET_NOTIFY
#	Syntax: SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}
	構文: SET NOTIFY {ON | LOGON | NEW | MAIL | NOMAIL | OFF}

#	Changes when you will be notified about new memos:
	新着メモを通知するタイミングを変更します。:
	
#	    ON      You will be notified of memos when you log on,
#	               when you unset /AWAY, and when they are sent
#	               to you.
#	    LOGON   You will only be notified of memos when you log
#	               on or when you unset /AWAY.
#	    NEW     You will only be notified of memos when they
#	               are sent to you.
#	    MAIL    You will be notified of memos by email aswell as
#	               any other settings you have.
#	    NOMAIL  You will not be notified of memos by email.
#	    OFF     You will not receive any notification of memos.
	    ON      ログオン時、/AWAY の解除時、メモが到着した時に
	               新着メモを通知します。
	    LOGON   ログオン時と /AWAY の解除時に 新着メモを
	               通知します。
	    NEW     メモが到着した時に新着メモを通知します。
	    MAIL    上の通知設定に加えて、メールでも新着メモを
	               通知します。
	    NOMAIL  メールでの新着メモの通知を止めます。
	    OFF     新着メモの通知を止めます。
	
#	ON is essentially LOGON and NEW combined.
	ON は LOGON と NEW を併せたものに相当します。

MEMO_HELP_SET_LIMIT
#	Syntax: SET LIMIT [channel] limit
	構文: SET LIMIT [channel] limit
	
#	Sets the maximum number of memos you (or the given channel)
#	are allowed to have. If you set this to 0, no one will be
#	able to send any memos to you.  However, you cannot set
#	this any higher than %d.
	あなた(又は指定されたチャンネル)のメモ保存量の上限値を
	設定します。0を指定した場合は、あなた宛のメモを誰も送信
	できなくなります。ただし、%d よりも大きな数値を指定する
	ことはできません。

MEMO_HELP_INFO
#	Syntax: INFO [channel]
	構文: INFO [channel]
	
#	Displays information on the number of memos you have, how
#	many of them are unread, and how many total memos you can
#	receive.  With a parameter, displays the same information
#	for the given channel.
	受け取ったメモの統計情報(未読数、上限)を表示します。
	引数を指定すると、これらの統計情報をチャンネル宛てに
	送られたメモについて表示します。

MEMO_SERVADMIN_HELP_SET_LIMIT
#	Syntax: SET LIMIT [user | channel] {limit | NONE} [HARD]
	構文: SET LIMIT [user | channel] {limit | NONE} [HARD]
	
#	Sets the maximum number of memos a user or channel is
#	allowed to have.  Setting the limit to 0 prevents the user
#	from receiving any memos; setting it to NONE allows the
#	user to receive and keep as many memos as they want.  If
#	you do not give a nickname or channel, your own limit is
#	set.
	ユーザーかチャンネルのメモ保存量の上限値を設定します。
	0を指定した場合は、ユーザーがメモを受け取ることを禁止します。
	NONE を指定した場合は、ユーザーのメモ保存量の上限を
	無くします。ニックネームかチャンネル名を指定しなかった場合は、
	あなた自身のメモ保存量の上限値を設定します。
	
#	Adding HARD prevents the user from changing the limit.  Not
#	adding HARD has the opposite effect, allowing the user to
#	change the limit (even if a previous limit was set with
#	HARD).
	HARD を追加すると、ユーザーがメモ保存量の上限値を変更
	できなくします。HARD を指定した後でも、HARD を
	外して同じコマンドを入力すれば、ユーザーが上限値を変更
	できるようにします。

#	This use of the SET LIMIT command is limited to Services
#	admins.  Other users may only enter a limit for themselves
#	or a channel on which they have such privileges, may not
#	remove their limit, may not set a limit above %d, and may
#	not set a hard limit.
	SET LIMIT コマンドを使えるのはサービス管理者だけです。
	他のユーザーは自分自身かチャンネルのメモ保存量の上限値を変える
	ことができます。ただし、チャンネルのメモ保存量の上限値を変える
	には、相応の権限が必要です。また、サービス管理者以外のユーザーは
	メモ保存量の上限値を NONE にすること、%d 以上の上限値を設定する
	こと、HARD を指定することはできません。

MEMO_SERVADMIN_HELP_INFO
#	Syntax: INFO [nick | channel]
	構文: INFO [nick | channel]

#	Without a parameter, displays information on the number of
#	memos you have, how many of them are unread, and how many
#	total memos you can receive.
	引数が指定されなかった場合、あなたが受け取っているメモの
	統計情報(未読数、総数、上限値)を表示します。
	
#	With a channel parameter, displays the same information for
#	the given channel.
	チャンネルを指定すると、同じ統計情報を指定したチャンネル
	について表示します。
	
#	With a nickname parameter, displays the same information
#	for the given nickname.  This use limited to Services
#	admins.
	ニックネームを指定すると、同じ統計情報を指定した
	ニックネームについて表示します。ニックネームの指定は
	サービス管理者だけが行えます。

MEMO_HELP_STAFF
#	Syntax: STAFF memo-text
	構文: STAFF memo-text

#	Sends all services staff a memo containing memo-text.
#	Note: If you have opers on both the oper list and the
#	admin list they will receive the memo twice.  The same
#	applies for oper's on the Root list as well as other
#	lists.
	すべてのサービススタッフにmemo-text の内容でメモを
	送信します。注意: サーバーオペレーターでかつサービス管理者
	でもあるユーザーは、この内容のメモを2回受け取ることになります。
	つまり、複数のサービススタッフリストに登録されているユーザーは
	同じ内容のメモを複数回受け取ることになります。

MEMO_HELP_SENDALL
#	Syntax: SENDALL memo-text
	構文: SENDALL memo-text

#	Sends all registered users a memo containing memo-text.
	登録済みユーザー全員に内容 memo-text でメモを送信します。
	
MEMO_HELP_RSEND
#	Syntax: RSEND {nick | channel} memo-text
	構文: RSEND {nick | channel} memo-text
	
#	Sends the named nick or channel a memo containing
#	memo-text.  When sending to a nickname, the recipient will
#	receive a notice that he/she has a new memo.  The target
#	nickname/channel must be registered.
#	Once the memo is read by its recipient, an automatic notification
#	memo will be sent to the sender informing him/her that the memo
#	has been read.
	nick か channel 宛てに内容 memo-text でメモを送信します。
	宛先がニックネームの場合は、受取人は新規メモの到着を通知されます。
	宛先のニックネーム/チャンネル名は登録済みの者でなければいけません。
	受取人がメモを読むと、自動的に開封通知が送信者宛てに送られます。

MEMO_HELP_CHECK
#	Syntax: CHECK nick
	構文: CHECK nick
	
#	Checks whether the _last_ memo you sent to nick has been read
#	or not. Note that this does only work with nicks, not with chans.
	nick 宛てに送信した最新のメモが開封されたか否かを確認します。
	この機能はニックネームに対してのみ有効で、チャンネルに対しては無効
	です。

###########################################################################
#
# OperServ help messages
#
###########################################################################
OPER_HELP_CMD_GLOBAL
#	    GLOBAL      Send a message to all users
	    GLOBAL      メッセージをユーザー全員に送ります。
OPER_HELP_CMD_STATS
#	    STATS       Show status of Services and network
	    STATS       サービスとネットワークのの状態を表示します。
OPER_HELP_CMD_OPER
#	    OPER        Modify the Services operator list
	    OPER        サービスオペレーターのリストを変更します。
OPER_HELP_CMD_ADMIN
#	    ADMIN       Modify the Services admin list
	    ADMIN       サービス管理者のリストほ変更します。
OPER_HELP_CMD_STAFF
#	    STAFF       Display Services staff and online status
	    STAFF       サービススタッフとオンラインか否かを表示します。
OPER_HELP_CMD_MODE
#	    MODE        Change a channel's modes
	    MODE        チャンネルモードを変更します。
OPER_HELP_CMD_KICK
#	    KICK        Kick a user from a channel
	    KICK        ユーザーをチャンネルからキックします。
OPER_HELP_CMD_CLEARMODES
#	    CLEARMODES  Clear modes of a channel
	    CLEARMODES  チャンネルのモードを初期化します。
OPER_HELP_CMD_KILLCLONES
#	    KILLCLONES  Kill all users that have a certain host
	    KILLCLONES  あるホストからの接続を全てKILLします。
OPER_HELP_CMD_AKILL
#	    AKILL       Manipulate the AKILL list
	    AKILL       AKILL リストを編集します。
OPER_HELP_CMD_SGLINE
#	    SGLINE      Manipulate the SGLINE list
	    SGLINE      SGLINE リストを編集します。
OPER_HELP_CMD_SQLINE
#	    SQLINE      Manipulate the SQLINE list
	    SQLINE      SQLINE リストを編集します。
OPER_HELP_CMD_SZLINE
#	    SZLINE      Manipulate the SZLINE list
	    SZLINE      SZLINE リストを編集します。
OPER_HELP_CMD_CHANLIST
#	    CHANLIST    Lists all channel records
	    CHANLIST    全てのチャンネルレコードを表示します。
OPER_HELP_CMD_USERLIST
#	    USERLIST    Lists all user records
	    USERLIST    全てのユーザーレコードを表示します。
OPER_HELP_CMD_LOGONNEWS
#	    LOGONNEWS   Define messages to be shown to users at logon
	    LOGONNEWS   ログオン時に表示するメッセージを編集します。
OPER_HELP_CMD_RANDOMNEWS
#	    RANDOMNEWS  Define messages to be randomly shown to users 
#	                at logon
	    RANDOMNEWS  ログオン時にランダムに表示するメッセージを編集します。
OPER_HELP_CMD_OPERNEWS
#	    OPERNEWS    Define messages to be shown to users who oper
	    OPERNEWS    オペレーターに表示するメッセージを編集します。
OPER_HELP_CMD_SESSION
#	    SESSION     View the list of host sessions
	    SESSION     指定されたホストからのセッションを表示します。
OPER_HELP_CMD_EXCEPTION
#	    EXCEPTION   Modify the session-limit exception list
	    EXCEPTION   セッション制限からの除外リストを編集します。
OPER_HELP_CMD_NOOP
#	    NOOP        Temporarily remove all O:lines of a server 
#	                remotely
	    NOOP        サーバーのO:linesを一時的に削除します。

OPER_HELP_CMD_JUPE
#	    JUPE        "Jupiter" a server
	    JUPE        サーバーを "Jupiter" にします。
OPER_HELP_CMD_IGNORE
#	    IGNORE      Modify the Services ignore list
	    IGNORE      サービスの無視リストを編集します。
OPER_HELP_CMD_SET
#	    SET         Set various global Services options
	    SET         各種グローバルサービスオプションを設定します。
OPER_HELP_CMD_RELOAD
#	    RELOAD      Reload services' configuration file
	    RELOAD      サービスの設定ファイルをリロードします。
OPER_HELP_CMD_UPDATE
#	    UPDATE      Force the Services databases to be
#	                updated on disk immediately
	    UPDATE      今すぐサービスデータベースをディスクから読み出します。
OPER_HELP_CMD_RESTART
#	    RESTART     Save databases and restart Services
	    RESTART     データベースを保存して、サービスを再起動します。
OPER_HELP_CMD_QUIT
#	    QUIT        Terminate the Services program with no save
	    QUIT        保存せずにサービスを終了します。
OPER_HELP_CMD_SHUTDOWN
#	    SHUTDOWN    Terminate the Services program with save
	    SHUTDOWN    保存してサービスを終了します。
OPER_HELP_CMD_DEFCON
#	    DEFCON      Manipulate the DefCon system
	    DEFCON      DefCon システムを設定します。
OPER_HELP_CMD_CHANKILL
#	    CHANKILL    AKILL all users on a specific channel
	    CHANKILL    チャンネルに参加中のユーザー全員を AKILL します。
OPER_HELP_CMD_OLINE
#	    OLINE       Give Operflags to a certain user
	    OLINE       オペレーターフラグをユーザーに与えます。
OPER_HELP_CMD_UMODE
#	    UMODE       Change a user's modes
	    UMODE       ユーザーモードを変更します。
OPER_HELP_CMD_SVSNICK
#	    SVSNICK     Forcefully change a user's nickname
	    SVSNICK     強制的にユーザーのニックネームを変更します。
OPER_HELP_CMD_MODLOAD
#	    MODLOAD     Load a module
	    MODLOAD     モジュールをロードします。
OPER_HELP_CMD_MODUNLOAD
#	    MODUNLOAD   Un-Load a module
	    MODUNLOAD   モジュールをアンロードします。
OPER_HELP_CMD_MODINFO
#	    MODINFO     Info about a loaded module
	    MODINFO     ロード済みモジュールに関する情報を表示します。
OPER_HELP_CMD_MODLIST
#	    MODLIST     List loaded modules
	    MODLIST     ロード済みモジュールを表示します。

OPER_HELP
#	%S commands:
	%S に関連するコマンド:

OPER_HELP_LOGGED
#	Notice: All commands sent to %S are logged!
	注意: %S 宛てのコマンドは全て監視されています！

OPER_HELP_GLOBAL
#	Syntax: GLOBAL message
	構文: GLOBAL message
	
#	Allows Administrators to send messages to all users on the 
#	network. The message will be sent from the nick %s.
	管理者によるネットワークにいるユーザー全員宛てのメッセージ送信
	を許可します。このメッセージの送信者は %s になります。

OPER_HELP_STATS
#	Syntax: STATS [AKILL | ALL | RESET | MEMORY | UPLINK]
	構文: STATS [AKILL | ALL | RESET | MEMORY | UPLINK]
	
#	Without any option, shows the current number of users and
#	IRCops online (excluding Services), the highest number of
#	users online since Services was started, and the length of
#	time Services has been running.
	オプションを指定しない場合、現在のユーザー数と IRC オペレーター
	(サービスオペレーターを除く)の数、サービスが開始されてからの
	最大ユーザー数、サービス開始からの経過時間を表示します。
	
#	With the AKILL option, displays the current size of the
#	AKILL list and the current default expiry time.
	AKILL オプションが指定された場合は、現在の AKILL リスト
	のサイズと AKILL 失効時間の初期値を表示します。
	
#	The RESET option currently resets the maximum user count
#	to the number of users currently present on the network.
	RESET オプションが指定された場合は、現在ネットワーク上に
	いるユーザー数の最大値をリセットします。
	
#	The MEMORY option displays information on the memory
#	usage of Services. Using this option can freeze Services for
#	a short period of time on large networks; don't overuse it!
	MEMORY オプションが指定された場合、サービスが使用している
	メモリーの情報を表示します。このオプションを使用すると、
	大きなネットワークで稼働中のサービスが一時的に停止します。
	
#	The UPLINK option displays information about the current
#	server Anope uses as an uplink to the network.
	UPLINK オプションが指定された場合は、現在のサーバーで
	稼働中の Anope が使用するアップリンクサーバーを表示します。
	
#	The ALL displays the user and uptime statistics, and
#	everything you'd see with MEMORY and UPLINK options.
	ALL オプションは ユーザーと稼働時間の統計に加えて、
	MEMORY と UPLINK オプションで表示される情報を
	表示します。
	
#	UPTIME may be used as a synonym for STATS.
	UPTIME オプションは STATS オプションのエイリアスです。

OPER_HELP_OPER
#	Syntax: OPER ADD nick
#		OPER DEL {nick | entry-num | list}
#		OPER LIST [mask | list]
#		OPER CLEAR
	構文: OPER ADD nick
	      OPER DEL {nick | entry-num | list}
	      OPER LIST [mask | list]
	      OPER CLEAR
	
#	Allows the Services Root Admins to add or remove nicknames
#	to or from the Services operator list.  A user whose nickname
#	is on the Services operator list and who has identified to
#	%s will be able to access Services operator commands.
	サービスのルート管理者がサービスオペレーターリストへの
	ニックネームを追加したりや削除したりすることを許可します。
	サービスオペレーターリストに載っているニックネームのユーザーか
	%s で特定できるユーザーはサービスオペレーターコマンドを使用する
	ことができます。
	
#	The OPER ADD command adds the given nickname to the
#	Services operator list.
	OPER ADD コマンドは指定されたニックネームを
	サービスオペレーターリストに追加します。
	
#	The OPER DEL command removes the given nick from the
#	Services operator list.  If a list of entry numbers is given, 
#	those entries are deleted.  (See the example for LIST below.)
	OPER DEL コマンドは指定されたニックネームを
	サービスオペレーターリストから削除します。エントリ番号が指定
	された場合は、番号に対応したエントリが削除されます。(LIST
	コマンドの例を参照してください。)
	
#	The OPER LIST command displays the Services operator list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	OPER LIST コマンドはサービスオペレーターリストを表示します。
	ワイルドカードマスクが指定された場合は、このマスクに該当する
	エントリのみが表示されます。エントリ番号が指定された場合は、
	それらに対応したエントリのみが表示されます。例えば以下の
	ような感じです。

	   OPER LIST 2-5,7-9
#	      Lists Services operator entries numbered 2 through 
#	      5 and 7 through 9.
	      2から5番目と7から9番目のサービスオペレーターの
	      エントリを表示します。
	      
#	The OPER CLEAR command clears all entries of the
#	Services operator list.
	OPER CLEAR コマンドはサービスオペレーターリストの
	全てのエントリを削除します。
	
#	Any IRC operator may use the OPER LIST form of the command.
	IRC オペレーターであれば誰でも OPER LIST 型のコマンドを使用できます。

OPER_HELP_ADMIN
#	Syntax: ADMIN ADD nick
#		ADMIN DEL {nick | entry-num | list}
#		ADMIN LIST [mask | list]
#		ADMIN CLEAR
	構文: ADMIN ADD nick
	      ADMIN DEL {nick | entry-num | list}
	      ADMIN LIST [mask | list]
	      ADMIN CLEAR
	
#	Allows the Services root to add or remove nicknames
#	to or from the Services admin list.  A user whose nickname
#	is on the Services admin list and who has identified to
#	%s will be able to access Services admin commands.
	サービスルートがサービス管理者リストにニックネームを
	追加したり削除したりすることを許可します。
	サービス管理者リストに載っているニックネームのユーザーか
	%s で特定できるユーザーはサービス管理者コマンドを使用する
	ことができます。
	
#	The ADMIN ADD command adds the given nickname to the
#	Services admin list.
	ADMIN ADD コマンドは指定されたニックネームを
	サービス管理者リストに追加します。
	
#	The ADMIN DEL command removes the given nick from the
#	Services admin list.  If a list of entry numbers is given,
#	those entries are deleted.  (See the example for LIST below.)
	ADMIN DEL コマンドは指定されたニックネームを
	サービス管理者リストから削除します。エントリ番号が指定
	された場合は、番号に対応したエントリが削除されます。(LIST
	コマンドの例を参照してください。)
	
#	The ADMIN LIST command displays the Services admin list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	ADMIN LIST コマンドはサービス管理者リストを表示します。
	ワイルドカードマスクが指定された場合は、このマスクに該当する
	エントリのみが表示されます。エントリ番号が指定された場合は、
	それらに対応したエントリのみが表示されます。例えば以下の
	ような感じです。

	   ADMIN LIST 2-5,7-9
#	      Lists Services admin entries numbered 2 through 
#	      5 and 7 through 9.
	      2から5番目と7から9番目のサービス管理者の
	      エントリを表示します。
	      
#	The ADMIN CLEAR command clears all entries of the
#	Services admin list.
	ADMIN CLEAR コマンドはサービス管理者リストの
	全てのエントリを削除します。
	
#	Any IRC operator may use the ADMIN LIST form of the command.
#	All other use limited to Services root.
	IRC オペレーターであれば誰でも ADMIN LIST 型のコマンドを使用できます。
	それ以外のコマンドはは サービスルート でないと使えません。

OPER_HELP_IGNORE
#	Syntax: IGNORE {ADD|DEL|LIST|CLEAR} [time] [nick | mask]
	構文: IGNORE {ADD|DEL|LIST|CLEAR} [time] [nick | mask]
	
#	Allows Services Admins to make Services ignore a nick or mask
#	for a certain time or until the next restart. The default
#	time format is seconds. You can specify it by using units.
#	Valid units are: s for seconds, m for minutes, 
#	h for hours and d for days. 
#	Combinations of these units are not permitted.
#	To make Services permanently ignore the	user, type 0 as time.
#	When adding a mask, it should be in the format user@host
#	or nick!user@host, everything else will be considered a nick.
#	Wildcards are permitted.
	サービス管理者はサービスが指定されたニックネームかマスク
	をある期間か次に再起動するまで無視するようにします。
	時間フォーマットに単位を指定しない場合の初期値は秒です。
	以下のようにして、単位を指定できます。使用可能な単位は、
	s で秒、 m で分、h で時間、d で日と解釈
	されます。これらを組み合わせて使用することはできません。
	サービスが、あるユーザーを恒久的に無視するためには、0を指定
	してください。 mask を指定する場合は、この形式は
	user@host の形か、nick!user@host の形で指定できます。
	どちらでもない形式の場合はニックネームとみなされます。
	また、ワイルドカードを使うこともできます。
	
#	Ignores will not be enforced on IRC Operators.
	IRC オペレーターを無視することはできません。

OPER_HELP_MODE
#	Syntax: MODE channel modes
	構文: MODE channel modes
	
#	Allows Services operators to set channel modes for any
#	channel.  Parameters are the same as for the standard /MODE
#	command.
	サービスオペレーターがチャンネルモードを変更できるように
	します。引数は /MODE コマンドと同じです。

OPER_HELP_UMODE
#	Syntax: UMODE user modes
	構文: UMODE user modes
	
#	Allows Super Admins to set user modes for any user.
#	Parameters are the same as for the standard /MODE
#	command.
	スーパー管理者 がユーザーモードを変更できるようにします。
	引数は /MODE コマンドと同じです。

OPER_HELP_OLINE
#	Syntax: OLINE user flags
	構文: OLINE user flags
	
#	Allows Super Admins to give Operflags to any user.
#	Flags have to be prefixed with a "+" or a "-". To
#	remove all flags simply type a "-" instead of any flags.
	スーパー管理者 がユーザーにオペレーターフラグを
	与えることができるようにします。フラグは "+" か "-" で
	はじめ、フラグを剥奪する場合は "-" を使用してください。

OPER_HELP_CLEARMODES
#	Syntax: CLEARMODES channel [ALL]
	構文: CLEARMODES channel [ALL]
	
#	Clears all binary modes (i,k,l,m,n,p,s,t) and bans from a
#	channel.  If ALL is given, also clears all ops and
#	voices (+o and +v modes) from the channel.
	チャンネルに対して、全てのバイナリモード(i,k,l,m,n,p,s,t)
	を解除し、バンリストを空にします。ALL が指定された場合は、
	さらにチャンネル内のユーザーからチャンネルオペレーターと
	voices ユーザーの権利を剥奪します。

OPER_HELP_KICK
#	Syntax: KICK channel user reason
	構文: KICK channel user reason
	
#	Allows staff to kick a user from any channel.
#	Parameters are the same as for the standard /KICK
#	command.  The kick message will have the nickname of the
#	IRCop sending the KICK command prepended; for example:
	スタッフがチャンネルからユーザーをキックします。
	引数は普通の /KICK コマンドと同じ形式です。
	キック理由の先頭に KICK コマンドを使った IRC オペレーター
	のニックネームを追記した内容でキックメッセージが送信されます。
	例えば、下のような感じです。
	
#	*** SpamMan has been kicked off channel #my_channel by %S (Alcan (Flood))
	*** %S が SpamMan をチャンネル #my_channel からキックしました。(Alcan (Flood 攻撃))

OPER_HELP_SVSNICK
#	Syntax: SVSNICK nick newnick
	構文: SVSNICK nick newnick
	
#	Forcefully changes a user's nickname from nick to newnick.
#	Limited to Super Admins.
	ユーザーのニックネームを nick から newnick に変更します。
	この機能は スーパー管理者 以外は使えません。
 
OPER_HELP_AKILL
#	Syntax: AKILL ADD [+expiry] mask reason
#		AKILL DEL {mask | entry-num | list}
#		AKILL LIST [mask | list]
#		AKILL VIEW [mask | list]
#		AKILL CLEAR
	構文: AKILL ADD [+expiry] mask reason
	      AKILL DEL {mask | entry-num | list}
	      AKILL LIST [mask | list]
	      AKILL VIEW [mask | list]
	      AKILL CLEAR
	
#	Allows Services operators to manipulate the AKILL list.  If
#	a user matching an AKILL mask attempts to connect, Services
#	will issue a KILL for that user and, on supported server
#	types, will instruct all servers to add a ban (K-line) for
#	the mask which the user matched.
	サービスオペレーターが AKILL リストを編集することを許可します。
	AKILL マスクに該当するユーザーが接続してきた場合、サービスは
	このユーザーを KILL します。加えて、サーポート済みのサーバーに
	おいては、全てのサーバーに対してこのユーザーにマッチする K-line
	を追加するように働きかけます。
	
#	AKILL ADD adds the given user@host/ip mask to the AKILL
#	list for the given reason (which must be given).
#	expiry is specified as an integer followed by one of d 
#	(days), h (hours), or m (minutes).  Combinations (such as 
#	1h30m) are not permitted.  If a unit specifier is not 
#	included, the default is days (so +30 by itself means 30 
#	days).  To add an AKILL which does not expire, use +0.  If the
#	usermask to be added starts with a +, an expiry time must
#	be given, even if it is the same as the default.  The
#	current AKILL default expiry time can be found with the
#	STATS AKILL command.
	AKILL ADD コマンドは user@host か ip で指定されたマスク
	とその理由(必須です)を AKILL リストに追加します。
	失効時間 expiry は整数の後に単位 d (日)、h (時間)、
	m (分) の内1つを続けて指定します。ただし、1h30mのように
	組み合わせて指定することはできません。単位を指定しなかった場合、
	日として解釈されます(+30 という指定は30日間と解釈されます。)。
	永久に失効されない AKILL を追加するには +0 と指定してください。
	ユーザーマスクを + から始めた場合、失効時間をを必ず指定して
	ください。指定しない場合は初期値が指定されたものと解釈されます。
	AKILL 失効時間の初期値は STATS AKILL コマンドで指定できます。
	
#	The AKILL DEL command removes the given mask from the
#	AKILL list if it is present.  If a list of entry numbers is 
#	given, those entries are deleted.  (See the example for LIST 
#	below.)
	AKILL DEL コマンドは指定されたマスクを AKILL リストから
	削除します。エントリ番号が指定された場合は、番号に該当する
	エントリを削除します。(LIST コマンドの例を参照してください)
	
#	The AKILL LIST command displays the AKILL list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	AKILL LIST コマンドは AKILL リストを表示します。
	ワイルドカードを指定した場合、このワイルドカードに該当
	するエントリのみが表示されます。エントリ番号を
	指定した場合、番号に該当するエントリのみが表示されます。
	例えば、以下の様です。

	   AKILL LIST 2-5,7-9
#	      Lists AKILL entries numbered 2 through 5 and 7 
#	      through 9.
	      2から5番と7から9番の AKILL エントリを表示します。
	      
#	AKILL VIEW is a more verbose version of AKILL LIST, and 
#	will show who added an AKILL, the date it was added, and when 
#	it expires, as well as the user@host/ip mask and reason.
	AKILL VIEW は AKILL LIST を詳細にしたもので、
	AKILL の user@host か ip マスクとその理由に加えて、
	このエントリを追加したメンバー、追加日、失効日を表示します。
	
#	AKILL CLEAR clears all entries of the AKILL list.
	AKILL CLEAR コマンドは AKILL リストを削除します。
	
OPER_HELP_SGLINE
#	Syntax: SGLINE ADD [+expiry] mask:reason
#	        SGLINE DEL {mask | entry-num | list}
#	        SGLINE LIST [mask | list]
#	        SGLINE VIEW [mask | list]
#	        SGLINE CLEAR
	構文: SGLINE ADD [+expiry] mask:reason
	      SGLINE DEL {mask | entry-num | list}
	      SGLINE LIST [mask | list]
	      SGLINE VIEW [mask | list]
	      SGLINE CLEAR
	
#	Allows Services operators to manipulate the SGLINE list.  If
#	a user with a realname matching an SGLINE mask attempts to 
#	connect, Services will not allow it to pursue his IRC
#	session.
	サービスオペレーターが SGLINE リストを編集することを許可します。
	SGLINE マスクに該当する実ユーザー名を持つユーザーが接続してきた
	場合、サービスはこのユーザーの IRC セッションを破棄します。
	
#	SGLINE ADD adds the given realname mask to the SGLINE
#	list for the given reason (which must be given).
#	expiry is specified as an integer followed by one of d 
#	(days), h (hours), or m (minutes).  Combinations (such as 
#	1h30m) are not permitted.  If a unit specifier is not 
#	included, the default is days (so +30 by itself means 30 
#	days).  To add an SGLINE which does not expire, use +0.  If the
#	realname mask to be added starts with a +, an expiry time must
#	be given, even if it is the same as the default.  The
#	current SGLINE default expiry time can be found with the
#	STATS AKILL command.
#	Note: because the realname mask may contain spaces, the
#	separator between it and the reason is a colon.
	SGLINE ADD コマンドは実ユーザー名マスク
	とその理由(必須です)を SGLINE リストに追加します。
	失効時間 expiry は整数の後に単位 d (日)、h (時間)、
	m (分) の内1つを続けて指定します。ただし、1h30mのように
	組み合わせて指定することはできません。単位を指定しなかった場合、
	日として解釈されます(+30 という指定は30日間と解釈されます。)。
	永久に失効されない SGLINE を追加するには +0 と指定してください。
	実ユーザー名マスクを + から始めた場合、失効時間をを必ず指定して
	ください。指定しない場合は初期値が指定されたものと解釈されます。
	SGLINE 失効時間の初期値は STATS AKILL コマンドで指定できます。
	注意: 実ユーザー名はスペースを含むことがあるので、マスクと
	理由の区切りはスペースの変わりにコロンを使ってください。
	
#	The SGLINE DEL command removes the given mask from the
#	SGLINE list if it is present.  If a list of entry numbers is 
#	given, those entries are deleted.  (See the example for LIST 
#	below.)
	SGLINE DEL コマンドは指定されたマスクを SGLINE リストから
	削除します。エントリ番号が指定された場合は、番号に該当する
	エントリを削除します。(LIST コマンドの例を参照してください)
	
#	The SGLINE LIST command displays the SGLINE list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	SGLINE LIST コマンドは SGLINE リストを表示します。
	ワイルドカードを指定した場合、このワイルドカードに該当
	するエントリのみが表示されます。エントリ番号を
	指定した場合、番号に該当するエントリのみが表示されます。
	例えば、以下の様です。

	   SGLINE LIST 2-5,7-9
#	      Lists SGLINE entries numbered 2 through 5 and 7 
#	      through 9.
	      2から5番と7から9番の SGLINE エントリを表示します。
	      
#	SGLINE VIEW is a more verbose version of SGLINE LIST, and 
#	will show who added an SGLINE, the date it was added, and when 
#	it expires, as well as the realname mask and reason.
	SGLINE VIEW は SGLINE LIST を詳細にしたもので、
	SGLINE の実ユーザー名マスクとその理由に加えて、
	このエントリを追加したメンバー、追加日、失効日を表示します。
	
#	SGLINE CLEAR clears all entries of the SGLINE list.
	SGLINE CLEAR コマンドは SGLINE リストを削除します。
	

OPER_HELP_SQLINE
#	Syntax: SQLINE ADD [+expiry] mask reason
#	        SQLINE DEL {mask | entry-num | list}
#	        SQLINE LIST [mask | list]
#	        SQLINE VIEW [mask | list]
#	        SQLINE CLEAR
	構文: SQLINE ADD [+expiry] mask reason
	      SQLINE DEL {mask | entry-num | list}
	      SQLINE LIST [mask | list]
	      SQLINE VIEW [mask | list]
	      SQLINE CLEAR
	
#	Allows Services operators to manipulate the SQLINE list.  If
#	a user with a nick matching an SQLINE mask attempts to 
#	connect, Services will not allow it to pursue his IRC
#	session.
	サービスオペレーターが SQLINE リストを編集することを許可します。
	SQLINE マスクに該当するニックネームを持つユーザーが接続してきた
	場合、サービスはこのユーザーの IRC セッションを破棄します。

#	If the first character of the mask is #, services will 
#	prevent the use of matching channels (on IRCds that 
#	support it).
	指定されたマスクが#から始まる場合、サービスは
	該当するチャンネルを作れないようにします。
	(ただし、IRCdがこれをサポートしていなければなりません。)
	
#	SQLINE ADD adds the given mask to the SQLINE
#	list for the given reason (which must be given).
#	expiry is specified as an integer followed by one of d 
#	(days), h (hours), or m (minutes).  Combinations (such as 
#	1h30m) are not permitted.  If a unit specifier is not 
#	included, the default is days (so +30 by itself means 30 
#	days).  To add an SQLINE which does not expire, use +0.  
#	If the mask to be added starts with a +, an expiry time 
#	must be given, even if it is the same as the default. The
#	current SQLINE default expiry time can be found with the
#	STATS AKILL command.
	SQLINE ADD コマンドはマスク
	とその理由(必須です)を SQLINE リストに追加します。
	失効時間 expiry は整数の後に単位 d (日)、h (時間)、
	m (分) の内1つを続けて指定します。ただし、1h30mのように
	組み合わせて指定することはできません。単位を指定しなかった場合、
	日として解釈されます(+30 という指定は30日間と解釈されます。)。
	永久に失効されない SQLINE を追加するには +0 と指定してください。
	マスクを + から始めた場合、失効時間をを必ず指定して
	ください。指定しない場合は初期値が指定されたものと解釈されます。
	SQLINE 失効時間の初期値は STATS AKILL コマンドで指定できます。
	
#	The SQLINE DEL command removes the given mask from the
#	SQLINE list if it is present.  If a list of entry numbers is 
#	given, those entries are deleted.  (See the example for LIST 
#	below.)
	SQLINE DEL コマンドは指定されたマスクを SQLINE リストから
	削除します。エントリ番号が指定された場合は、番号に該当する
	エントリを削除します。(LIST コマンドの例を参照してください)
	
#	The SQLINE LIST command displays the SQLINE list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	SQLINE LIST コマンドは SQLINE リストを表示します。
	ワイルドカードを指定した場合、このワイルドカードに該当
	するエントリのみが表示されます。エントリ番号を
	指定した場合、番号に該当するエントリのみが表示されます。
	例えば、以下の様です。

	   SQLINE LIST 2-5,7-9
#	      Lists SQLINE entries numbered 2 through 5 and 7 
#	      through 9.
	      2から5番と7から9番の SQLINE エントリを表示します。
	      
#	SQLINE VIEW is a more verbose version of SQLINE LIST, and 
#	will show who added an SQLINE, the date it was added, and when 
#	it expires, as well as the mask and reason.
	SQLINE VIEW は SQLINE LIST を詳細にしたもので、
	SQLINE のマスクとその理由に加えて、
	このエントリを追加したメンバー、追加日、失効日を表示します。
	
#	SQLINE CLEAR clears all entries of the SQLINE list.
	SQLINE CLEAR コマンドは SQLINE リストを削除します。

OPER_HELP_SZLINE
#	Syntax: SZLINE ADD [+expiry] mask reason
#	        SZLINE DEL {mask | entry-num | list}
#	        SZLINE LIST [mask | list]
#	        SZLINE VIEW [mask | list]
#	        SZLINE CLEAR
	構文: SZLINE ADD [+expiry] mask reason
	      SZLINE DEL {mask | entry-num | list}
	      SZLINE LIST [mask | list]
	      SZLINE VIEW [mask | list]
	      SZLINE CLEAR
	
#	Allows Services operators to manipulate the SZLINE list.  If
#	a user with an IP matching an SZLINE mask attempts to 
#	connect, Services will not allow it to pursue his IRC
#	session (and this, whether the IP has a PTR RR or not).
	サービスオペレーターが SZLINE リストを編集することを許可します。
	SZLINE マスクに該当する IP アドレスを持つユーザーが接続してきた
	場合、サービスはこのユーザーの IRC セッションを破棄します。
	(破棄は IP アドレスがドメインネームポインタのリソースレコード
	を持っているか否かにかかわらず行われます。)
	
#	SZLINE ADD adds the given IP mask to the SZLINE
#	list for the given reason (which must be given).
#	expiry is specified as an integer followed by one of d 
#	(days), h (hours), or m (minutes).  Combinations (such as 
#	1h30m) are not permitted.  If a unit specifier is not 
#	included, the default is days (so +30 by itself means 30 
#	days).  To add an SZLINE which does not expire, use +0.  If the
#	realname mask to be added starts with a +, an expiry time must
#	be given, even if it is the same as the default.  The
#	current SZLINE default expiry time can be found with the
#	STATS AKILL command.
	SZLINE ADD コマンドは IP アドレスマスク
	とその理由(必須です)を SZLINE リストに追加します。
	失効時間 expiry は整数の後に単位 d (日)、h (時間)、
	m (分) の内1つを続けて指定します。ただし、1h30mのように
	組み合わせて指定することはできません。単位を指定しなかった場合、
	日として解釈されます(+30 という指定は30日間と解釈されます。)。
	永久に失効されない SZLINE を追加するには +0 と指定してください。
	マスクを + から始めた場合、失効時間をを必ず指定して
	ください。指定しない場合は初期値が指定されたものと解釈されます。
	SZLINE 失効時間の初期値は STATS AKILL コマンドで指定できます。
	
#	The SZLINE DEL command removes the given mask from the
#	SZLINE list if it is present.  If a list of entry numbers is 
#	given, those entries are deleted.  (See the example for LIST 
#	below.)
	SZLINE DEL コマンドは指定されたマスクを SZLINE リストから
	削除します。エントリ番号が指定された場合は、番号に該当する
	エントリを削除します。(LIST コマンドの例を参照してください)
	
#	The SZLINE LIST command displays the SZLINE list.  
#	If a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	SZLINE LIST コマンドは SZLINE リストを表示します。
	ワイルドカードを指定した場合、このワイルドカードに該当
	するエントリのみが表示されます。エントリ番号を
	指定した場合、番号に該当するエントリのみが表示されます。
	例えば、以下の様です。

	   SZLINE LIST 2-5,7-9
#	      Lists SZLINE entries numbered 2 through 5 and 7 
#	      through 9.
	      2から5番と7から9番の SZLINE エントリを表示します。
	      
#	SZLINE VIEW is a more verbose version of SZLINE LIST, and 
#	will show who added an SZLINE, the date it was added, and when
#	it expires, as well as the IP mask and reason.
	SZLINE VIEW は SZLINE LIST を詳細にしたもので、
	SZLINE の IP アドレスマスクとその理由に加えて、
	このエントリを追加したメンバー、追加日、失効日を表示します。
	
#	SZLINE CLEAR clears all entries of the SZLINE list.
	SZLINE CLEAR コマンドは SZLINE リストを削除します。

OPER_HELP_SET
#	Syntax: SET option setting
	構文: SET option setting

#	Sets various global Services options.  Option names
#	currently defined are:
#	    READONLY   Set read-only or read-write mode
#	    LOGCHAN    Report log messages to a channel
#	    DEBUG      Activate or deactivate debug mode
#	    NOEXPIRE   Activate or deactivate no expire mode
#	    SUPERADMIN Activate or deactivate super-admin mode
#	    SQL        Activate or deactivate sql mode
#	    IGNORE     Activate or deactivate ignore mode
#	    LIST       List the options
	サービスのグローバルオプションを設定します。現在
	定義されているオプションは:
	    READONLY   読み込み専用か読み書きモードにします。
	    LOGCHAN    チャンネルにログメッセージを流します。
	    DEBUG      デバッグモードの有効無効を切り替えます。
	    NOEXPIRE   非失効モードの有効無効を切り替えます。
	    SUPERADMIN スーパー管理者モードの有効無効を切り替えます。
	    SQL        sql モードの有効無効を切り替えます。
	    IGNORE     無視モードの有効無効を切り替えます。
	    LIST       オプションを表示します。

OPER_HELP_SET_READONLY
#	Syntax: SET READONLY {ON | OFF}
	構文: SET READONLY {ON | OFF}
	
#	Sets read-only mode on or off.  In read-only mode, normal
#	users will not be allowed to modify any Services data,
#	including channel and nickname access lists, etc.  IRCops
#	with sufficient Services privileges will be able to modify
#	Services' AKILL list and drop or forbid nicknames and
#	channels, but any such changes will not be saved unless
#	read-only mode is deactivated before Services is terminated
#	or restarted.
	読み込み専用モードの有効無効を切り替えます。読み込み専用モード
	では、通常のユーザーはチャンネルとニックネームのリスト等、全ての
	サービスデータを変更できません。適当な権利を持つ IRC オペレーター
	だけがサービスの AKILL リストを変更して、ニックネームや
	チャンネルを削除追加できます。ただし、この時行った変更は
	サービスを終了するか再起動する前に読み取り専用モードを
	無効にしない限り保存されません。
	
#	This option is equivalent to the command-line option
#	-readonly.
	このオプションはコマンドラインオプション -readonly を
	指定することと等価です。

OPER_HELP_SET_LOGCHAN
#	Syntax: SET LOGCHAN {ON | OFF}
	構文: SET LOGCHAN {ON | OFF}

#	With this setting on, Services will send its logs to a specified
#	channel as well as the log file. LogChannel must also be defined
#	in the Services configuration file for this setting to be of any
#	use.
	この設定を有効にすると、サービスはサービスログをログファイルに
	保存するのと同時に、これを特定のチャンネルに出力します。
	その場合は、変数 LogChannel をサービス設定ファイル内で定義
	しなければいけません。
	
#	This option is equivalent to the command-line option -logchan.
	このオプションはコマンドラインオプション -logchan を
	指定することと等価です。
	
#	Note: This can have strong security implications if your log
#	channel is not properly secured.
	注意: このオプションは強固なセキュリティの観点からすれば
	好ましくありません。有効にする場合に、ログ出力チャンネルを
	公開チャンネルにすることはお勧めできません。

OPER_HELP_SET_DEBUG
#	Syntax: SET DEBUG {ON | OFF | num}
	構文: SET DEBUG {ON | OFF | num}
	
#	Sets debug mode on or off.  In debug mode, all data sent to
#	and from Services as well as a number of other debugging
#	messages are written to the log file.  If num is
#	given, debug mode is activated, with the debugging level set
#	to num.
	デバッグモードの有効無効を切り替えます。デバッグモードでは
	サービスが送受信する全てのデータに加えて多くのデバッグメッセージ
	がログファイルに記録されます。num を指定した場合は、
	デバッグモードが有効になり、デバッグレベルが num に
	設定されます。

#	This option is equivalent to the command-line option
#	-debug.
	このオプションはコマンドラインオプション -debug を
	指定することと等価です。

OPER_HELP_SET_NOEXPIRE
#	Syntax: SET NOEXPIRE {ON | OFF}
	構文: SET NOEXPIRE {ON | OFF}

#	Sets no expire mode on or off.  In no expire mode, nicks,
#	channels, akills and exceptions won't expire until the
#	option is unset.
	非失効モードの有効無効を切り替えます。非失効モードでは、
	ニックネーム、チャンネル、akill、例外が失効を迎えることは
	ありません。これは非失効モードが無効になるまで続きます。

#	This option is equivalent to the command-line option
#	-noexpire.
	このオプションはコマンドラインオプション -noexpire を
	指定することと等価です。

OPER_HELP_SET_SUPERADMIN
#	Syntax: SET SUPERADMIN {ON | OFF}
	構文: SET SUPERADMIN {ON | OFF}

#	Setting this will grant you extra privileges such as the
#	ability to be "founder" on all channel's etc...
	スーパー管理者モードの有効無効を切り替えます。スーパー管理者
	モードでは、全てのチャンネルの"founder"になったりできます。

#	This option is not persistent, and should only be used when
#	needed, and set back to OFF when no longer needed.
	このオプションは通常は無効化すべきもので、必要に迫られた
	場合にのみ有効化されるべきです。また、不要になったら無効にする
	べきです。

OPER_HELP_SET_SQL
#	Syntax: SET SQL {ON | OFF}
	構文: SET SQL {ON | OFF}

#	Setting this will toggle Anope's usage of SQL, this should
#	be used to disable and enable SQL should your SQL server go down
#	while services are running.
#	Anope が SQL を使用するか否かを切り替えます。この設定は
	サービスの運用中に SQL サーバーを終了させる場合に使用します。

OPER_HELP_SET_IGNORE
#	Syntax: SET IGNORE {ON | OFF}
	構文: SET IGNORE {ON | OFF}

#	Setting this will toggle Anope's usage of the IGNORE system 
#	on or off.
	無視モードのの有効無効を切り替えます。

OPER_HELP_SET_LIST
#	Syntax: SET LIST
	構文: SET LIST

#	Display the various %S settings
	%S の設定を表示します。

OPER_HELP_NOOP
#	Syntax: NOOP SET server
#	        NOOP REVOKE server
	構文: NOOP SET server
	      NOOP REVOKE server

#	NOOP SET remove all O:lines of the given
#	server and kill all IRCops currently on it to
#	prevent them from rehashing the server (because this
#	would just cancel the effect).
	NOOP SET は指定された server の O:lines を
	全て削除し、サーバー設定が書き換えられるのを防ぐために、
	現在このサーバーにいる IRC オペレーター全員を kill します。

#	NOOP REVOKE makes all removed O:lines available again
#	on the given server.
	NOOP REVOKE は指定された server の
	削除された O:line を復活させます。

#	Note: The server is not checked at all by the
#	Services.
	注意: サービスは server が正しいかどうか
	チェックしません。

OPER_HELP_JUPE
#	Syntax: JUPE server [reason]
	構文: JUPE server [reason]
	
#	Tells Services to jupiter a server -- that is, to create
#	a fake "server" connected to Services which prevents
#	the real server of that name from connecting.  The jupe
#	may be removed using a standard SQUIT.  If a reason is
#	given, it is placed in the server information field;
#	otherwise, the server information field will contain the
#	text "Juped by <nick>", showing the nickname of the
#	person who jupitered the server.
	サービスがサーバーを守るようにします。これはつまり、
	サービスに接続する身代わりサーバーを作り、同じ名前を持つ
	サーバーがサービスに接続できないようにします。この身代わり
	サーバーを削除するには通常の SQUIT コマンドが使えます。
	理由を指定した場合は、サーバー情報フィールドにこれを
	書き込みます。理由を指定しなかった場合、サーバー情報フィールド
	には "Juped by <nick>" のようにこの身代わりサーバーを
	つくったユーザーのニックネームを含む内容を書き込みます。

OPER_HELP_RAW
#	Syntax: RAW text
	構文: RAW text
	
#	Sends a string of text directly to the server to which
#	Services is connected.  This command has a very limited
#	range of uses, and can wreak havoc on a network if used
#	improperly.  DO NOT USE THIS COMMAND unless you are
#	absolutely certain you know what you are doing!
	サービスが接続しているサーバーにテキストを直接送信します。
	このコマンドは使用に制約があり、用法を間違えると
	ネットワークに大きな障害を引き起こす可能性があります。
	あなたがしようとしている事を十分に理解していない状態では
	このコマンドを絶対に使用しないでください！

OPER_HELP_UPDATE
#	Syntax: UPDATE
	構文: UPDATE
	
#	Causes Services to update all database files as soon as you
#	send the command.
	コマンドを送信後できるだけ早く、サービスに全ての
	データベースファイルをアップデートさせます。
	
OPER_HELP_RELOAD
#	Syntax: RELOAD
	構文: RELOAD

#	Causes Services to reload the configuration file. Note that
#	some directives still need the restart of the Services to
#	take effect (such as Services' nicknames, activation of the 
#	session limitation, etc.)
	サービスに設定ファイルを再読み込みさせます。いくつかの命令
	を有効化させるには、サービスの再起動が必要な場合があります。
	例えば、サービスのニックネーム、セッション制限の有効化等です。

OPER_HELP_QUIT
#	Syntax: QUIT
	構文: QUIT
	
#	Causes Services to do an immediate shutdown; databases are
#	not saved.  This command should not be used unless
#	damage to the in-memory copies of the databases is feared
#	and they should not be saved.  For normal shutdowns, use the
#	SHUTDOWN command.
	サービスを今すぐ終了させます。データベースのセーブは
	行われません。このコマンドはメモリ上に展開したデータベースの
	コピーに障害が発生したおそれがあり、これを保存しないほうが良い
	場合を除いて使用するべきではありません。通常の終了の際には
	SHUTDOWN コマンドを使用してください。


OPER_HELP_SHUTDOWN
#	Syntax: SHUTDOWN
	構文: SHUTDOWN
	
#	Causes Services to save all databases and then shut down.
	サービスに全てのデータベースをセーブさせ、サービスを終了します。

OPER_HELP_RESTART
#	Syntax: RESTART
	構文: RESTART
	
#	Causes Services to save all databases and then restart
#	(i.e. exit and immediately re-run the executable).
	サービスに全てのデータベースを保存させ、サービスを再起動します。
	(つまり、終了後直ぐに起動処理を繰り返します。)

OPER_HELP_CHANLIST
#	Syntax: CHANLIST [{pattern | nick} [SECRET]]
	構文: CHANLIST [{pattern | nick} [SECRET]]
	
#	Lists all channels currently in use on the IRC network, whether they
#	are registered or not.
	IRC ネットワーク上に現在あるチャンネルを、
	登録済みか否かにかかわらず全て表示します。

#	If pattern is given, lists only channels that match it. If a nickname
#	is given, lists only the channels the user using it is on. If SECRET is
#	specified, lists only channels matching pattern that have the +s or
#	+p mode.
	pattern が指定された場合は、該当するチャンネルのみを
	表示します。ニックネームが指定された場合は、このユーザーが
	join しているチャンネルのみを表示します。SECRET が指定
	された場合は、pattern に該当するチャンネルのうち
	+s か +p モードのチャンネルのみを表示します。

OPER_HELP_USERLIST
#	Syntax: USERLIST [{pattern | channel} [INVISIBLE]]
	構文: USERLIST [{pattern | channel} [INVISIBLE]]
	
#	Lists all users currently online on the IRC network, whether their
#	nick is registered or not.
	IRC ネットワーク上に現在いるユーザーを、
	登録済みニックネームが否かにかかわらず全員表示します。
	
#	If pattern is given, lists only users that match it (it must be in
#	the format nick!user@host). If channel is given, lists only users
#	that are on the given channel. If INVISIBLE is specified, only users
#	with the +i flag will be listed.
	pattern (フォーマットはnick!user@host) が指定された場合、
	これに該当するユーザーのみを表示します。 channel が指定
	された場合、このチャンネルに join しているユーザーのみを表示
	します。INVISIBLE が指定された場合は、+i フラグが立っている
	ユーザーのみを表示します。

OPER_HELP_MODLOAD
#	Syntax: MODLOAD FileName
	構文: MODLOAD FileName
	
#	This command loads the module named FileName from the modules
#	directory.
	モジュールディレクトリ内から FileName で指定した
	モジュールをロードします。

OPER_HELP_MODUNLOAD
#	Syntax: MODUNLOAD FileName
	構文: MODUNLOAD FileName
	
#	This command unloads the module named FileName from the modules
#	directory.
	モジュールディレクトリ内から FileName で指定した
	モジュールをアンロードします。

OPER_HELP_MODINFO
#	Syntax: MODINFO FileName
	構文: MODINFO FileName
	
#	This command lists information about the specified loaded module
	指定されたロード済みモジュールの情報を表示します。

OPER_HELP_MODLIST
#	Syntax: MODLIST [Core|3rd|protocol|encryption|supported|qatested]
	構文: MODLIST [Core|3rd|protocol|encryption|supported|qatested]
	
#	Lists all currently loaded modules.
	ロード済みモジュールを全て表示します。


###########################################################################
#
# BotServ help messages
#
###########################################################################
BOT_HELP_CMD_BOTLIST
#	    BOTLIST        Lists available bots
	    BOTLIST        ボットのリストを表示します。
BOT_HELP_CMD_ASSIGN
#	    ASSIGN         Assigns a bot to a channel
	    ASSIGN         ボットをチャンネルに召喚します。
BOT_HELP_CMD_SET
#	    SET            Configures bot options
	    SET            ボットのオプションを設定します。
BOT_HELP_CMD_KICK
#	    KICK           Configures kickers
	    KICK           キッカーを設定します。
BOT_HELP_CMD_BADWORDS
#	    BADWORDS       Maintains bad words list
	    BADWORDS       禁止ワードリストを設定します。
BOT_HELP_CMD_ACT
#	    ACT            Makes the bot do the equivalent of a "/me" command
	    ACT            ボットを"/me"コマンドと同様に発言させます。
BOT_HELP_CMD_INFO
#	    INFO           Allows you to see BotServ information about a channel or a bot
	    INFO           チャンネルかボットに関する BotServ の情報を表示します。
BOT_HELP_CMD_SAY
#	    SAY            Makes the bot say the given text on the given channel
	    SAY            指定されたテキストを指定されたチャンネルで発言させます。
BOT_HELP_CMD_UNASSIGN
#	    UNASSIGN       Unassigns a bot from a channel
	    UNASSIGN       ボットをチャンネルから削除します。
BOT_HELP_CMD_BOT
#	    BOT            Maintains network bot list
	    BOT            ボットリストを設定しま。

BOT_HELP
#	%S allows you to have a bot on your own channel.
#	It has been created for users that can't host or
#	configure a bot, or for use on networks that don't
#	allow users' bot. Available commands are listed 
#	below; to use them, type %R%S command.  For 
#	more information on a specific command, type %R
#	%S HELP command.
	%S 機能を使うと、あなたのチャンネルにボットを
	召喚できるようになります。これはボットを動かしたり、
	設定できないユーザー、またはボットを動かすのを禁止
	しているネットワークにいるユーザーのための機能です。
	使用可能なコマンドは以下に示してあります。これらを
	使用するには、 %R%S command と入力してください。
	また、それぞれのコマンドに関するより詳しい情報が、
	%R %S HELP command と入力すれは見られます。
	

BOT_HELP_FOOTER
#	Bot will join a channel whenever there is at least
#	%d user(s) on it.
	チャンネルに参加中のユーザー数が %d 人を超えると、
	ボットがチャンネルにjoinできるようになります。

	
BOT_HELP_BOTLIST
#	Syntax: BOTLIST
	構文: BOTLIST
	
#	Lists all available bots on this network.
	このネットワークで使えるボットのリストを表示する。
	
BOT_HELP_ASSIGN
#	Syntax: ASSIGN chan nick
	構文: ASSIGN chan nick
	
#	Assigns a bot pointed out by nick to the channel chan. You
#	can then configure the bot for the channel so it fits
#	your needs.  
	ボットを chan で指定したチャンネルに召喚します。
	召喚の後には、チャンネルのポリシーに合うように
	ボットを設定してください。
	
BOT_HELP_UNASSIGN
#	Syntax: UNASSIGN chan
	構文: UNASSIGN chan
	
#	Unassigns a bot from a channel. When you use this command,
#	the bot won't join the channel anymore. However, bot
#	configuration for the channel is kept, so you will always
#	be able to reassign a bot later without have to reconfigure
#	it entirely.
	ボットをチャンネルから削除します。このコマンドを使うと、
	ボットはチャンネルから削除れます。ただし、このチャンネル
	に関連したボットの設定は保存されますので、再度召喚した時に
	改めて設定をやり直す必要はありません。
	
BOT_HELP_INFO
#	Syntax: INFO {chan | nick}
	構文: INFO {chan | nick}
	
#	Allows you to see %S information about a channel or a bot.
#	If the parameter is a channel, then you'll get information
#	such as enabled kickers. If the parameter is a nick,
#	you'll get information about a bot, such as creation
#	time or number of channels it is on.
	チャンネルかボットに関する %S の情報を表示します。
	チャンネルを指定した場合には、有効になっているキッカー
	等の情報を表示します。ニックネームを指定した場合には、
	召喚された時間や召喚されているチャンネルの数等の、
	ボットに関する情報を表示します。
	
BOT_HELP_SET
#	Syntax: SET (channel | bot) option parameters
	構文: SET (channel | bot) option parameters
	
#	Configures bot options.  option can be one of:
	ボットのオプションを設定します。option に指定できるのは以下です。
	
#	    DONTKICKOPS      To protect ops against bot kicks
#	    DONTKICKVOICES   To protect voices against bot kicks
#	    GREET            Enable greet messages
#	    FANTASY          Enable fantaisist commands
#	    SYMBIOSIS        Allow the bot to act as a real bot
	    DONTKICKOPS      オペレーターのキックを禁止します。
	    DONTKICKVOICES   voices ユーザーのキックを禁止します。
	    GREET            挨拶メッセージを有効にします。
	    FANTASY          fantaisist モードを有効にします。
	    SYMBIOSIS        ボットが実ユーザーの如く振る舞うよう設定します。
	
#	Type %R%S HELP SET option for more information
#	on a specific option.
	より詳しい情報を見るには、 %R%S HELP SET option と
	入力してください。

#	Note: access to this command is controlled by the
#	level SET.
	注意: このコマンドを使うには SET コマンドで設定した
	レベル以上の権限が必要です。
	
BOT_HELP_SET_DONTKICKOPS
#	Syntax: SET channel DONTKICKOPS {ON|OFF}
	構文: SET channel DONTKICKOPS {ON|OFF}
	
#	Enables or disables ops protection mode on a channel.
#	When it is enabled, ops won't be kicked by the bot
#	even if they don't match the NOKICK level.
	あるチャンネルでのオペレーター保護 モード
	の有効無効を切り替えます。これが有効で、
	オペレーターが NOKICK レベルにマッチしない場合、
	ボットはこのオペレーターをキックしません。
	
	
BOT_HELP_SET_DONTKICKVOICES
#	Syntax: SET channel DONTKICKVOICES {ON|OFF}
	構文: SET channel DONTKICKVOICES {ON|OFF}
	
#	Enables or disables voices protection mode on a channel.
#	When it is enabled, voices won't be kicked by the bot
#	even if they don't match the NOKICK level.
	あるチャンネルでのvoices ユーザー保護 モード
	の有効無効を切り替えます。これが有効で、voices
	ユーザーが NOKICK レベルにマッチしない場合、
	ボットはこのvoices ユーザーをキックしません。
	
BOT_HELP_SET_FANTASY
#	Syntax: SET channel FANTASY {ON|OFF}
	構文: SET channel FANTASY {ON|OFF}

#	Enables or disables fantasy mode on a channel.
#	When it is enabled, users will be able to use
#	commands !op, !deop, !voice, !devoice,
#	!kick, !kb, !unban, !seen on a channel (find how 
#	to use them; try with or without nick for each, 
#	and with a reason for some?).
	あるチャンネルでのファンタジー モードの
	有効無効を切り替えます。これが有効な場合ユーザーは
	チャンネル内で以下のコマンドが使えます。!op、
	!deop、!voice、!devoice、!kick、!kb、!unban、
	!seen。それぞれの使い方は、引数にニックネームを
	つけたり外したり、理由をつけたりして色々試して
	みてください。
	
#	Note that users wanting to use fantaisist
#	commands MUST have enough level for both
#	the FANTASIA and another level depending
#	of the command if required (for example, to use 
#	!op, user must have enough access for the OPDEOP
#	level).
	注意することは、ユーザーがファンタジーモード
	コマンドを使用するためには、そのユーザーが
	FANTASIA 以上の権限レベルとそれぞれのコマンドに
	対応した権限レベルを持っていなければいけません。
	例えば、!op を使うためには、ユーザーは OPDEOP
	レベル以上の権限を持っていなければいけません。

BOT_HELP_SET_GREET
#	Syntax: SET channel GREET {ON|OFF}
	構文: SET channel GREET {ON|OFF}
	
#	Enables or disables greet mode on a channel.
#	When it is enabled, the bot will display greet
#	messages of users joining the channel, provided
#	they have enough access to the channel.
	あるチャンネルでの挨拶 モードの有効無効を
	切り替えます。これが有効の場合、ボットはチャンネル
	にjoinしたユーザーに挨拶メッセージを表示します。

BOT_HELP_SET_SYMBIOSIS
#	Syntax: SET channel SYMBIOSIS {ON|OFF}
	構文: SET channel SYMBIOSIS {ON|OFF}
	
#	Enables or disables symbiosis mode on a channel.
#	When it is enabled, the bot will do everything
#	normally done by %s on channels, such as MODEs,
#	KICKs, and even the entry message.
	あるチャンネルでのsymbiosis モードの有効無効を
	切り替えます。これが有効の場合、ボットはチャンネルで
	通常 %s ができることがすべてできるようになります。
	例えば、MODE コマンド、KICK コマンド、メッセージの送信
	等です。

BOT_HELP_KICK
#	Syntax: KICK channel option parameters
	構文: KICK channel option parameters
	
#	Configures bot kickers.  option can be one of:
	キッカーを設定します。  option に指定できるのは以下です。
	
#	    BOLDS         Sets if the bot kicks bolds
#	    BADWORDS      Sets if the bot kicks bad words
#	    CAPS          Sets if the bot kicks caps
#	    COLORS        Sets if the bot kicks colors
#	    FLOOD         Sets if the bot kicks flooding users
#	    REPEAT        Sets if the bot kicks users who repeat
#	                       themselves
#	    REVERSES      Sets if the bot kicks reverses
#	    UNDERLINES    Sets if the bot kicks underlines
	    BOLDS         太字キッカーの有効無効を切り替えます。
	    BADWORDS      禁止ワードキッカーの有効無効を切り替えます。
	    CAPS          大文字キッカーの有効無効を切り替えます。
	    COLORS        色文字キッカーの有効無効を切り替えます。
	    FLOOD         Flood 攻撃キッカーの有効無効を切り替えます。
	    REPEAT        繰り返しキッカーの有効無効を切り替えます。
	    REVERSES      反転文字キッカーの有効無効を切り替えます。
	    UNDERLINES    下線キッカーの有効無効を切り替えます。
	
#	Type %R%S HELP KICK option for more information
#	on a specific option.
	より詳しい情報を見るには、 %R%S HELP KICK option と
	入力してください。
	
#	Note: access to this command is controlled by the
#	level SET.
	注意: このコマンドを使うには SET コマンドで設定した
	レベル以上の権限が必要です。

BOT_HELP_KICK_BOLDS
#	Syntax: KICK channel BOLDS {ON|OFF} [ttb]
	構文: KICK channel BOLDS {ON|OFF} [ttb]

#	Sets the bolds kicker on or off. When enabled, this
#	option tells the bot to kick users who use bolds.
	太字キッカーの有効無効を切り替えます。
	有効の場合、ボットは太字を発言したユーザーをキックします。

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_COLORS
#	Syntax: KICK channel COLORS {ON|OFF} [ttb]
	構文: KICK channel COLORS {ON|OFF} [ttb]

#	Sets the colors kicker on or off. When enabled, this
#	option tells the bot to kick users who use colors.
	色文字キッカーの有効無効を切り替えます。
	有効の場合、ボットは色文字を発言したユーザーをキックします。

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_REVERSES
#	Syntax: KICK channel REVERSES {ON|OFF} [ttb]
	構文: KICK channel REVERSES {ON|OFF} [ttb]

#	Sets the reverses kicker on or off. When enabled, this
#	option tells the bot to kick users who use reverses.
	反転文字キッカーの有効無効を切り替えます。
	有効の場合、ボットは色文字を発言したユーザーをキックします。

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_UNDERLINES
#	Syntax: KICK channel UNDERLINES {ON|OFF} [ttb]
	構文: KICK channel UNDERLINES {ON|OFF} [ttb]

#	Sets the underlines kicker on or off. When enabled, this
#	option tells the bot to kick users who use underlines.
	下線キッカーの有効無効を切り替えます。
	有効の場合、ボットは下線を発言したユーザーをキックします。

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_CAPS
#	Syntax: KICK channel CAPS {ON|OFF} [ttb [min [percent]]]
	構文: KICK channel CAPS {ON|OFF} [ttb [min [percent]]]

#	Sets the caps kicker on or off. When enabled, this
#	option tells the bot to kick users who are talking in
#	CAPS.
	大文字キッカーの有効無効を切り替えます。
	有効の場合、ボットは大文字を発言したユーザーをキックします。

#	The bot kicks only if there are at least min caps
#	and they constitute at least percent%% of the total 
#	text line (if not given, it defaults to 10 characters
#	and 25%%).
	少なくとも min 文字以上の大文字があり、
	1行に含まれる大文字が percent%% 以上の場合に、
	キックします。(これらが指定されなかった場合の
	初期値は 10 文字と 25 %%です。)

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_FLOOD
#	Syntax: KICK channel FLOOD {ON|OFF} [ttb [ln [secs]]]
	構文: KICK channel FLOOD {ON|OFF} [ttb [ln [secs]]]

#	Sets the flood kicker on or off. When enabled, this
#	option tells the bot to kick users who are flooding
#	the channel using at least ln lines in secs seconds
#	(if not given, it defaults to 6 lines in 10 seconds).
	flood 攻撃キッカーの有効無効を切り替えます。
	有効の場合、ボットはflood 攻撃をしたユーザーをキックします。
	secs 秒間にln 回の発言した場合を flood 攻撃
	とみなします。(これらが指定されなかった場合の
	初期値は 10 秒間に 6 発言です。)
	
#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_REPEAT
#	Syntax: KICK #channel REPEAT {ON|OFF} [ttb [num]]
	構文: KICK #channel REPEAT {ON|OFF} [ttb [num]]

#	Sets the repeat kicker on or off. When enabled, this
#	option tells the bot to kick users who are repeating
#	themselves num times (if num is not given, it
#	defaults to 3).
	繰り返しキッカーの有効無効を切り替えます。
	有効の場合、ボットは num 回同じ内容を
	繰り返し発言をしたユーザーをキックします。
	(この値が指定されなかった場合の初期値は 3 回です。)

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。

BOT_HELP_KICK_BADWORDS
#	Syntax: KICK #channel BADWORDS {ON|OFF} [ttb]
	構文: KICK #channel BADWORDS {ON|OFF} [ttb]

#	Sets the bad words kicker on or off. When enabled, this
#	option tells the bot to kick users who say certain words
#	on the channels.
	禁止ワードキッカーの有効無効を切り替えます。
	有効の場合、ボットは 禁止ワードを発言したユーザーをキックします。

#	You can define bad words for your channel using the
#	BADWORDS command. Type %R%S HELP BADWORDS for
#	more information.
	BADWORDS コマンドで禁止ワードを登録できます。
	より詳しい情報を見るには %R%S HELP BADWORDS と
	入力してください。

#	ttb is the number of times an user can be kicked
#	before it get banned. Don't give ttb to disable
#	the ban system once activated.
	あるユーザーが ttb 回キックされるとこのユーザーをバンします。
	バン機能を使わない場合は ttb を指定しないでください。
	
BOT_HELP_BADWORDS
#	Syntax: BADWORDS channel ADD word [SINGLE | START | END]
#	        BADWORDS channel DEL {word | entry-num | list}
#	        BADWORDS channel LIST [mask | list]
#	        BADWORDS channel CLEAR
	構文: BADWORDS channel ADD word [SINGLE | START | END]
	      BADWORDS channel DEL {word | entry-num | list}
	      BADWORDS channel LIST [mask | list]
	      BADWORDS channel CLEAR
	
#	Maintains the bad words list for a channel. The bad
#	words list determines which words are to be kicked
#	when the bad words kicker is enabled. For more information,
	type %R%S HELP KICK BADWORDS.
	指定されたチャンネルの 禁止ワードリスト を編集します。
	禁止ワードとは、禁止ワードキッカーが有効な場合にキック対象
	となるワードのことです。より詳しい情報を見るには、
	%R%S HELP KICK BADWORDS と入力してください。
	
#	The BADWORDS ADD command adds the given word to the
#	badword list. If SINGLE is specified, a kick will be
#	done only if an user says the entire word. If START is 
#	specified, a kick will be done if an user says a word
#	that starts with word. If END is specified, a kick
#	will be done if an user says a word that ends with
#	word. If you don't specify anything, a kick will
#	be issued every time word is said by an user.
	BADWORDS ADD コマンドは、指定されたワードを禁止ワード
	リストに追加します。SINGLE が指定された場合、単独で
	禁止ワードが使用された発言についてキックします。START が
	指定された場合、word から始まる発言についてキック
	します。END が指定された場合、word で終わる発言に
	ついてキックします。これらの指定が無い場合、発言の
	どの位置で禁止ワードを使用しても、キックします。

#	The BADWORDS DEL command removes the given word from the
#	bad words list.  If a list of entry numbers is given, those
#	entries are deleted.  (See the example for LIST below.)
	BADWORDS DEL コマンドは、指定されたワードを禁止ワード
	リストから削除します。エントリ番号が指定された場合は、
	この番号に対応した禁止ワードを削除します。(LISTの例も
	参照してください。)
	
#	The BADWORDS LIST command displays the bad words list.  If
#	a wildcard mask is given, only those entries matching the
#	mask are displayed.  If a list of entry numbers is given,
#	only those entries are shown; for example:
	BADWORDS LIST コマンドは、禁止ワードリストを表示します。
	ワイルドカードマスクが指定された場合は、このマスクに該当する
	エントリのみを表示します。エントリ番号が指定された場合は、
	指定されたものだけを表示します。例えば、以下のように指定できます。

	   BADWORDS #channel LIST 2-5,7-9
#	      Lists bad words entries numbered 2 through 5 and
#	      7 through 9.
	      2から5番目と7から9番目の禁止ワードエントリを表示します。
	      
#	The BADWORDS CLEAR command clears all entries of the
#	bad words list.
	BADWORDS CLEAR コマンドは、禁止ワードリストに登録されている
	全てのエントリを削除します。

BOT_HELP_SAY
#	Syntax: SAY channel text
	構文: SAY channel text
	
#	Makes the bot say the given text on the given channel.
	ボットに指定したチャンネル宛に指定した内容で発言させます。

BOT_HELP_ACT
#	Syntax: ACT channel text
	構文: ACT channel text
	
#	Makes the bot do the equivalent of a "/me" command
#	on the given channel using the given text.
	ボットに"/me"コマンドと同じように、指定したチャンネル
	宛に指定した内容で発言させます。


BOT_SERVADMIN_HELP_BOT
#	Syntax: BOT ADD nick user host real
#	        BOT CHANGE oldnick newnick [user [host [real]]]
#	        BOT DEL nick
	構文: BOT ADD nick user host real
	      BOT CHANGE oldnick newnick [user [host [real]]]
	      BOT DEL nick
	
#	Allows Services admins to create, modify, and delete
#	bots that users will be able to use on their own
#	channels.
	サービス管理者にボットを作成、変更、削除する許可を与えます。
	ユーザーは自分のチャンネルでこのボットを使うことができます。
	
#	BOT ADD adds a bot with the given nickname, username,
#	hostname and realname. Since no integrity checks are done 
#	for these settings, be really careful.
#	BOT CHANGE allows to change nickname, username, hostname
#	or realname of a bot without actually delete it (and all
#	the data associated with it).
#	BOT DEL removes the given bot from the bot list.  
	BOT ADD は指定されたニックネーム、ユーザー名、ホスト名、
	実名でボットを追加します。設定項目に関して整合性のチェック
	は行われないので、十分気をつけてください。
	BOT CHANGE は指定されたニックネーム、ユーザー名、ホスト名、
	実名でボットの設定内容を変更します。ボットの削除を行わないので、
	全ての設定内容は引き継がれます。
	BOT DEL は指定されたボットをボットリストから削除します。
	
#	Note: you cannot create a bot that has a nick that is
#	currently registered. If an unregistered user is currently
#	using the nick, they will be killed.
	注意: 登録済みのニックネームで新規にボットを作成することは
	できません。引数で指定されたニックネームを使用中の未登録
	ユーザーがいる場合は、このユーザーを kill します。

BOT_SERVADMIN_HELP_SET
	
#	These options are reserved to Services admins:
	これらのオプションはサービス管理者のみが使えます。
	
#	    NOBOT            Prevent a bot from being assigned to 
#	                        a channel
#	    PRIVATE          Prevent a bot from being assigned by
#	                        non IRC operators
	    NOBOT            チャンネルでのボット召喚を禁止します。
	    PRIVATE          IRC オペレーター以外のユーザーによる
	                        ボット召喚を禁止します。

BOT_SERVADMIN_HELP_SET_NOBOT
#	Syntax: SET channel NOBOT {ON|OFF}
	構文: SET channel NOBOT {ON|OFF}
	
#	This option makes a channel be unassignable. If a bot 
#	is already assigned to the channel, it is unassigned
#	automatically when you enable the option.
	指定したチャンネルへのボット召喚を許可するか否か
	を設定します。このオプションを有効にした時点で、
	チャンネルにボットが召喚されている場合、
	自動的にボットを削除します。

BOT_SERVADMIN_HELP_SET_PRIVATE
#	Syntax: SET bot-nick PRIVATE {ON|OFF}
	構文: SET bot-nick PRIVATE {ON|OFF}

#	This option prevents a bot from being assigned to a
#	channel by users that aren't IRC operators.
	IRC オペレーターでないユーザーによるボット召喚を禁止
	するか否かを設定します。

###########################################################################
#
# HostServ messages
#
###########################################################################
HOST_EMPTY
#	The vhost list is empty.
	バーチャルホストのリストに登録レコードがありません。
HOST_ENTRY
#	#%d Nick:%s, vhost:%s (%s - %s)
	#%d ニックネーム:%s, バーチャルホスト:%s (%s - %s)
HOST_IDENT_ENTRY
#	#%d Nick:%s, vhost:%s@%s (%s - %s)
	#%d ニックネーム:%s, バーチャルホスト:%s@%s (%s - %s)
HOST_SET
#	vhost for %s set to %s.
	%s のバーチャルホストを %s に設定しました。
HOST_IDENT_SET
#	vhost for %s set to %s@%s.
	%s のバーチャルホストを %s@%s に設定しました。
HOST_SETALL
#	vhost for group %s set to %s.
	グループ %s のバーチャルホストを %s に設定しました。
HOST_DELALL
#	vhosts for group %s have been removed.
	グループ %s のバーチャルホストを削除しました。
HOST_DELALL_SYNTAX
	DELALL <nick>.
HOST_IDENT_SETALL
#	vhost for group %s set to %s@%s.
	グループ %s のバーチャルホストを %s@%s に設定しました。
HOST_SET_ERROR
#	A vhost must be in the format of a valid hostmask.
	バーチャルホストを有効なホストマスクの形式にしてください。
HOST_SET_IDENT_ERROR
#	A vhost ident must be in the format of a valid ident
	バーチャルホスト ident を有効な ident の形式にしてください。
HOST_SET_TOOLONG
#	Error! The vhost is too long, please use a host shorter than %d characters.
	エラー！バーチャルホストが長すぎます。%d 文字以下にしてください。
HOST_SET_IDENTTOOLONG
#	Error! The Ident is too long, please use an ident shorter than %d characters.
	エラー！ ident が長すぎます。%d 文字以下にしてください。
HOST_NOREG
#	User %s not found in the nickserv db.
	ユーザー %s が nickserv のデータベースに見つかりません。
HOST_SET_SYNTAX
	SET <nick> <hostmask>.
HOST_SETALL_SYNTAX
	SETALL <nick> <hostmask>.
HOST_DENIED
#	Access Denied.
	アクセスが拒否されました。
HOST_NOT_ASSIGNED
#	Please contact an Operator to get a vhost assigned to this nick.
	このニックネームにバーチャルホストを割り当てるには、サーバーオペレーターに連絡を取ってください。
HOST_ACTIVATED
#	Your vhost of %s is now activated.
	あなたのバーチャルホスト %s を有効化しました。
HOST_IDENT_ACTIVATED
#	Your vhost of %s@%s is now activated.
	あなたのバーチャルホスト %s@%s を有効化しました。
HOST_ID
#	Please identify to services first.
	サービスが起動中かどうか確認してください。
HOST_NOT_REGED
#	You need to register before a vhost can be assigned to you.
	バーチャルホストを登録してください。
HOST_DEL
#	vhost for %s removed.
	バーチャルホスト %s を削除しました。
HOST_DEL_SYNTAX
	DEL <nick>.
HOST_OFF
#	Your vhost was removed and the normal cloaking restored. 
	バーチャルホストを削除し、通常の隠匿ホストに変更しました。
HOST_OFF_UNREAL
#	Your vhost was removed. To re-enable the standard host cloaking, type /mode %s +%s
	バーチャルホストを削除しました。/mode %s +%s と入力すれば、通常の隠匿ホストに変更できます。
HOST_NO_VIDENT
#	Your IRCD does not support vIdent's, if this is incorrect, please report this as a possible bug
	あなたの IRC デーモンは vIdent をサポートしていません。サポートしている場合はバグレポートを送ってください。
HOST_GROUP
#	All vhost's in the group %s have been set to %s
	グループ %s に所属しているすべてのバーチャルホストを %s に変更しました。
HOST_IDENT_GROUP
#	All vhost's in the group %s have been set to %s@%s
	グループ %s に所属しているすべてのバーチャルホストを %s@%s に変更しました。
HOST_LIST_FOOTER
#	Displayed all records (Count: %d)
	レコードを全て表示しました。(レコード数: %d)
HOST_LIST_RANGE_FOOTER
#	Displayed records from %d to %d
	%d 番から %d 番のレコードを表示しました。
HOST_LIST_KEY_FOOTER
#	Displayed records matching key %s (Count: %d)
	キー %s に該当するレコードを表示しました。(レコード数: %d)

###########################################################################
#
# HostServ Help messages
#
###########################################################################
HOST_HELP_CMD_ON
#	    ON          Activates your assigned vhost
	    ON          登録済みのバーチャルホストを使います。

HOST_HELP_CMD_OFF
#	    OFF         Deactivates your assigned vhost
	    OFF         登録済みのバーチャルホストを使いません。

HOST_HELP_CMD_GROUP
#	    GROUP       Syncs the vhost for all nicks in a group
	    GROUP       グループ内のユーザー全員のバーチャルホストを同じものに変更します。

HOST_HELP_CMD_SET
#	    SET         Set the vhost of another user
	    SET         別のユーザーのバーチャルホストを設定します。

HOST_HELP_CMD_SETALL
#	    SETALL      Set the vhost for all nicks in a group
	    SETALL      グループ内のユーザー全員のバーチャルホストを設定します

HOST_HELP_CMD_DEL
#	    DEL         Delete the vhost of another user
	    DEL         別のユーザーのバーチャルホストを削除します。

HOST_HELP_CMD_DELALL
#	    DELALL      Delete the vhost for all nicks in a group
	    DELALL      グループ内のユーザー全員のバーチャルホストを削除します。

HOST_HELP_CMD_LIST
#	    LIST        Displays one or more vhost entries.
	    LIST        バーチャルホストエントリを表示します。

HOST_OPER_HELP
#	not used.
	使われていません。

HOST_ADMIN_HELP
#	not used.
	使われていません。

HOST_HELP
#	%S commands:
	%S 機能に関するコマンド:

HOST_HELP_ON
#	Syntax: ON
	構文: ON

#	Activates the vhost currently assigned to the nick in use.
#	When you use this command any user who performs a /whois
#	on you will see the vhost instead of your real IP address.
	使用中のニックネームに対応したバーチャルホスト設定を有効化します。
	このコマンドを使うと、/whois で表示される本当のIPアドレスの
	代わりに設定されたバーチャルホストが表示されます。

HOST_HELP_SET
#	Syntax: SET <nick> <hostmask>.
	構文: SET <nick> <hostmask>.

#	Sets the vhost for the given nick to that of the given
#	hostmask.  If your IRCD supports vIdents, then using
#	SET <nick> <ident>@<hostmask> set idents for users as 
#	well as vhosts.
	指定されたニックネームに対応したバーチャルホストを設定します。
	IRC デーモンが vIdents をサポートしていない場合は
	SET <nick> <ident>@<hostmask> のように入力すると、
	バーチャルホストに加えて idents も設定できます。

HOST_HELP_DELALL
#	Syntax: DELALL <nick>.
	構文: DELALL <nick>.

#	Deletes the vhost for all nick's in the same group as
#	that of the given nick.
	指定されたニックネームと同じグループに所属する
	ユーザー全員のバーチャルホスト設定を削除します。


HOST_HELP_SETALL
#	Syntax: SETALL <nick> <hostmask>.
	構文: SETALL <nick> <hostmask>.

#	Sets the vhost for all nicks in the same group as that
#	of the given nick.  If your IRCD supports vIdents, then
#	using SETALL <nick> <ident>@<hostmask> will set idents
#	for users as well as vhosts.
	指定されたニックネームと同じグループに所属する
	ユーザー全員のバーチャルホストを設定します。
	IRC デーモンが vIdents をサポートしていない場合は
	SETALL <nick> <ident>@<hostmask> のように入力すると、
	バーチャルホストに加えて idents も設定できます。

#	* NOTE, this will not update the vhost for any nick's
#	added to the group after this command was used.
	* 注意、このコマンドはあるグループに所属するユーザーの
	バーチャルホストの初期値を設定するものではありません。
	そのため、このコマンドを実行した後にグループに追加
	されたユーザーのバーチャルホストを変更するには、
	再度同じコマンドを入力してください。

HOST_HELP_OFF
#	Syntax: OFF
	構文: OFF

#	Deactivates the vhost currently assigned to the nick in use.
#	When you use this command any user who performs a /whois
#	on you will see your real IP address.
	使用中のニックネームに対応したバーチャルホスト設定を無効化します。
	このコマンドを使うと、/whois で本当のIPアドレスが表示されます。


HOST_HELP_DEL
#	Syntax: DEL <nick>
	構文: DEL <nick>

#	Deletes the vhost assigned to the given nick from the
#	database.
	指定したニックネームに対応したバーチャルホストの設定
	をデータベースから削除します。

HOST_HELP_LIST
#	Syntax: LIST [<key>|<#X-Y>]
	構文: LIST [<key>|<#X-Y>]

#	This command lists registered vhosts to the operator
#	if a Key is specified, only entries whos nick or vhost match
#	the pattern given in <key> are displayed e.g. Rob* for all
#	entries beginning with "Rob"
	登録済みバーチャルホストを表示します。
	Key が指定された場合は、ニックネームかバーチャルホスト
	が <key> にマッチするエントリのみを表示します。
	例えば、Rob* と指定された場合は、"Rob" が含まれる
	すべてのエントリを表示します。

#	If a #X-Y style is used, only entries between the range of X
#	and Y will be displayed, e.g. #1-3 will display the first 3
#	nick/vhost entries.
	#X-Y 形式が指定された場合は、XからY番目のエントリを表示
	します。例えば、#1-3 と指定された場合は、ニックネーム/
	バーチャルホストエントリの最初から3つを表示します。

#	The list uses the value of NSListMax as a hard limit for the
#	number of items to display to a operator at any 1 time.
	1回に表示するエントリ数の上限値は NSListMax で指定します。


HOST_HELP_GROUP
#	Syntax: GROUP
	構文: GROUP
	
#	This command allows users to set the vhost of their
#	CURRENT nick to be the vhost for all nicks in the same
#	group.
	現在のニックネームと同じグループに所属するユーザー全員
	のバーチャルホストを現在のニックネームに対応した
	バーチャルホストに設定します。

OPER_SVSNICK_UNSUPPORTED
#	Sorry, SVSNICK is not available on this network.
	ご迷惑を掛けて申し訳ありません、このネットワークで
	SVSNICK は使えません。

OPER_SQLINE_UNSUPPORTED
#	Sorry, SQLINE is not available on this network.
	ご迷惑を掛けて申し訳ありません、このネットワークで
	SQLINE は使えません。

OPER_SVSO_UNSUPPORTED
#	Sorry, OLINE is not available on this network.
	ご迷惑を掛けて申し訳ありません、このネットワークで
	OLINE は使えません。

OPER_UMODE_UNSUPPORTED
#	Sorry, UMODE is not available on this network.
	ご迷惑を掛けて申し訳ありません、このネットワークで
	UMODE は使えません。

OPER_SUPER_ADMIN_NOT_ENABLED
#	SuperAdmin setting not enabled in services.conf
	SuperAdmin の設定が services.conf の中で無効になっています。

