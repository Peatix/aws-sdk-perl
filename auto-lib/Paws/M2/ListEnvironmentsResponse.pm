
package Paws::M2::ListEnvironmentsResponse;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::M2::EnvironmentSummary]', traits => ['NameInRequest'], request_name => 'environments', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListEnvironmentsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Environments => ArrayRef[L<Paws::M2::EnvironmentSummary>]

Returns a list of summary details for all the runtime environments in
your account.


=head2 NextToken => Str

A pagination token that's returned when the response doesn't contain
all the runtime environments.


=head2 _request_id => Str


=cut

