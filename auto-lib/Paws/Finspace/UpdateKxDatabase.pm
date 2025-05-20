
package Paws::Finspace::UpdateKxDatabase;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxDatabase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxDatabaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxDatabase - Arguments for method UpdateKxDatabase on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxDatabase on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxDatabase.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxDatabaseResponse = $finspace->UpdateKxDatabase(
      ClientToken   => 'MyClientTokenString',
      DatabaseName  => 'MyDatabaseName',
      EnvironmentId => 'MyEnvironmentId',
      Description   => 'MyDescription',         # OPTIONAL
    );

    # Results:
    my $DatabaseName  = $UpdateKxDatabaseResponse->DatabaseName;
    my $Description   = $UpdateKxDatabaseResponse->Description;
    my $EnvironmentId = $UpdateKxDatabaseResponse->EnvironmentId;
    my $LastModifiedTimestamp =
      $UpdateKxDatabaseResponse->LastModifiedTimestamp;

    # Returns a L<Paws::Finspace::UpdateKxDatabaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatabaseName => Str

The name of the kdb database.



=head2 Description => Str

A description of the database.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxDatabase in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

