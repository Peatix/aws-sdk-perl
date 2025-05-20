
package Paws::DataZone::UpdateGlossaryTerm;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GlossaryIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'glossaryIdentifier');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has LongDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'longDescription');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ShortDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortDescription');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TermRelations => (is => 'ro', isa => 'Paws::DataZone::TermRelations', traits => ['NameInRequest'], request_name => 'termRelations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlossaryTerm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/glossary-terms/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateGlossaryTermOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateGlossaryTerm - Arguments for method UpdateGlossaryTerm on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlossaryTerm on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateGlossaryTerm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlossaryTerm.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateGlossaryTermOutput = $datazone->UpdateGlossaryTerm(
      DomainIdentifier   => 'MyDomainId',
      Identifier         => 'MyGlossaryTermId',
      GlossaryIdentifier => 'MyGlossaryTermId',      # OPTIONAL
      LongDescription    => 'MyLongDescription',     # OPTIONAL
      Name               => 'MyGlossaryTermName',    # OPTIONAL
      ShortDescription   => 'MyShortDescription',    # OPTIONAL
      Status             => 'ENABLED',               # OPTIONAL
      TermRelations      => {
        Classifies => [ 'MyGlossaryTermId', ... ],   # min: 1, max: 10; OPTIONAL
        IsA        => [ 'MyGlossaryTermId', ... ],   # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DomainId         = $UpdateGlossaryTermOutput->DomainId;
    my $GlossaryId       = $UpdateGlossaryTermOutput->GlossaryId;
    my $Id               = $UpdateGlossaryTermOutput->Id;
    my $LongDescription  = $UpdateGlossaryTermOutput->LongDescription;
    my $Name             = $UpdateGlossaryTermOutput->Name;
    my $ShortDescription = $UpdateGlossaryTermOutput->ShortDescription;
    my $Status           = $UpdateGlossaryTermOutput->Status;
    my $TermRelations    = $UpdateGlossaryTermOutput->TermRelations;

    # Returns a L<Paws::DataZone::UpdateGlossaryTermOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateGlossaryTerm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a business
glossary term is to be updated.



=head2 GlossaryIdentifier => Str

The identifier of the business glossary in which a term is to be
updated.



=head2 B<REQUIRED> Identifier => Str

The identifier of the business glossary term that is to be updated.



=head2 LongDescription => Str

The long description to be updated as part of the C<UpdateGlossaryTerm>
action.



=head2 Name => Str

The name to be updated as part of the C<UpdateGlossaryTerm> action.



=head2 ShortDescription => Str

The short description to be updated as part of the
C<UpdateGlossaryTerm> action.



=head2 Status => Str

The status to be updated as part of the C<UpdateGlossaryTerm> action.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 TermRelations => L<Paws::DataZone::TermRelations>

The term relations to be updated as part of the C<UpdateGlossaryTerm>
action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlossaryTerm in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

