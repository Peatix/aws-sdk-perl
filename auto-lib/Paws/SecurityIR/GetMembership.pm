
package Paws::SecurityIR::GetMembership;
  use Moose;
  has MembershipId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/membership/{membershipId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityIR::GetMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityIR::GetMembership - Arguments for method GetMembership on L<Paws::SecurityIR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMembership on the
L<Security Incident Response|Paws::SecurityIR> service. Use the attributes of this class
as arguments to method GetMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMembership.

=head1 SYNOPSIS

    my $security-ir = Paws->service('SecurityIR');
    my $GetMembershipResponse = $security -ir->GetMembership(
      MembershipId => 'MyMembershipId',

    );

    # Results:
    my $AccountId            = $GetMembershipResponse->AccountId;
    my $CustomerType         = $GetMembershipResponse->CustomerType;
    my $IncidentResponseTeam = $GetMembershipResponse->IncidentResponseTeam;
    my $MembershipActivationTimestamp =
      $GetMembershipResponse->MembershipActivationTimestamp;
    my $MembershipArn = $GetMembershipResponse->MembershipArn;
    my $MembershipDeactivationTimestamp =
      $GetMembershipResponse->MembershipDeactivationTimestamp;
    my $MembershipId     = $GetMembershipResponse->MembershipId;
    my $MembershipName   = $GetMembershipResponse->MembershipName;
    my $MembershipStatus = $GetMembershipResponse->MembershipStatus;
    my $NumberOfAccountsCovered =
      $GetMembershipResponse->NumberOfAccountsCovered;
    my $OptInFeatures = $GetMembershipResponse->OptInFeatures;
    my $Region        = $GetMembershipResponse->Region;

    # Returns a L<Paws::SecurityIR::GetMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/security-ir/GetMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipId => Str

Required element for GetMembership to identify the membership ID to
query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMembership in L<Paws::SecurityIR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

