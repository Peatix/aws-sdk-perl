
package Paws::Finspace::GetKxUser;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has UserName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/users/{userName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxUser - Arguments for method GetKxUser on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxUser on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxUser.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxUserResponse = $finspace->GetKxUser(
      EnvironmentId => 'MyIdType',
      UserName      => 'MyKxUserNameString',

    );

    # Results:
    my $EnvironmentId = $GetKxUserResponse->EnvironmentId;
    my $IamRole       = $GetKxUserResponse->IamRole;
    my $UserArn       = $GetKxUserResponse->UserArn;
    my $UserName      = $GetKxUserResponse->UserName;

    # Returns a L<Paws::Finspace::GetKxUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 B<REQUIRED> UserName => Str

A unique identifier for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxUser in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

