
package Paws::QConnect::CreateMessageTemplateVersionResponse;
  use Moose;
  has MessageTemplate => (is => 'ro', isa => 'Paws::QConnect::ExtendedMessageTemplateData', traits => ['NameInRequest'], request_name => 'messageTemplate');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::CreateMessageTemplateVersionResponse

=head1 ATTRIBUTES


=head2 MessageTemplate => L<Paws::QConnect::ExtendedMessageTemplateData>

The message template.


=head2 _request_id => Str


=cut

