
package Paws::ApplicationMigration::ListConnectors;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::ListConnectorsRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListConnectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListConnectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListConnectors - Arguments for method ListConnectors on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectors on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectors.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListConnectorsResponse = $mgn->ListConnectors(
      Filters => {
        ConnectorIDs => [
          'MyConnectorID', ...    # min: 27, max: 27
        ],    # max: 20; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListConnectorsResponse->Items;
    my $NextToken = $ListConnectorsResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::ListConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListConnectors>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ApplicationMigration::ListConnectorsRequestFilters>

List Connectors Request filters.



=head2 MaxResults => Int

List Connectors Request max results.



=head2 NextToken => Str

List Connectors Request next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectors in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

