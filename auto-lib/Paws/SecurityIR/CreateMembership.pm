
package Paws::SecurityIR::CreateMembership;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has IncidentResponseTeam => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::IncidentResponder]', traits => ['NameInRequest'], request_name => 'incidentResponseTeam', required => 1);
  has MembershipName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipName', required => 1);
  has OptInFeatures => (is => 'ro', isa => 'ArrayRef[Paws::SecurityIR::OptInFeature]', traits => ['NameInRequest'], request_name => 'optInFeatures');
  has Tags => (is => 'ro', isa => 'Paws::SecurityIR::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/membership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::CreateMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::CreateMembership - Arguments for method CreateMembership on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMembership on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method CreateMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMembership.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $CreateMembershipResponse = $security -ir->CreateMembership(
      IncidentResponseTeam => [
        {
          Email    => 'MyEmailAddress',             # min: 6, max: 254
          JobTitle => 'MyJobTitle',                 # min: 1, max: 50
          Name     => 'MyIncidentResponderName',    # min: 3, max: 50

        },
        ...
      ],
      MembershipName => 'MyMembershipName',
      ClientToken    => 'MyCreateMembershipRequestClientTokenString', # OPTIONAL
      OptInFeatures  => [
        {
          FeatureName => 'Triage',    # values: Triage
          IsEnabled   => 1,

        },
        ...
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $MembershipId = $CreateMembershipResponse->MembershipId;

    # Returns a L<Paws::SecurityIR::CreateMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/CreateMembership>

=head1 ATTRIBUTES


=head2 ClientToken => Str

An optional element used in combination with CreateMembership.



=head2 B<REQUIRED> IncidentResponseTeam => ArrayRef[L<Paws::SecurityIR::IncidentResponder>]

Required element use in combination with CreateMembership to add
customer incident response team members and trusted partners to the
membership.



=head2 B<REQUIRED> MembershipName => Str

Required element use in combination with CreateMembership to create a
name for the membership.



=head2 OptInFeatures => ArrayRef[L<Paws::SecurityIR::OptInFeature>]

Optional element to enable the monitoring and investigation opt-in
features for the service.



=head2 Tags => L<Paws::SecurityIR::TagMap>

Optional element for customer configured tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMembership in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

