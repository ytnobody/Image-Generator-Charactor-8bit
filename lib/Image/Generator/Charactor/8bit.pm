package Image::Generator::Charactor::8bit;
use 5.008005;
use strict;
use warnings;

our $VERSION = "0.01";

use Imager;
use Class::Load ':all';

sub image_from_pixel {
    my ($class, $pixels, $color) = @_;
    $color ||= Imager::Color->new(0, 0, 0);
    my $image = Imager->new(xsize => 16, ysize => 16, channels => 4);
    my @px_array = split(/\n/, $pixels);
    for my $y (0 .. 15) {
        for my $x (0 .. 15) {
            my $bit = substr($px_array[$y], $x, 1);
            if ($bit eq '*') {
                printf "%sx%s\n", $x, $y;
                $image->setpixel(x => $x, y => $y, color => $color);
            }
        }
    }
    return $image;
}

sub load_parts {
    my ($class, $parts, $color) = @_;
    my $parts_class = $class. '::Parts::'. $parts;
    load_class($parts_class) unless is_class_loaded($parts_class);
    $color ||= Imager::Color->new($parts_class->default_color);
    $class->image_from_pixel( $parts_class->pixel, $color );
}

1;
__END__

=encoding utf-8

=head1 NAME

Image::Generator::Charactor::8bit - 8bit Charactor Image Generator

=head1 SYNOPSIS

If you want to generate an image of humanoid character,

    use Image::Generator::Charactor::8bit;
    my $human = Image::Generator::Charactor::8bit->load_parts('Humanoid');
    $human->write(file => '/tmp/human.png');

and, If you want to generate another image of humanoid that has green skin,

    use Imager;
    use Image::Generator::Charactor::8bit;
    my $nameck = Image::Generator::Charactor::8bit->load_parts('Humanoid', Imager::Color->new(105, 210, 92));
    $nameck->write(file => '/tmp/nameck.png');

=head1 DESCRIPTION

Image::Generator::Charactor::8bit is retro-futurism charactor image generator.

=head1 LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

ytnobody E<lt>ytnobody@gmail.comE<gt>

=cut

