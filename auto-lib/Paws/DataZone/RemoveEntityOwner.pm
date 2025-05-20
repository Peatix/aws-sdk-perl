
package Paws::DataZone::RemoveEntityOwner;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EntityIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityIdentifier', required => 1);
  has EntityType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'entityType', required => 1);
  has Owner => (is => 'ro', isa => 'Paws::DataZone::OwnerProperties', traits => ['NameInRequest'], request_name => 'owner', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveEntityOwner');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/removeOwner');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::RemoveEntityOwnerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::RemoveEntityOwner - Arguments for method RemoveEntityOwner on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveEntityOwner on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method RemoveEntityOwner.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveEntityOwner.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $RemoveEntityOwnerOutput = $datazone->RemoveEntityOwner(
      DomainIdentifier => 'MyDomainId',
      EntityIdentifier => 'MyString',
      EntityType       => 'DOMAIN_UNIT',
      Owner            => {
        Group => {
          GroupIdentifier => 'MyGroupIdentifier',

        },    # OPTIONAL
        User => {
          UserIdentifier => 'MyUserIdentifier',

        },    # OPTIONAL
      },
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/RemoveEntityOwner>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to remove an owner from an entity.



=head2 B<REQUIRED> EntityIdentifier => Str

The ID of the entity from which you want to remove an owner.



=head2 B<REQUIRED> EntityType => Str

The type of the entity from which you want to remove an owner.

Valid values are: C<"DOMAIN_UNIT">

=head2 B<REQUIRED> Owner => L<Paws::DataZone::OwnerProperties>

The owner that you want to remove from an entity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveEntityOwner in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

