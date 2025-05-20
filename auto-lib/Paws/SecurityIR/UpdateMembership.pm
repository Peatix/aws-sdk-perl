
package Paws::SecurityIR::UpdateMembership;
  use Moose;
  has IncidentResponseTeam => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::IncidentResponder]', traits => ['NameInRequest'], request_name => 'incidentResponseTeam');
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipId', required => 1);
  has MembershipName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipName');
  has OptInFeatures => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::OptInFeature]', traits => ['NameInRequest'], request_name => 'optInFeatures');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/membership/{membershipId}/update-membership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::UpdateMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::UpdateMembership - Arguments for method UpdateMembership on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMembership on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method UpdateMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMembership.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $UpdateMembershipResponse = $security -ir->UpdateMembership(
      MembershipId         => 'MyMembershipId',
      IncidentResponseTeam => [
        {
          Email    => 'MyEmailAddress',             # min: 6, max: 254
          JobTitle => 'MyJobTitle',                 # min: 1, max: 50
          Name     => 'MyIncidentResponderName',    # min: 3, max: 50

        },
        ...
      ],    # OPTIONAL
      MembershipName => 'MyMembershipName',    # OPTIONAL
      OptInFeatures  => [
        {
          FeatureName => 'Triage',             # values: Triage
          IsEnabled   => 1,

        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/UpdateMembership>

=head1 ATTRIBUTES


=head2 IncidentResponseTeam => ArrayRef[L<Paws::SecurityIR::IncidentResponder>]

Optional element for UpdateMembership to update the membership name.



=head2 B<REQUIRED> MembershipId => Str

Required element for UpdateMembership to identify the membership to
update.



=head2 MembershipName => Str

Optional element for UpdateMembership to update the membership name.



=head2 OptInFeatures => ArrayRef[L<Paws::SecurityIR::OptInFeature>]

Optional element for UpdateMembership to enable or disable opt-in
features for the service.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMembership in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

