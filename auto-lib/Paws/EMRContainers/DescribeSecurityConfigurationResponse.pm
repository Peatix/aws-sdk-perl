
package Paws::EMRContainers::DescribeSecurityConfigurationResponse;
  use Moose;
  has SecurityConfiguration => (is => 'ro', isa => 'Paws::EMRContainers::SecurityConfiguration', traits => ['NameInRequest'], request_name => 'securityConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 SecurityConfiguration => L<Paws::EMRContainers::SecurityConfiguration>

Details of the security configuration.


=head2 _request_id => Str


=cut

