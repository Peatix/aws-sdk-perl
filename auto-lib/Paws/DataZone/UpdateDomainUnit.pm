
package Paws::DataZone::UpdateDomainUnit;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainUnit');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/domain-units/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateDomainUnitOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateDomainUnit - Arguments for method UpdateDomainUnit on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainUnit on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateDomainUnit.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainUnit.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateDomainUnitOutput = $datazone->UpdateDomainUnit(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyDomainUnitId',
      Description      => 'MyDomainUnitDescription',    # OPTIONAL
      Name             => 'MyDomainUnitName',           # OPTIONAL
    );

    # Results:
    my $CreatedAt          = $UpdateDomainUnitOutput->CreatedAt;
    my $CreatedBy          = $UpdateDomainUnitOutput->CreatedBy;
    my $Description        = $UpdateDomainUnitOutput->Description;
    my $DomainId           = $UpdateDomainUnitOutput->DomainId;
    my $Id                 = $UpdateDomainUnitOutput->Id;
    my $LastUpdatedAt      = $UpdateDomainUnitOutput->LastUpdatedAt;
    my $LastUpdatedBy      = $UpdateDomainUnitOutput->LastUpdatedBy;
    my $Name               = $UpdateDomainUnitOutput->Name;
    my $Owners             = $UpdateDomainUnitOutput->Owners;
    my $ParentDomainUnitId = $UpdateDomainUnitOutput->ParentDomainUnitId;

    # Returns a L<Paws::DataZone::UpdateDomainUnitOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateDomainUnit>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the domain unit that you want to update.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain where you want to update a domain unit.



=head2 B<REQUIRED> Identifier => Str

The ID of the domain unit that you want to update.



=head2 Name => Str

The name of the domain unit that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainUnit in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

