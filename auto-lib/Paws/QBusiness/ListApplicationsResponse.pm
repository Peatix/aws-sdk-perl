
package Paws::QBusiness::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::Application]', traits => ['NameInRequest'], request_name => 'applications');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::QBusiness::Application>]

An array of summary information on the configuration of one or more
Amazon Q Business applications.


=head2 NextToken => Str

If the response is truncated, Amazon Q Business returns this token. You
can use this token in a subsequent request to retrieve the next set of
applications.


=head2 _request_id => Str


=cut

