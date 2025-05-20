
package Paws::Batch::ListJobsByConsumableResource;
  use Moose;
  has ConsumableResource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'consumableResource', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Batch::KeyValuesPair]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobsByConsumableResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/listjobsbyconsumableresource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListJobsByConsumableResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListJobsByConsumableResource - Arguments for method ListJobsByConsumableResource on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobsByConsumableResource on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListJobsByConsumableResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobsByConsumableResource.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $ListJobsByConsumableResourceResponse =
      $batch->ListJobsByConsumableResource(
      ConsumableResource => 'MyString',
      Filters            => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $Jobs      = $ListJobsByConsumableResourceResponse->Jobs;
    my $NextToken = $ListJobsByConsumableResourceResponse->NextToken;

    # Returns a L<Paws::Batch::ListJobsByConsumableResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListJobsByConsumableResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConsumableResource => Str

The name or ARN of the consumable resource.



=head2 Filters => ArrayRef[L<Paws::Batch::KeyValuesPair>]

The filters to apply to the job list query. If used, only those jobs
requiring the specified consumable resource (C<consumableResource>) and
that match the value of the filters are listed. The filter names and
values can be:

=over

=item *

name: C<JOB_STATUS>

values: C<SUBMITTED | PENDING | RUNNABLE | STARTING | RUNNING |
SUCCEEDED | FAILED>

=item *

name: C<JOB_NAME>

The values are case-insensitive matches for the job name. If a filter
value ends with an asterisk (*), it matches any job name that begins
with the string before the '*'.

=back




=head2 MaxResults => Int

The maximum number of results returned by
C<ListJobsByConsumableResource> in paginated output. When this
parameter is used, C<ListJobsByConsumableResource> only returns
C<maxResults> results in a single page and a C<nextToken> response
element. The remaining results of the initial request can be seen by
sending another C<ListJobsByConsumableResource> request with the
returned C<nextToken> value. This value can be between 1 and 100. If
this parameter isn't used, then C<ListJobsByConsumableResource> returns
up to 100 results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListJobsByConsumableResource> request where C<maxResults> was used
and the results exceeded the value of that parameter. Pagination
continues from the end of the previous results that returned the
C<nextToken> value. This value is C<null> when there are no more
results to return.

Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobsByConsumableResource in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

