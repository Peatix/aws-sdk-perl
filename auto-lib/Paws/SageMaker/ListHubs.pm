
package Paws::SageMaker::ListHubs;
  use Moose;
  has CreationTimeAfter => (is => 'ro', isa => 'Str');
  has CreationTimeBefore => (is => 'ro', isa => 'Str');
  has LastModifiedTimeAfter => (is => 'ro', isa => 'Str');
  has LastModifiedTimeBefore => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NameContains => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHubs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListHubsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListHubs - Arguments for method ListHubs on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHubs on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListHubs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHubs.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListHubsResponse = $api . sagemaker->ListHubs(
      CreationTimeAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreationTimeBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      LastModifiedTimeBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults             => 1,                        # OPTIONAL
      NameContains           => 'MyNameContains',         # OPTIONAL
      NextToken              => 'MyNextToken',            # OPTIONAL
      SortBy                 => 'HubName',                # OPTIONAL
      SortOrder              => 'Ascending',              # OPTIONAL
    );

    # Results:
    my $HubSummaries = $ListHubsResponse->HubSummaries;
    my $NextToken    = $ListHubsResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListHubsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListHubs>

=head1 ATTRIBUTES


=head2 CreationTimeAfter => Str

Only list hubs that were created after the time specified.



=head2 CreationTimeBefore => Str

Only list hubs that were created before the time specified.



=head2 LastModifiedTimeAfter => Str

Only list hubs that were last modified after the time specified.



=head2 LastModifiedTimeBefore => Str

Only list hubs that were last modified before the time specified.



=head2 MaxResults => Int

The maximum number of hubs to list.



=head2 NameContains => Str

Only list hubs with names that contain the specified string.



=head2 NextToken => Str

If the response to a previous C<ListHubs> request was truncated, the
response includes a C<NextToken>. To retrieve the next set of hubs, use
the token in the next request.



=head2 SortBy => Str

Sort hubs by either name or creation time.

Valid values are: C<"HubName">, C<"CreationTime">, C<"HubStatus">, C<"AccountIdOwner">

=head2 SortOrder => Str

Sort hubs by ascending or descending order.

Valid values are: C<"Ascending">, C<"Descending">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHubs in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

