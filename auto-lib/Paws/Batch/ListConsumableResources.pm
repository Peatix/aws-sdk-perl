
package Paws::Batch::ListConsumableResources;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuesPair]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConsumableResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/listconsumableresources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListConsumableResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListConsumableResources - Arguments for method ListConsumableResources on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConsumableResources on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListConsumableResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConsumableResources.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $ListConsumableResourcesResponse = $batch->ListConsumableResources(
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ConsumableResources =
      $ListConsumableResourcesResponse->ConsumableResources;
    my $NextToken = $ListConsumableResourcesResponse->NextToken;

    # Returns a L<Paws::Batch::ListConsumableResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListConsumableResources>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Batch::KeyValuesPair>]

The filters to apply to the consumable resource list query. If used,
only those consumable resources that match the filter are listed.
Filter names and values can be:

=over

=item *

name: C<CONSUMABLE_RESOURCE_NAME>

values: case-insensitive matches for the consumable resource name. If a
filter value ends with an asterisk (*), it matches any consumable
resource name that begins with the string before the '*'.

=back




=head2 MaxResults => Int

The maximum number of results returned by C<ListConsumableResources> in
paginated output. When this parameter is used,
C<ListConsumableResources> only returns C<maxResults> results in a
single page and a C<nextToken> response element. The remaining results
of the initial request can be seen by sending another
C<ListConsumableResources> request with the returned C<nextToken>
value. This value can be between 1 and 100. If this parameter isn't
used, then C<ListConsumableResources> returns up to 100 results and a
C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListConsumableResources> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return.

Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConsumableResources in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

