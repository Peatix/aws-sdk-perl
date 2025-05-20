
package Paws::Deadline::AssociateMemberToFleet;
  use Moose;
  has FarmId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'farmId', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'fleetId', required => 1);
  has IdentityStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identityStoreId', required => 1);
  has MembershipLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipLevel', required => 1);
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'principalId', required => 1);
  has PrincipalType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principalType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMemberToFleet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::AssociateMemberToFleetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::AssociateMemberToFleet - Arguments for method AssociateMemberToFleet on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMemberToFleet on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method AssociateMemberToFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMemberToFleet.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $AssociateMemberToFleetResponse = $deadline->AssociateMemberToFleet(
      FarmId          => 'MyFarmId',
      FleetId         => 'MyFleetId',
      IdentityStoreId => 'MyIdentityStoreId',
      MembershipLevel => 'VIEWER',
      PrincipalId     => 'MyIdentityCenterPrincipalId',
      PrincipalType   => 'USER',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/AssociateMemberToFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FarmId => Str

The farm ID of the fleet to associate with the member.



=head2 B<REQUIRED> FleetId => Str

The ID of the fleet to associate with a member.



=head2 B<REQUIRED> IdentityStoreId => Str

The member's identity store ID to associate with the fleet.



=head2 B<REQUIRED> MembershipLevel => Str

The principal's membership level for the associated fleet.

Valid values are: C<"VIEWER">, C<"CONTRIBUTOR">, C<"OWNER">, C<"MANAGER">

=head2 B<REQUIRED> PrincipalId => Str

The member's principal ID to associate with a fleet.



=head2 B<REQUIRED> PrincipalType => Str

The member's principal type to associate with the fleet.

Valid values are: C<"USER">, C<"GROUP">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMemberToFleet in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

