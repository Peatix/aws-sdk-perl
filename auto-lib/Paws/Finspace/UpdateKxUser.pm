
package Paws::Finspace::UpdateKxUser;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole', required => 1);
  has UserName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/users/{userName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxUser - Arguments for method UpdateKxUser on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxUser on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxUser.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxUserResponse = $finspace->UpdateKxUser(
      EnvironmentId => 'MyIdType',
      IamRole       => 'MyRoleArn',
      UserName      => 'MyKxUserNameString',
      ClientToken   => 'MyClientToken',        # OPTIONAL
    );

    # Results:
    my $EnvironmentId = $UpdateKxUserResponse->EnvironmentId;
    my $IamRole       = $UpdateKxUserResponse->IamRole;
    my $UserArn       = $UpdateKxUserResponse->UserArn;
    my $UserName      = $UpdateKxUserResponse->UserName;

    # Returns a L<Paws::Finspace::UpdateKxUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxUser>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 B<REQUIRED> IamRole => Str

The IAM role ARN that is associated with the user.



=head2 B<REQUIRED> UserName => Str

A unique identifier for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxUser in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

