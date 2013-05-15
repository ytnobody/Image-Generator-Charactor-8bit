#!/usr/bin/env perl

use strict;
use warnings;
use File::Spec;
use File::Basename 'dirname';
use lib File::Spec->catfile(dirname(__FILE__), '..', 'lib');

use Imager;
use Image::Generator::Charactor::8bit;

my $human = Image::Generator::Charactor::8bit->load_parts('Humanoid');
my $nameck = Image::Generator::Charactor::8bit->load_parts('Humanoid', Imager::Color->new(105, 210, 92));

$human->write(file => '/tmp/human.png');
$nameck->write(file => '/tmp/nameck.png');
