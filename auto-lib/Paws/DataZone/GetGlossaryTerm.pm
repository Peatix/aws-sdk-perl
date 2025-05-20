
package Paws::DataZone::GetGlossaryTerm;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGlossaryTerm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/glossary-terms/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetGlossaryTermOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetGlossaryTerm - Arguments for method GetGlossaryTerm on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGlossaryTerm on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetGlossaryTerm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGlossaryTerm.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetGlossaryTermOutput = $datazone->GetGlossaryTerm(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyGlossaryTermId',

    );

    # Results:
    my $CreatedAt        = $GetGlossaryTermOutput->CreatedAt;
    my $CreatedBy        = $GetGlossaryTermOutput->CreatedBy;
    my $DomainId         = $GetGlossaryTermOutput->DomainId;
    my $GlossaryId       = $GetGlossaryTermOutput->GlossaryId;
    my $Id               = $GetGlossaryTermOutput->Id;
    my $LongDescription  = $GetGlossaryTermOutput->LongDescription;
    my $Name             = $GetGlossaryTermOutput->Name;
    my $ShortDescription = $GetGlossaryTermOutput->ShortDescription;
    my $Status           = $GetGlossaryTermOutput->Status;
    my $TermRelations    = $GetGlossaryTermOutput->TermRelations;
    my $UpdatedAt        = $GetGlossaryTermOutput->UpdatedAt;
    my $UpdatedBy        = $GetGlossaryTermOutput->UpdatedBy;

    # Returns a L<Paws::DataZone::GetGlossaryTermOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetGlossaryTerm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this business glossary
term exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the business glossary term.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGlossaryTerm in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

