
package Paws::GuardDuty::DisassociateFromAdministratorAccount;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateFromAdministratorAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/administrator/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DisassociateFromAdministratorAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DisassociateFromAdministratorAccount - Arguments for method DisassociateFromAdministratorAccount on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateFromAdministratorAccount on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DisassociateFromAdministratorAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateFromAdministratorAccount.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DisassociateFromAdministratorAccountResponse =
      $guardduty->DisassociateFromAdministratorAccount(
      DetectorId => 'MyDetectorId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DisassociateFromAdministratorAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty member account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateFromAdministratorAccount in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

