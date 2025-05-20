
package Paws::WorkSpacesWeb::CreatePortalResponse;
  use Moose;
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);
  has PortalEndpoint => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalEndpoint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreatePortalResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 B<REQUIRED> PortalEndpoint => Str

The endpoint URL of the web portal that users access in order to start
streaming sessions.


=head2 _request_id => Str


=cut

