
package Paws::MigrationHubRefactorSpaces::CreateEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NetworkFabricType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubRefactorSpaces::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubRefactorSpaces::CreateEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::MigrationHubRefactorSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AWS Migration Hub Refactor Spaces|Paws::MigrationHubRefactorSpaces> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $refactor-spaces = Paws->service('MigrationHubRefactorSpaces');
    my $CreateEnvironmentResponse = $refactor -spaces->CreateEnvironment(
      Name              => 'MyEnvironmentName',
      NetworkFabricType => 'TRANSIT_GATEWAY',
      ClientToken       => 'MyClientToken',       # OPTIONAL
      Description       => 'MyDescription',       # OPTIONAL
      Tags              => {
        'MyTagMapKeyString' =>
          'MyTagMapValueString',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateEnvironmentResponse->Arn;
    my $CreatedTime       = $CreateEnvironmentResponse->CreatedTime;
    my $Description       = $CreateEnvironmentResponse->Description;
    my $EnvironmentId     = $CreateEnvironmentResponse->EnvironmentId;
    my $LastUpdatedTime   = $CreateEnvironmentResponse->LastUpdatedTime;
    my $Name              = $CreateEnvironmentResponse->Name;
    my $NetworkFabricType = $CreateEnvironmentResponse->NetworkFabricType;
    my $OwnerAccountId    = $CreateEnvironmentResponse->OwnerAccountId;
    my $State             = $CreateEnvironmentResponse->State;
    my $Tags              = $CreateEnvironmentResponse->Tags;

# Returns a L<Paws::MigrationHubRefactorSpaces::CreateEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/refactor-spaces/CreateEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 Description => Str

The description of the environment.



=head2 B<REQUIRED> Name => Str

The name of the environment.



=head2 B<REQUIRED> NetworkFabricType => Str

The network fabric type of the environment.

Valid values are: C<"TRANSIT_GATEWAY">, C<"NONE">

=head2 Tags => L<Paws::MigrationHubRefactorSpaces::TagMap>

The tags to assign to the environment. A tag is a label that you assign
to an Amazon Web Services resource. Each tag consists of a key-value
pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::MigrationHubRefactorSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

