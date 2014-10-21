#
# This file is part of MooseX-Role-AttributeOverride
#
# This software is copyright (c) 2011 by Edward J. Allen III.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
use strict; use warnings;
package MooseX::Role::AttributeOverride::Meta::Trait::Role::ApplicationToClass;
BEGIN {
  $MooseX::Role::AttributeOverride::Meta::Trait::Role::ApplicationToClass::VERSION = '0.0.6';
}
BEGIN {
  $MooseX::Role::AttributeOverride::Meta::Trait::Role::ApplicationToClass::AUTHORITY = 'cpan:EALLENIII';
}
# ABSTRACT: Support Role for L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>
use 5.008;
use utf8;
use Moose::Role;

around apply => sub {
    my ($orig,$self, $role, $class ) = @_;

    if ( $role->can('attribute_modifiers') ) {
        $role->apply_modifiers_to_class($class);
    }

    $self->$orig( $role, $class );
};

no Moose::Role;
1; # Magic true value required at end of module


=pod

=for :stopwords Edward Allen <ealleniii_at_cpan_dot_org> J. III

=encoding utf-8

=head1 NAME

MooseX::Role::AttributeOverride::Meta::Trait::Role::ApplicationToClass - Support Role for L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 VERSION

  This document describes v0.0.6 of MooseX::Role::AttributeOverride::Meta::Trait::Role::ApplicationToClass - released June 09, 2011 as part of MooseX-Role-AttributeOverride.

=head1 SYNOPSIS

See L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 DESCRIPTION

Apply this role to L<Moose::Meta::Role::Application::ToClass|Moose::Meta::Role::Application::ToClass>.

=head1 DIAGNOSTICS

See L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 DEPENDENCIES

See L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 INCOMPATIBILITIES

See L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 BUGS AND LIMITATIONS

See L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<MooseX::Role::AttributeOverride|MooseX::Role::AttributeOverride>

=back

=head1 AUTHOR

Edward Allen <ealleniii_at_cpan_dot_org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Edward J. Allen III.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT
WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER
PARTIES PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
PURPOSE. THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE
SOFTWARE IS WITH YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME
THE COST OF ALL NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE LIABLE
TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE THE
SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
DAMAGES.

=cut


__END__

