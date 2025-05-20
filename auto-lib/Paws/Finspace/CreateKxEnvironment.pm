
package Paws::Finspace::CreateKxEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Finspace::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKxEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::CreateKxEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::CreateKxEnvironment - Arguments for method CreateKxEnvironment on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKxEnvironment on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method CreateKxEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKxEnvironment.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $CreateKxEnvironmentResponse = $finspace->CreateKxEnvironment(
      KmsKeyId    => 'MyKmsKeyARN',
      Name        => 'MyKxEnvironmentName',
      ClientToken => 'MyClientToken',         # OPTIONAL
      Description => 'MyDescription',         # OPTIONAL
      Tags        => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CreationTimestamp = $CreateKxEnvironmentResponse->CreationTimestamp;
    my $Description       = $CreateKxEnvironmentResponse->Description;
    my $EnvironmentArn    = $CreateKxEnvironmentResponse->EnvironmentArn;
    my $EnvironmentId     = $CreateKxEnvironmentResponse->EnvironmentId;
    my $KmsKeyId          = $CreateKxEnvironmentResponse->KmsKeyId;
    my $Name              = $CreateKxEnvironmentResponse->Name;
    my $Status            = $CreateKxEnvironmentResponse->Status;

    # Returns a L<Paws::Finspace::CreateKxEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/CreateKxEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 Description => Str

A description for the kdb environment.



=head2 B<REQUIRED> KmsKeyId => Str

The KMS key ID to encrypt your data in the FinSpace environment.



=head2 B<REQUIRED> Name => Str

The name of the kdb environment that you want to create.



=head2 Tags => L<Paws::Finspace::TagMap>

A list of key-value pairs to label the kdb environment. You can add up
to 50 tags to your kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKxEnvironment in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

