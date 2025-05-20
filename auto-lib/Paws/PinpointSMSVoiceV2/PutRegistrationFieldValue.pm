
package Paws::PinpointSMSVoiceV2::PutRegistrationFieldValue;
  use Moose;
  has FieldPath => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationAttachmentId => (is => 'ro', isa => 'Str');
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);
  has SelectChoices => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TextValue => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutRegistrationFieldValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::PutRegistrationFieldValueResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::PutRegistrationFieldValue - Arguments for method PutRegistrationFieldValue on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutRegistrationFieldValue on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method PutRegistrationFieldValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutRegistrationFieldValue.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $PutRegistrationFieldValueResult =
      $sms -voice->PutRegistrationFieldValue(
      FieldPath                => 'MyFieldPath',
      RegistrationId           => 'MyRegistrationIdOrArn',
      RegistrationAttachmentId => 'MyRegistrationAttachmentIdOrArn',  # OPTIONAL
      SelectChoices            => [
        'MySelectChoice', ...    # min: 1, max: 256
      ],    # OPTIONAL
      TextValue => 'MyTextValue',    # OPTIONAL
      );

    # Results:
    my $FieldPath       = $PutRegistrationFieldValueResult->FieldPath;
    my $RegistrationArn = $PutRegistrationFieldValueResult->RegistrationArn;
    my $RegistrationAttachmentId =
      $PutRegistrationFieldValueResult->RegistrationAttachmentId;
    my $RegistrationId = $PutRegistrationFieldValueResult->RegistrationId;
    my $SelectChoices  = $PutRegistrationFieldValueResult->SelectChoices;
    my $TextValue      = $PutRegistrationFieldValueResult->TextValue;
    my $VersionNumber  = $PutRegistrationFieldValueResult->VersionNumber;

# Returns a L<Paws::PinpointSMSVoiceV2::PutRegistrationFieldValueResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/PutRegistrationFieldValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldPath => Str

The path to the registration form field. You can use
DescribeRegistrationFieldDefinitions for a list of B<FieldPaths>.



=head2 RegistrationAttachmentId => Str

The unique identifier for the registration attachment.



=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.



=head2 SelectChoices => ArrayRef[Str|Undef]

An array of values for the form field.



=head2 TextValue => Str

The text data for a free form field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutRegistrationFieldValue in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

