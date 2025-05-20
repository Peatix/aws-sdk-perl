
package Paws::GuardDuty::AcceptAdministratorInvitation;
  use Moose;
  has AdministratorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'administratorId', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has InvitationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invitationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptAdministratorInvitation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/administrator');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::AcceptAdministratorInvitationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::AcceptAdministratorInvitation - Arguments for method AcceptAdministratorInvitation on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptAdministratorInvitation on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method AcceptAdministratorInvitation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptAdministratorInvitation.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $AcceptAdministratorInvitationResponse =
      $guardduty->AcceptAdministratorInvitation(
      AdministratorId => 'MyString',
      DetectorId      => 'MyDetectorId',
      InvitationId    => 'MyString',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/AcceptAdministratorInvitation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdministratorId => Str

The account ID of the GuardDuty administrator account whose invitation
you're accepting.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty member account.



=head2 B<REQUIRED> InvitationId => Str

The value that is used to validate the administrator account to the
member account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptAdministratorInvitation in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

