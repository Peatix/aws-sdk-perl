
package Paws::GuardDuty::GetRemainingFreeTrialDays;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'accountIds');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRemainingFreeTrialDays');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/freeTrial/daysRemaining');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetRemainingFreeTrialDaysResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetRemainingFreeTrialDays - Arguments for method GetRemainingFreeTrialDays on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRemainingFreeTrialDays on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetRemainingFreeTrialDays.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRemainingFreeTrialDays.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetRemainingFreeTrialDaysResponse =
      $guardduty->GetRemainingFreeTrialDays(
      DetectorId => 'MyDetectorId',
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],    # OPTIONAL
      );

    # Results:
    my $Accounts = $GetRemainingFreeTrialDaysResponse->Accounts;
    my $UnprocessedAccounts =
      $GetRemainingFreeTrialDaysResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::GetRemainingFreeTrialDaysResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetRemainingFreeTrialDays>

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

A list of account identifiers of the GuardDuty member account.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty member account.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRemainingFreeTrialDays in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

