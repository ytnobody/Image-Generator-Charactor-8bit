package Image::Generator::Charactor::8bit::PartsFunctions;
use strict;
use warnings;
use Exporter 'import';
our @EXPORT = qw/pixel default_color/;

sub pixel {
    my $class = shift;
    {
        no strict 'refs';
        return ${$class.'::PIXEL'};
    }
}

sub default_color {
    my $class = shift;
    {
        no strict 'refs';
        return @{$class.'::COLOR'};
    }
}

1;
