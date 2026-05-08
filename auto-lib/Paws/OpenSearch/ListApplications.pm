
package Paws::OpenSearch::ListApplications;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Statuses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'statuses');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/list-applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListApplicationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListApplications - Arguments for method ListApplications on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListApplicationsResponse = $es->ListApplications(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      Statuses   => [
        'CREATING', ...   # values: CREATING, UPDATING, DELETING, ACTIVE, FAILED
      ],    # OPTIONAL
    );

    # Results:
    my $ApplicationSummaries = $ListApplicationsResponse->ApplicationSummaries;
    my $NextToken            = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::OpenSearch::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 Statuses => ArrayRef[Str|Undef]

Filters the list of OpenSearch applications by status. Possible values:
C<CREATING>, C<UPDATING>, C<DELETING>, C<FAILED>, C<ACTIVE>, and
C<DELETED>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

