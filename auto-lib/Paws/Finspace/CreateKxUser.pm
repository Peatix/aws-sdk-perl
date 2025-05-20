
package Paws::Finspace::CreateKxUser;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UserName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxUser - Arguments for method CreateKxUser on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxUser on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxUser.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxUserResponse = $finspace->CreateKxUser(
      EnvironmentId => 'MyIdType',
      IamRole       => 'MyRoleArn',
      UserName      => 'MyKxUserNameString',
      ClientToken   => 'MyClientToken',        # OPTIONAL
      Tags          => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $EnvironmentId = $CreateKxUserResponse->EnvironmentId;
    my $IamRole       = $CreateKxUserResponse->IamRole;
    my $UserArn       = $CreateKxUserResponse->UserArn;
    my $UserName      = $CreateKxUserResponse->UserName;

    # Returns a L<Paws::Finspace::CreateKxUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxUser>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment where you want to create a
user.



=head2 B<REQUIRED> IamRole => Str

The IAM role ARN that will be associated with the user.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the user. You can add up to 50 tags
to a user.



=head2 B<REQUIRED> UserName => Str

A unique identifier for the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxUser in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

