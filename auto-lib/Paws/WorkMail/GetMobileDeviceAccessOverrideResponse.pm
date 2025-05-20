
package Paws::WorkMail::GetMobileDeviceAccessOverrideResponse;
  use Moose;
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateModified => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str');
  has Effect => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetMobileDeviceAccessOverrideResponse

=head1 ATTRIBUTES


=head2 DateCreated => Str

The date the override was first created.


=head2 DateModified => Str

The date the description was last modified.


=head2 Description => Str

A description of the override.


=head2 DeviceId => Str

The device to which the access override applies.


=head2 Effect => Str

The effect of the override, C<ALLOW> or C<DENY>.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 UserId => Str

The WorkMail user to which the access override applies.


=head2 _request_id => Str


=cut

1;