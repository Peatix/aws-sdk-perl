
package Paws::SSMContacts::GetRotationOverride;
  use Moose;
  has RotationId => (is => 'ro', isa => 'Str', required => 1);
  has RotationOverrideId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRotationOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::GetRotationOverrideResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::GetRotationOverride - Arguments for method GetRotationOverride on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRotationOverride on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method GetRotationOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRotationOverride.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $GetRotationOverrideResult = $ssm -contacts->GetRotationOverride(
      RotationId         => 'MySsmContactsArn',
      RotationOverrideId => 'MyUuid',

    );

    # Results:
    my $CreateTime         = $GetRotationOverrideResult->CreateTime;
    my $EndTime            = $GetRotationOverrideResult->EndTime;
    my $NewContactIds      = $GetRotationOverrideResult->NewContactIds;
    my $RotationArn        = $GetRotationOverrideResult->RotationArn;
    my $RotationOverrideId = $GetRotationOverrideResult->RotationOverrideId;
    my $StartTime          = $GetRotationOverrideResult->StartTime;

    # Returns a L<Paws::SSMContacts::GetRotationOverrideResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/GetRotationOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the overridden rotation to retrieve
information about.



=head2 B<REQUIRED> RotationOverrideId => Str

The Amazon Resource Name (ARN) of the on-call rotation override to
retrieve information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRotationOverride in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

