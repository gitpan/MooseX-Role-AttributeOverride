package MyApp::Role;
use Moose::Role;
use MooseX::Role::AttributeOverride;

has_plus 'fun' => ( builder => '_build_fun' );

sub _build_fun {
    return 'yep';
}

no Moose::Role;

package MyApp;
use Moose;

has 'fun' => (
    is  => 'rw',
    isa => 'Str'
);

with qw(MyApp::Role);

__PACKAGE__->meta->make_immutable;
no Moose;

package main;

#use MyApp;

use Test::More tests => 1;    # last test to print

my $test = MyApp->new();

is( $test->fun, 'yep', "Default was set by role" );

