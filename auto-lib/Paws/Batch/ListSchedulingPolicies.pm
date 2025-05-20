
package Paws::Batch::ListSchedulingPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchedulingPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/listschedulingpolicies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::ListSchedulingPoliciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ListSchedulingPolicies - Arguments for method ListSchedulingPolicies on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchedulingPolicies on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method ListSchedulingPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchedulingPolicies.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
    my $ListSchedulingPoliciesResponse = $batch->ListSchedulingPolicies(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSchedulingPoliciesResponse->NextToken;
    my $SchedulingPolicies =
      $ListSchedulingPoliciesResponse->SchedulingPolicies;

    # Returns a L<Paws::Batch::ListSchedulingPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/ListSchedulingPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that's returned by
C<ListSchedulingPolicies> in paginated output. When this parameter is
used, C<ListSchedulingPolicies> only returns C<maxResults> results in a
single page and a C<nextToken> response element. You can see the
remaining results of the initial request by sending another
C<ListSchedulingPolicies> request with the returned C<nextToken> value.
This value can be between 1 and 100. If this parameter isn't used,
C<ListSchedulingPolicies> returns up to 100 results and a C<nextToken>
value if applicable.



=head2 NextToken => Str

The C<nextToken> value that's returned from a previous paginated
C<ListSchedulingPolicies> request where C<maxResults> was used and the
results exceeded the value of that parameter. Pagination continues from
the end of the previous results that returned the C<nextToken> value.
This value is C<null> when there are no more results to return.

Treat this token as an opaque identifier that's only used to retrieve
the next items in a list and not for other programmatic purposes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchedulingPolicies in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

