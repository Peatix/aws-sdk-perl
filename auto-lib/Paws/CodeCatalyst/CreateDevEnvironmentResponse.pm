
package Paws::CodeCatalyst::CreateDevEnvironmentResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);
  has VpcConnectionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcConnectionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::CreateDevEnvironmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The system-generated unique ID of the Dev Environment.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 VpcConnectionName => Str

The name of the connection used to connect to Amazon VPC used when the
Dev Environment was created, if any.


=head2 _request_id => Str


=cut

