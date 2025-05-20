
package Paws::Macie2::GetSensitiveDataOccurrencesResponse;
  use Moose;
  has Error => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'error');
  has SensitiveDataOccurrences => (is => 'ro', isa => 'Paws::Macie2::SensitiveDataOccurrences', traits => ['NameInRequest'], request_name => 'sensitiveDataOccurrences');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetSensitiveDataOccurrencesResponse

=head1 ATTRIBUTES


=head2 Error => Str

If an error occurred when Amazon Macie attempted to retrieve
occurrences of sensitive data reported by the finding, a description of
the error that occurred. This value is null if the status (status) of
the request is PROCESSING or SUCCESS.


=head2 SensitiveDataOccurrences => L<Paws::Macie2::SensitiveDataOccurrences>

A map that specifies 1-100 types of sensitive data reported by the
finding and, for each type, 1-10 occurrences of sensitive data.


=head2 Status => Str

The status of the request to retrieve occurrences of sensitive data
reported by the finding. Possible values are:

=over

=item *

ERROR - An error occurred when Amazon Macie attempted to locate,
retrieve, or encrypt the sensitive data. The error value indicates the
nature of the error that occurred.

=item *

PROCESSING - Macie is processing the request.

=item *

SUCCESS - Macie successfully located, retrieved, and encrypted the
sensitive data.

=back


Valid values are: C<"SUCCESS">, C<"PROCESSING">, C<"ERROR">
=head2 _request_id => Str


=cut

