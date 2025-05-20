
package Paws::SESv2::GetMultiRegionEndpointResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EndpointId => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Route]');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetMultiRegionEndpointResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time stamp of when the multi-region endpoint (global-endpoint) was
created.


=head2 EndpointId => Str

The ID of the multi-region endpoint (global-endpoint).


=head2 EndpointName => Str

The name of the multi-region endpoint (global-endpoint).


=head2 LastUpdatedTimestamp => Str

The time stamp of when the multi-region endpoint (global-endpoint) was
last updated.


=head2 Routes => ArrayRef[L<Paws::SESv2::Route>]

Contains routes information for the multi-region endpoint
(global-endpoint).


=head2 Status => Str

The status of the multi-region endpoint (global-endpoint).

=over

=item *

C<CREATING> E<ndash> The resource is being provisioned.

=item *

C<READY> E<ndash> The resource is ready to use.

=item *

C<FAILED> E<ndash> The resource failed to be provisioned.

=item *

C<DELETING> E<ndash> The resource is being deleted as requested.

=back


Valid values are: C<"CREATING">, C<"READY">, C<"FAILED">, C<"DELETING">
=head2 _request_id => Str


=cut

