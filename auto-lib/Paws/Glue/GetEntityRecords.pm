
package Paws::Glue::GetEntityRecords;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has ConnectionName => (is => 'ro', isa => 'Str');
  has ConnectionOptions => (is => 'ro', isa => 'Paws::Glue::ConnectionOptions');
  has DataStoreApiVersion => (is => 'ro', isa => 'Str');
  has EntityName => (is => 'ro', isa => 'Str', required => 1);
  has FilterPredicate => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has OrderBy => (is => 'ro', isa => 'Str');
  has SelectedFields => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEntityRecords');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetEntityRecordsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetEntityRecords - Arguments for method GetEntityRecords on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEntityRecords on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetEntityRecords.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEntityRecords.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetEntityRecordsResponse = $glue->GetEntityRecords(
      EntityName        => 'MyEntityName',
      Limit             => 1,
      CatalogId         => 'MyCatalogIdString',    # OPTIONAL
      ConnectionName    => 'MyNameString',         # OPTIONAL
      ConnectionOptions => {
        'MyOptionKey' =>
          'MyOptionValue',    # key: min: 1, max: 256, value: min: 1, max: 256
      },    # OPTIONAL
      DataStoreApiVersion => 'MyApiVersion',                  # OPTIONAL
      FilterPredicate     => 'MyFilterPredicate',             # OPTIONAL
      NextToken           => 'MyNextToken',                   # OPTIONAL
      OrderBy             => 'MyString',                      # OPTIONAL
      SelectedFields      => [ 'MyEntityFieldName', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetEntityRecordsResponse->NextToken;
    my $Records   = $GetEntityRecordsResponse->Records;

    # Returns a L<Paws::Glue::GetEntityRecordsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetEntityRecords>

=head1 ATTRIBUTES


=head2 CatalogId => Str

The catalog ID of the catalog that contains the connection. This can be
null, By default, the Amazon Web Services Account ID is the catalog ID.



=head2 ConnectionName => Str

The name of the connection that contains the connection type
credentials.



=head2 ConnectionOptions => L<Paws::Glue::ConnectionOptions>

Connector options that are required to query the data.



=head2 DataStoreApiVersion => Str

The API version of the SaaS connector.



=head2 B<REQUIRED> EntityName => Str

Name of the entity that we want to query the preview data from the
given connection type.



=head2 FilterPredicate => Str

A filter predicate that you can apply in the query request.



=head2 B<REQUIRED> Limit => Int

Limits the number of records fetched with the request.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.



=head2 OrderBy => Str

A parameter that orders the response preview data.



=head2 SelectedFields => ArrayRef[Str|Undef]

List of fields that we want to fetch as part of preview data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEntityRecords in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

