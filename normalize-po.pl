#!/usr/bin/perl
use warnings;
use strict;
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
	my $_ = $val;
	s/設定する。/設定します。/g;
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
__END__
$ perl normalize-po.pl anope.ja_JP.po messages.po
$ msgmerge --no-wrap messages.po anope.ja_JP.po > messages2.po
$ msgfmt --statistics -c -v -o /dev/null messages2.po
$ cp messages2.po anope.ja_JP.po
$ git commit -a
