
package Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValue;
  use Moose;
  has FieldPath => (is => 'ro', isa => 'Str', required => 1);
  has RegistrationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRegistrationFieldValue');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValueResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValue - Arguments for method DeleteRegistrationFieldValue on L<Paws::PinpointSMSVoiceV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRegistrationFieldValue on the
L<Amazon Pinpoint SMS Voice V2|Paws::PinpointSMSVoiceV2> service. Use the attributes of this class
as arguments to method DeleteRegistrationFieldValue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRegistrationFieldValue.

=head1 SYNOPSIS

    my $sms-voice = Paws->service('PinpointSMSVoiceV2');
    my $DeleteRegistrationFieldValueResult =
      $sms -voice->DeleteRegistrationFieldValue(
      FieldPath      => 'MyFieldPath',
      RegistrationId => 'MyRegistrationIdOrArn',

      );

    # Results:
    my $FieldPath       = $DeleteRegistrationFieldValueResult->FieldPath;
    my $RegistrationArn = $DeleteRegistrationFieldValueResult->RegistrationArn;
    my $RegistrationAttachmentId =
      $DeleteRegistrationFieldValueResult->RegistrationAttachmentId;
    my $RegistrationId = $DeleteRegistrationFieldValueResult->RegistrationId;
    my $SelectChoices  = $DeleteRegistrationFieldValueResult->SelectChoices;
    my $TextValue      = $DeleteRegistrationFieldValueResult->TextValue;
    my $VersionNumber  = $DeleteRegistrationFieldValueResult->VersionNumber;

# Returns a L<Paws::PinpointSMSVoiceV2::DeleteRegistrationFieldValueResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms-voice/DeleteRegistrationFieldValue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FieldPath => Str

The path to the registration form field. You can use
DescribeRegistrationFieldDefinitions for a list of B<FieldPaths>.



=head2 B<REQUIRED> RegistrationId => Str

The unique identifier for the registration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRegistrationFieldValue in L<Paws::PinpointSMSVoiceV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

