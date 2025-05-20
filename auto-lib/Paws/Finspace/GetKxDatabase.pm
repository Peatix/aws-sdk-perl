
package Paws::Finspace::GetKxDatabase;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxDatabase');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxDatabaseResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxDatabase - Arguments for method GetKxDatabase on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxDatabase on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxDatabase.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxDatabaseResponse = $finspace->GetKxDatabase(
      DatabaseName  => 'MyDatabaseName',
      EnvironmentId => 'MyEnvironmentId',

    );

    # Results:
    my $CreatedTimestamp = $GetKxDatabaseResponse->CreatedTimestamp;
    my $DatabaseArn      = $GetKxDatabaseResponse->DatabaseArn;
    my $DatabaseName     = $GetKxDatabaseResponse->DatabaseName;
    my $Description      = $GetKxDatabaseResponse->Description;
    my $EnvironmentId    = $GetKxDatabaseResponse->EnvironmentId;
    my $LastCompletedChangesetId =
      $GetKxDatabaseResponse->LastCompletedChangesetId;
    my $LastModifiedTimestamp = $GetKxDatabaseResponse->LastModifiedTimestamp;
    my $NumBytes              = $GetKxDatabaseResponse->NumBytes;
    my $NumChangesets         = $GetKxDatabaseResponse->NumChangesets;
    my $NumFiles              = $GetKxDatabaseResponse->NumFiles;

    # Returns a L<Paws::Finspace::GetKxDatabaseResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

The name of the kdb database.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxDatabase in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

