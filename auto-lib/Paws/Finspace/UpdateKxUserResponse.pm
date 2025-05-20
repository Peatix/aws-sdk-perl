
package Paws::Finspace::UpdateKxUserResponse;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole');
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn');
  has UserName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxUserResponse

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

A unique identifier for the kdb environment.


=head2 IamRole => Str

The IAM role ARN that is associated with the user.


=head2 UserArn => Str

The Amazon Resource Name (ARN) that identifies the user. For more
information about ARNs and how to use ARNs in policies, see IAM
Identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in the I<IAM User Guide>.


=head2 UserName => Str

A unique identifier for the user.


=head2 _request_id => Str


=cut

