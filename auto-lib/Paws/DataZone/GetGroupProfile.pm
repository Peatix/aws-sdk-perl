
package Paws::DataZone::GetGroupProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGroupProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetGroupProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetGroupProfile - Arguments for method GetGroupProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGroupProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetGroupProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGroupProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetGroupProfileOutput = $datazone->GetGroupProfile(
      DomainIdentifier => 'MyDomainId',
      GroupIdentifier  => 'MyGroupIdentifier',

    );

    # Results:
    my $DomainId  = $GetGroupProfileOutput->DomainId;
    my $GroupName = $GetGroupProfileOutput->GroupName;
    my $Id        = $GetGroupProfileOutput->Id;
    my $Status    = $GetGroupProfileOutput->Status;

    # Returns a L<Paws::DataZone::GetGroupProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetGroupProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which the group profile
exists.



=head2 B<REQUIRED> GroupIdentifier => Str

The identifier of the group profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGroupProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

