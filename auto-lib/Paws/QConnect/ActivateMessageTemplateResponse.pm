
package Paws::QConnect::ActivateMessageTemplateResponse;
  use Moose;
  has MessageTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageTemplateArn', required => 1);
  has MessageTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'messageTemplateId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionNumber', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ActivateMessageTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageTemplateArn => Str

The Amazon Resource Name (ARN) of the message template.


=head2 B<REQUIRED> MessageTemplateId => Str

The identifier of the message template.


=head2 B<REQUIRED> VersionNumber => Int

The version number of the message template version that is activated.


=head2 _request_id => Str


=cut

