
package Paws::QConnect::UpdateMessageTemplateResponse;
  use Moose;
  has MessageTemplate => (is => 'ro', isa => 'Paws::QConnect::MessageTemplateData', traits => ['NameInRequest'], request_name => 'messageTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateMessageTemplateResponse

=head1 ATTRIBUTES


=head2 MessageTemplate => L<Paws::QConnect::MessageTemplateData>

The message template.


=head2 _request_id => Str


=cut

