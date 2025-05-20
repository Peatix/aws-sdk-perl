
package Paws::RedshiftServerless::ListUsageLimitsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has UsageLimits => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftServerless::UsageLimit]', traits => ['NameInRequest'], request_name => 'usageLimits' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::ListUsageLimitsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page.


=head2 UsageLimits => ArrayRef[L<Paws::RedshiftServerless::UsageLimit>]

An array of returned usage limit objects.


=head2 _request_id => Str


=cut

1;