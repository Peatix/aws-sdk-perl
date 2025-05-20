
package Paws::Notifications::ListEventRulesResponse;
  use Moose;
  has EventRules => (is => 'ro', isa => 'ArrayRef[Paws::Notifications::EventRuleStructure]', traits => ['NameInRequest'], request_name => 'eventRules', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Notifications::ListEventRulesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventRules => ArrayRef[L<Paws::Notifications::EventRuleStructure>]

A list of C<EventRules>.


=head2 NextToken => Str

A pagination token. If a non-null pagination token is returned in a
result, pass its value in another request to retrieve more entries.


=head2 _request_id => Str


=cut

