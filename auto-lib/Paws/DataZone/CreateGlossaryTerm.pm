
package Paws::DataZone::CreateGlossaryTerm;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GlossaryIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'glossaryIdentifier', required => 1);
  has LongDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'longDescription');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ShortDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'shortDescription');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has TermRelations => (is => 'ro', isa => 'Paws::DataZone::TermRelations', traits => ['NameInRequest'], request_name => 'termRelations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlossaryTerm');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/glossary-terms');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateGlossaryTermOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateGlossaryTerm - Arguments for method CreateGlossaryTerm on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlossaryTerm on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateGlossaryTerm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlossaryTerm.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateGlossaryTermOutput = $datazone->CreateGlossaryTerm(
      DomainIdentifier   => 'MyDomainId',
      GlossaryIdentifier => 'MyGlossaryTermId',
      Name               => 'MyGlossaryTermName',
      ClientToken        => 'MyClientToken',         # OPTIONAL
      LongDescription    => 'MyLongDescription',     # OPTIONAL
      ShortDescription   => 'MyShortDescription',    # OPTIONAL
      Status             => 'ENABLED',               # OPTIONAL
      TermRelations      => {
        Classifies => [ 'MyGlossaryTermId', ... ],   # min: 1, max: 10; OPTIONAL
        IsA        => [ 'MyGlossaryTermId', ... ],   # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DomainId         = $CreateGlossaryTermOutput->DomainId;
    my $GlossaryId       = $CreateGlossaryTermOutput->GlossaryId;
    my $Id               = $CreateGlossaryTermOutput->Id;
    my $LongDescription  = $CreateGlossaryTermOutput->LongDescription;
    my $Name             = $CreateGlossaryTermOutput->Name;
    my $ShortDescription = $CreateGlossaryTermOutput->ShortDescription;
    my $Status           = $CreateGlossaryTermOutput->Status;
    my $TermRelations    = $CreateGlossaryTermOutput->TermRelations;

    # Returns a L<Paws::DataZone::CreateGlossaryTermOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateGlossaryTerm>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this business glossary
term is created.



=head2 B<REQUIRED> GlossaryIdentifier => Str

The ID of the business glossary in which this term is created.



=head2 LongDescription => Str

The long description of this business glossary term.



=head2 B<REQUIRED> Name => Str

The name of this business glossary term.



=head2 ShortDescription => Str

The short description of this business glossary term.



=head2 Status => Str

The status of this business glossary term.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 TermRelations => L<Paws::DataZone::TermRelations>

The term relations of this business glossary term.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlossaryTerm in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

