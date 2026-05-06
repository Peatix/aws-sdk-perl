
package Paws::CloudWatchEvents::ListEndpoints;
  use Moose;
  has HomeRegion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NamePrefix => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchEvents::ListEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::ListEndpoints - Arguments for method ListEndpoints on L<Paws::CloudWatchEvents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEndpoints on the
L<Amazon EventBridge|Paws::CloudWatchEvents> service. Use the attributes of this class
as arguments to method ListEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEndpoints.

=head1 SYNOPSIS

    my $events = Paws->service('CloudWatchEvents');
    my $ListEndpointsResponse = $events->ListEndpoints(
      HomeRegion => 'MyHomeRegion',      # OPTIONAL
      MaxResults => 1,                   # OPTIONAL
      NamePrefix => 'MyEndpointName',    # OPTIONAL
      NextToken  => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $Endpoints = $ListEndpointsResponse->Endpoints;
    my $NextToken = $ListEndpointsResponse->NextToken;

    # Returns a L<Paws::CloudWatchEvents::ListEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 HomeRegion => Str

The primary Region of the endpoints associated with this account. For
example C<"HomeRegion": "us-east-1">.



=head2 MaxResults => Int

The maximum number of results returned by the call.



=head2 NamePrefix => Str

A value that will return a subset of the endpoints associated with this
account. For example, C<"NamePrefix": "ABC"> will return all endpoints
with "ABC" in the name.



=head2 NextToken => Str

The token returned by a previous call, which you can use to retrieve
the next set of results.

The value of C<nextToken> is a unique pagination token for each page.
To retrieve the next page of results, make the call again using the
returned token. Keep all other arguments unchanged.

Using an expired pagination token results in an C<HTTP 400
InvalidToken> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEndpoints in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

