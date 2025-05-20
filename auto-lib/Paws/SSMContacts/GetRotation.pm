
package Paws::SSMContacts::GetRotation;
  use Moose;
  has RotationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRotation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::GetRotationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetRotation - Arguments for method GetRotation on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRotation on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method GetRotation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRotation.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $GetRotationResult = $ssm -contacts->GetRotation(
      RotationId => 'MySsmContactsArn',

    );

    # Results:
    my $ContactIds  = $GetRotationResult->ContactIds;
    my $Name        = $GetRotationResult->Name;
    my $Recurrence  = $GetRotationResult->Recurrence;
    my $RotationArn = $GetRotationResult->RotationArn;
    my $StartTime   = $GetRotationResult->StartTime;
    my $TimeZoneId  = $GetRotationResult->TimeZoneId;

    # Returns a L<Paws::SSMContacts::GetRotationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/GetRotation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the on-call rotation to retrieve
information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRotation in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

