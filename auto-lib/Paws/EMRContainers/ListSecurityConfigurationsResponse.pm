
package Paws::EMRContainers::ListSecurityConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SecurityConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::EMRContainers::SecurityConfiguration]', traits => ['NameInRequest'], request_name => 'securityConfigurations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListSecurityConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of security configurations to return.


=head2 SecurityConfigurations => ArrayRef[L<Paws::EMRContainers::SecurityConfiguration>]

The list of returned security configurations.


=head2 _request_id => Str


=cut

