
package Paws::QBusiness::ListGroups;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'dataSourceId');
  has IndexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'indexId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has UpdatedEarlierThan => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'updatedEarlierThan', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/indices/{indexId}/groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::ListGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListGroups - Arguments for method ListGroups on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroups on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method ListGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroups.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $ListGroupsResponse = $qbusiness->ListGroups(
      ApplicationId      => 'MyApplicationId',
      IndexId            => 'MyIndexId',
      UpdatedEarlierThan => '1970-01-01T01:00:00',
      DataSourceId       => 'MyDataSourceId',        # OPTIONAL
      MaxResults         => 1,                       # OPTIONAL
      NextToken          => 'MyNextToken',           # OPTIONAL
    );

    # Results:
    my $Items     = $ListGroupsResponse->Items;
    my $NextToken = $ListGroupsResponse->NextToken;

    # Returns a L<Paws::QBusiness::ListGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/ListGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application for getting a list of groups mapped
to users.



=head2 DataSourceId => Str

The identifier of the data source for getting a list of groups mapped
to users.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for getting a list of groups mapped to
users.



=head2 MaxResults => Int

The maximum number of returned groups that are mapped to users.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Q Business returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
groups that are mapped to users.



=head2 B<REQUIRED> UpdatedEarlierThan => Str

The timestamp identifier used for the latest C<PUT> or C<DELETE> action
for mapping users to their groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroups in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

