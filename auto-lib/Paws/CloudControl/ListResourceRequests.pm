
package Paws::CloudControl::ListResourceRequests;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceRequestStatusFilter => (is => 'ro', isa => 'Paws::CloudControl::ResourceRequestStatusFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceRequests');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudControl::ListResourceRequestsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::ListResourceRequests - Arguments for method ListResourceRequests on L<Paws::CloudControl>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceRequests on the
L<AWS Cloud Control API|Paws::CloudControl> service. Use the attributes of this class
as arguments to method ListResourceRequests.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceRequests.

=head1 SYNOPSIS

    my $cloudcontrolapi = Paws->service('CloudControl');
    my $ListResourceRequestsOutput = $cloudcontrolapi->ListResourceRequests(
      MaxResults                  => 1,                # OPTIONAL
      NextToken                   => 'MyNextToken',    # OPTIONAL
      ResourceRequestStatusFilter => {
        OperationStatuses => [
          'PENDING',
          ... # values: PENDING, IN_PROGRESS, SUCCESS, FAILED, CANCEL_IN_PROGRESS, CANCEL_COMPLETE
        ],    # OPTIONAL
        Operations => [
          'CREATE', ...    # values: CREATE, DELETE, UPDATE
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourceRequestsOutput->NextToken;
    my $ResourceRequestStatusSummaries =
      $ListResourceRequestsOutput->ResourceRequestStatusSummaries;

    # Returns a L<Paws::CloudControl::ListResourceRequestsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi/ListResourceRequests>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.

The default is C<20>.



=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call this action again and
assign that token to the request object's C<NextToken> parameter. If
there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 ResourceRequestStatusFilter => L<Paws::CloudControl::ResourceRequestStatusFilter>

The filter criteria to apply to the requests returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceRequests in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

