
package Paws::Neptunedata::ExecuteFastResetOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::FastResetToken', traits => ['NameInRequest'], request_name => 'payload');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ExecuteFastResetOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::Neptunedata::FastResetToken>

The C<payload> is only returned by the C<initiateDatabaseReset> action,
and contains the unique token to use with the C<performDatabaseReset>
action to make the reset occur.


=head2 B<REQUIRED> Status => Str

The C<status> is only returned for the C<performDatabaseReset> action,
and indicates whether or not the fast reset rquest is accepted.


=head2 _request_id => Str


=cut

