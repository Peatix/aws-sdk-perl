
package Paws::DataZone::ListDataSourceRunActivities;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataSourceRunActivities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/data-source-runs/{identifier}/activities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::ListDataSourceRunActivitiesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::ListDataSourceRunActivities - Arguments for method ListDataSourceRunActivities on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataSourceRunActivities on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method ListDataSourceRunActivities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataSourceRunActivities.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $ListDataSourceRunActivitiesOutput =
      $datazone->ListDataSourceRunActivities(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDataSourceRunId',
      MaxResults       => 1,                      # OPTIONAL
      NextToken        => 'MyPaginationToken',    # OPTIONAL
      Status           => 'FAILED',               # OPTIONAL
      );

    # Results:
    my $Items     = $ListDataSourceRunActivitiesOutput->Items;
    my $NextToken = $ListDataSourceRunActivitiesOutput->NextToken;

    # Returns a L<Paws::DataZone::ListDataSourceRunActivitiesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/ListDataSourceRunActivities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which to list data
source run activities.



=head2 B<REQUIRED> Identifier => Str

The identifier of the data source run.



=head2 MaxResults => Int

The maximum number of activities to return in a single call to
C<ListDataSourceRunActivities>. When the number of activities to be
listed is greater than the value of C<MaxResults>, the response
contains a C<NextToken> value that you can use in a subsequent call to
C<ListDataSourceRunActivities> to list the next set of activities.



=head2 NextToken => Str

When the number of activities is greater than the default value for the
C<MaxResults> parameter, or if you explicitly specify a value for
C<MaxResults> that is less than the number of activities, the response
includes a pagination token named C<NextToken>. You can specify this
C<NextToken> value in a subsequent call to
C<ListDataSourceRunActivities> to list the next set of activities.



=head2 Status => Str

The status of the data source run.

Valid values are: C<"FAILED">, C<"PUBLISHING_FAILED">, C<"SUCCEEDED_CREATED">, C<"SUCCEEDED_UPDATED">, C<"SKIPPED_ALREADY_IMPORTED">, C<"SKIPPED_ARCHIVED">, C<"SKIPPED_NO_ACCESS">, C<"UNCHANGED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataSourceRunActivities in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

