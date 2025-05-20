
package Paws::Inspector2::GetConfigurationResponse;
  use Moose;
  has Ec2Configuration => (is => 'ro', isa => 'Paws::Inspector2::Ec2ConfigurationState', traits => ['NameInRequest'], request_name => 'ec2Configuration');
  has EcrConfiguration => (is => 'ro', isa => 'Paws::Inspector2::EcrConfigurationState', traits => ['NameInRequest'], request_name => 'ecrConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetConfigurationResponse

=head1 ATTRIBUTES


=head2 Ec2Configuration => L<Paws::Inspector2::Ec2ConfigurationState>

Specifies how the Amazon EC2 automated scan mode is currently
configured for your environment.


=head2 EcrConfiguration => L<Paws::Inspector2::EcrConfigurationState>

Specifies how the ECR automated re-scan duration is currently
configured for your environment.


=head2 _request_id => Str


=cut

