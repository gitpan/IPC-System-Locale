package IPC::System::Locale;

our $DATE = '2015-01-04'; # DATE
our $VERSION = '0.01'; # VERSION

use 5.010001;
use strict;
use warnings;

use IPC::System::Options ();

use Exporter qw(import);
our @EXPORT_OK = qw(system);

sub system {
    my $opts = ref($_[0]) eq 'HASH' ? shift : {};

    IPC::System::Options::system({
        lang => 'C', # default
        %$opts,
    }, @_);
}

1;
# ABSTRACT: Set language before executing system()

__END__

=pod

=encoding UTF-8

=head1 NAME

IPC::System::Locale - Set language before executing system()

=head1 VERSION

This document describes version 0.01 of IPC::System::Locale (from Perl distribution IPC-System-Locale), released on 2015-01-04.

=head1 SYNOPSIS

 use IPC::System::Locale qw(system);

 # set locale to C
 system(...);

 # set locale explicitly
 system({lang=>"id_ID"} ...);

=head1 DESCRIPTION

=head1 FUNCTIONS

=head2 system([ \%opts ], @args)

This is a shortcut for C<<IPC::System::Options::system({lang=>"C"}, ...)>> (you
can also set C<lang> or other options explicitly).

This routine might be helpful if you are checking the output of some program and
want to make sure that the output is in English/C locale.

=head1 HOMEPAGE

Please visit the project's homepage at L<https://metacpan.org/release/IPC-System-Locale>.

=head1 SOURCE

Source repository is at L<https://github.com/perlancar/perl-IPC-System-Locale>.

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website L<https://rt.cpan.org/Public/Dist/Display.html?Name=IPC-System-Locale>

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

perlancar <perlancar@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by perlancar@cpan.org.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
