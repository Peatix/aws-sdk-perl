
package Paws::CustomerProfiles::GetSegmentMembership;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has ProfileIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ProfileIds', required => 1);
  has SegmentDefinitionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SegmentDefinitionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSegmentMembership');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/segments/{SegmentDefinitionName}/membership');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::GetSegmentMembershipResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::GetSegmentMembership - Arguments for method GetSegmentMembership on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSegmentMembership on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method GetSegmentMembership.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSegmentMembership.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $GetSegmentMembershipResponse = $profile->GetSegmentMembership(
      DomainName            => 'Myname',
      ProfileIds            => [ 'Myuuid', ... ],
      SegmentDefinitionName => 'Myname',

    );

    # Results:
    my $Failures = $GetSegmentMembershipResponse->Failures;
    my $Profiles = $GetSegmentMembershipResponse->Profiles;
    my $SegmentDefinitionName =
      $GetSegmentMembershipResponse->SegmentDefinitionName;

    # Returns a L<Paws::CustomerProfiles::GetSegmentMembershipResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/GetSegmentMembership>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 B<REQUIRED> ProfileIds => ArrayRef[Str|Undef]

The list of profile IDs to query for.



=head2 B<REQUIRED> SegmentDefinitionName => Str

The Id of the wanted segment. Needs to be a valid, and existing segment
Id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSegmentMembership in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

