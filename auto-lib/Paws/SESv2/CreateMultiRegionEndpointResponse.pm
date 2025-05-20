
package Paws::SESv2::CreateMultiRegionEndpointResponse;
  use Moose;
  has EndpointId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::CreateMultiRegionEndpointResponse

=head1 ATTRIBUTES


=head2 EndpointId => Str

The ID of the multi-region endpoint (global-endpoint).


=head2 Status => Str

A status of the multi-region endpoint (global-endpoint) right after the
create request.

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

