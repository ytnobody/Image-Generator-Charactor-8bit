use strict;
use Test::More;
use Image::Generator::Charactor::8bit;
use Digest::SHA1 'sha1_hex';

my $img = Image::Generator::Charactor::8bit->load_parts('Humanoid');
isa_ok $img, 'Imager';

my $data;
$img->write(data => \$data, type => 'png');
is sha1_hex($data), '5f5758b1688200a809c61ae5545ceef0bc21938e';

done_testing;
