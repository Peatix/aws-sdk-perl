
package Paws::DataExchange::GetEventActionResponse;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::DataExchange::Action');
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Event => (is => 'ro', isa => 'Paws::DataExchange::Event');
  has Id => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::GetEventActionResponse

=head1 ATTRIBUTES


=head2 Action => L<Paws::DataExchange::Action>

What occurs after a certain event.


=head2 Arn => Str

The ARN for the event action.


=head2 CreatedAt => Str

The date and time that the event action was created, in ISO 8601
format.


=head2 Event => L<Paws::DataExchange::Event>

What occurs to start an action.


=head2 Id => Str

The unique identifier for the event action.


=head2 UpdatedAt => Str

The date and time that the event action was last updated, in ISO 8601
format.


=head2 _request_id => Str


=cut

