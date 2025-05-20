
package Paws::DataZone::CreateDomainUnit;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ParentDomainUnitIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentDomainUnitIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomainUnit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/domain-units');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateDomainUnitOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateDomainUnit - Arguments for method CreateDomainUnit on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDomainUnit on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateDomainUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDomainUnit.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateDomainUnitOutput = $datazone->CreateDomainUnit(
      DomainIdentifier           => 'MyDomainId',
      Name                       => 'MyDomainUnitName',
      ParentDomainUnitIdentifier => 'MyDomainUnitId',
      ClientToken                => 'MyClientToken',              # OPTIONAL
      Description                => 'MyDomainUnitDescription',    # OPTIONAL
    );

    # Results:
    my $AncestorDomainUnitIds = $CreateDomainUnitOutput->AncestorDomainUnitIds;
    my $CreatedAt             = $CreateDomainUnitOutput->CreatedAt;
    my $CreatedBy             = $CreateDomainUnitOutput->CreatedBy;
    my $Description           = $CreateDomainUnitOutput->Description;
    my $DomainId              = $CreateDomainUnitOutput->DomainId;
    my $Id                    = $CreateDomainUnitOutput->Id;
    my $Name                  = $CreateDomainUnitOutput->Name;
    my $Owners                = $CreateDomainUnitOutput->Owners;
    my $ParentDomainUnitId    = $CreateDomainUnitOutput->ParentDomainUnitId;

    # Returns a L<Paws::DataZone::CreateDomainUnitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateDomainUnit>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of the domain unit.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to crate a domain unit.



=head2 B<REQUIRED> Name => Str

The name of the domain unit.



=head2 B<REQUIRED> ParentDomainUnitIdentifier => Str

The ID of the parent domain unit.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDomainUnit in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

