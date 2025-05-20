
package Paws::SSMContacts::CreateRotationOverride;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has NewContactIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RotationId => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRotationOverride');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::CreateRotationOverrideResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateRotationOverride - Arguments for method CreateRotationOverride on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRotationOverride on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method CreateRotationOverride.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRotationOverride.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $CreateRotationOverrideResult = $ssm -contacts->CreateRotationOverride(
      EndTime       => '1970-01-01T01:00:00',
      NewContactIds => [
        'MySsmContactsArn', ...    # min: 1, max: 2048
      ],
      RotationId       => 'MySsmContactsArn',
      StartTime        => '1970-01-01T01:00:00',
      IdempotencyToken => 'MyIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $RotationOverrideId = $CreateRotationOverrideResult->RotationOverrideId;

    # Returns a L<Paws::SSMContacts::CreateRotationOverrideResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/CreateRotationOverride>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The date and time when the override ends.



=head2 IdempotencyToken => Str

A token that ensures that the operation is called only once with the
specified details.



=head2 B<REQUIRED> NewContactIds => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the contacts to replace those in
the current on-call rotation with.

If you want to include any current team members in the override shift,
you must include their ARNs in the new contact ID list.



=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the rotation to create an override
for.



=head2 B<REQUIRED> StartTime => Str

The date and time when the override goes into effect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRotationOverride in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

