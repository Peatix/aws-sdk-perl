
package Paws::Config::ListResourceEvaluationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceEvaluations => (is => 'ro', isa => 'ArrayRef[Paws::Config::ResourceEvaluation]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::ListResourceEvaluationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 ResourceEvaluations => ArrayRef[L<Paws::Config::ResourceEvaluation>]

Returns a C<ResourceEvaluations> object.


=head2 _request_id => Str


=cut

1;