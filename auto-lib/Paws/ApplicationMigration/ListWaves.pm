
package Paws::ApplicationMigration::ListWaves;
  use Moose;
  has AccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountID');
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::ListWavesRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListWaves');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListWaves');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListWavesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListWaves - Arguments for method ListWaves on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListWaves on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListWaves.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListWaves.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListWavesResponse = $mgn->ListWaves(
      AccountID => 'MyAccountID',    # OPTIONAL
      Filters   => {
        IsArchived => 1,             # OPTIONAL
        WaveIDs    => [
          'MyWaveID', ...            # min: 22, max: 22
        ],    # max: 200; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListWavesResponse->Items;
    my $NextToken = $ListWavesResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::ListWavesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListWaves>

=head1 ATTRIBUTES


=head2 AccountID => Str

Request account ID.



=head2 Filters => L<Paws::ApplicationMigration::ListWavesRequestFilters>

Waves list filters.



=head2 MaxResults => Int

Maximum results to return when listing waves.



=head2 NextToken => Str

Request next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListWaves in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

