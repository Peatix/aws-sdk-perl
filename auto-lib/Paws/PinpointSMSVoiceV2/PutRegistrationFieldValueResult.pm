
package Paws::PinpointSMSVoiceV2::PutRegistrationFieldValueResult;
  use Moose;
  has FieldPath => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationArn => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has SelectChoices => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TextValue => (is => 'ro', isa => 'Str');
  has VersionNumber => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutRegistrationFieldValueResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldPath => Str

The path to the registration form field. You can use
DescribeRegistrationFieldDefinitions for a list of B<FieldPaths>.


=head2 B<REQUIRED> RegistrationArn => Str

The Amazon Resource Name (ARN) for the registration.


=head2 RegistrationAttachmentId => Str

The unique identifier for the registration attachment.


=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.


=head2 SelectChoices => ArrayRef[Str|Undef]

An array of values for the form field.


=head2 TextValue => Str

The text data for a free form field.


=head2 B<REQUIRED> VersionNumber => Int

The version number of the registration.


=head2 _request_id => Str


=cut

1;