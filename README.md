# NAME

Image::Generator::Charactor::8bit - 8bit Charactor Image Generator

# SYNOPSIS

If you want to generate an image of humanoid character,

    use Image::Generator::Charactor::8bit;
    my $human = Image::Generator::Charactor::8bit->load_parts('Humanoid');
    $human->write(file => '/tmp/human.png');

and, If you want to generate another image of humanoid that has green skin,

    use Imager;
    use Image::Generator::Charactor::8bit;
    my $nameck = Image::Generator::Charactor::8bit->load_parts('Humanoid', Imager::Color->new(105, 210, 92));
    $nameck->write(file => '/tmp/nameck.png');

# DESCRIPTION

Image::Generator::Charactor::8bit is retro-futurism charactor image generator.

# LICENSE

Copyright (C) ytnobody.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

ytnobody <ytnobody@gmail.com>
