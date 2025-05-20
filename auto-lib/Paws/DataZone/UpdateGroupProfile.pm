
package Paws::DataZone::UpdateGroupProfile;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupIdentifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroupProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateGroupProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateGroupProfile - Arguments for method UpdateGroupProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroupProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateGroupProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroupProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateGroupProfileOutput = $datazone->UpdateGroupProfile(
      DomainIdentifier => 'MyDomainId',
      GroupIdentifier  => 'MyGroupIdentifier',
      Status           => 'ASSIGNED',

    );

    # Results:
    my $DomainId  = $UpdateGroupProfileOutput->DomainId;
    my $GroupName = $UpdateGroupProfileOutput->GroupName;
    my $Id        = $UpdateGroupProfileOutput->Id;
    my $Status    = $UpdateGroupProfileOutput->Status;

    # Returns a L<Paws::DataZone::UpdateGroupProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateGroupProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a group profile
is updated.



=head2 B<REQUIRED> GroupIdentifier => Str

The identifier of the group profile that is updated.



=head2 B<REQUIRED> Status => Str

The status of the group profile that is updated.

Valid values are: C<"ASSIGNED">, C<"NOT_ASSIGNED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroupProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

