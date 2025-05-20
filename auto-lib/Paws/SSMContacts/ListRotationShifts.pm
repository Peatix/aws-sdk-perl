
package Paws::SSMContacts::ListRotationShifts;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RotationId => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRotationShifts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListRotationShiftsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListRotationShifts - Arguments for method ListRotationShifts on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRotationShifts on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListRotationShifts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRotationShifts.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListRotationShiftsResult = $ssm -contacts->ListRotationShifts(
      EndTime    => '1970-01-01T01:00:00',
      RotationId => 'MySsmContactsArn',
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyPaginationToken',      # OPTIONAL
      StartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListRotationShiftsResult->NextToken;
    my $RotationShifts = $ListRotationShiftsResult->RotationShifts;

    # Returns a L<Paws::SSMContacts::ListRotationShiftsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListRotationShifts>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The date and time for the end of the time range to list shifts for.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 B<REQUIRED> RotationId => Str

The Amazon Resource Name (ARN) of the rotation to retrieve shift
information about.



=head2 StartTime => Str

The date and time for the beginning of the time range to list shifts
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRotationShifts in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

