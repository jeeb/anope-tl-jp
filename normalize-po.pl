#!/usr/bin/perl
use warnings;
use strict;
use Encode;
use Locale::Maketext::Lexicon {
	_use_fuzzy => 1,
	_allow_empty => 1,
};
use Locale::Maketext::Extract;

my $lexicon = {};
my $Ext = Locale::Maketext::Extract->new;
$Ext->read_po($ARGV[0]);
while (my ($key, $val) = each %{$Ext->lexicon}) {
	if ($key eq $val) {
		$val = '';
	}
	my $_ = spacer($val);
	s/ICQ( )?ナンバー/ICQ 番号/g;
	s/設定する。/設定します。/g;
	s/安全オペレータ(ー)?/保安オペレーター/g;
	s/安全開設者/保安創設者/g;
	s/創始者/創設者/g;
	s/相続人/後継者/g;
	s/サーバ(ー)?/サーバー/g;
	s/オペレータ(ー)?/オペレーター/g;
	s/ユーザ(ー)?/ユーザー/g;
	s/キッカ(ー)?/キッカー/g;
	s/ポリシ(ー)?/ポリシー/g;
	s/エントリ(ー)?/エントリ/g;
	s/デバック/デバッグ/g;
	$lexicon->{$key} = $_;
}
$Ext->set_lexicon( { map Locale::Maketext::Extract::_maketext_to_gettext($_), %$lexicon } );
$Ext->write_po($ARGV[1]);
exit;

sub spacer
{
	my $str = shift;
	my $east = qr/(?!\p{M})(?:\p{Han}|\p{Katakana}|\p{Hiragana})/;
	my $west = qr/(?!\p{M})(?:\p{Latin}|\p{Greek}|\p{Cyrillic}|%|[0-9])/;
	$str = decode 'utf8', $str;
	$str =~ s/($east)($west)/$1 $2/g;
	$str =~ s/($west)($east)/$1 $2/g;
	$str = encode 'utf8', $str;
	return $str;
}

__END__
$ perl normalize-po.pl anope.ja_JP.po messages.po
$ msgmerge --no-wrap messages.po anope.ja_JP.po > messages2.po
$ msgfmt --statistics -c -v -o /dev/null messages2.po
$ cp messages2.po anope.ja_JP.po
$ git commit -a
