
package Paws::Account::GetRegionOptStatusResponse;
  use Moose;
  has RegionName => (is => 'ro', isa => 'Str');
  has RegionOptStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetRegionOptStatusResponse

=head1 ATTRIBUTES


=head2 RegionName => Str

The Region code that was passed in.


=head2 RegionOptStatus => Str

One of the potential statuses a Region can undergo (Enabled, Enabling,
Disabled, Disabling, Enabled_By_Default).

Valid values are: C<"ENABLED">, C<"ENABLING">, C<"DISABLING">, C<"DISABLED">, C<"ENABLED_BY_DEFAULT">
=head2 _request_id => Str


=cut

