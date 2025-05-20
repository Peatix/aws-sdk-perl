
package Paws::EMRContainers::CreateSecurityConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN (Amazon Resource Name) of the security configuration.


=head2 Id => Str

The ID of the security configuration.


=head2 Name => Str

The name of the security configuration.


=head2 _request_id => Str


=cut

