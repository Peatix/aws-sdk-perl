
package Paws::DataZone::CreateGroupProfile;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroupProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/group-profiles');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateGroupProfileOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateGroupProfile - Arguments for method CreateGroupProfile on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroupProfile on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateGroupProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroupProfile.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateGroupProfileOutput = $datazone->CreateGroupProfile(
      DomainIdentifier => 'MyDomainId',
      GroupIdentifier  => 'MyGroupIdentifier',
      ClientToken      => 'MyString',            # OPTIONAL
    );

    # Results:
    my $DomainId  = $CreateGroupProfileOutput->DomainId;
    my $GroupName = $CreateGroupProfileOutput->GroupName;
    my $Id        = $CreateGroupProfileOutput->Id;
    my $Status    = $CreateGroupProfileOutput->Status;

    # Returns a L<Paws::DataZone::CreateGroupProfileOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateGroupProfile>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which the group profile
is created.



=head2 B<REQUIRED> GroupIdentifier => Str

The identifier of the group for which the group profile is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroupProfile in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

