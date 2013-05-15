use strict;
use Test::More;
use Image::Generator::Charactor::8bit;
use Digest::SHA1 'sha1_hex';

my $img = Image::Generator::Charactor::8bit->load_parts('Humanoid');
my $mohi = Image::Generator::Charactor::8bit->load_parts('Humanoid::Hair::Mohawk');
my $mohikan = Image::Generator::Charactor::8bit->compose($img, $mohi);
my $data;
$mohikan->write(data => \$data, type => 'png');
is sha1_hex($data), '36f256aa5b4e47b566ebdd6c59ef7a2e7fae2814';

done_testing;
