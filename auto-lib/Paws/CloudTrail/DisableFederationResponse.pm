
package Paws::CloudTrail::DisableFederationResponse;
  use Moose;
  has EventDataStoreArn => (is => 'ro', isa => 'Str');
  has FederationStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DisableFederationResponse

=head1 ATTRIBUTES


=head2 EventDataStoreArn => Str

The ARN of the event data store for which you disabled Lake query
federation.


=head2 FederationStatus => Str

The federation status.

Valid values are: C<"ENABLING">, C<"ENABLED">, C<"DISABLING">, C<"DISABLED">
=head2 _request_id => Str


=cut

1;