
package Paws::DataZone::CreateGlossary;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlossary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/glossaries');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateGlossaryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateGlossary - Arguments for method CreateGlossary on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlossary on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateGlossary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlossary.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateGlossaryOutput = $datazone->CreateGlossary(
      DomainIdentifier        => 'MyDomainId',
      Name                    => 'MyGlossaryName',
      OwningProjectIdentifier => 'MyProjectId',
      ClientToken             => 'MyClientToken',            # OPTIONAL
      Description             => 'MyGlossaryDescription',    # OPTIONAL
      Status                  => 'DISABLED',                 # OPTIONAL
    );

    # Results:
    my $Description     = $CreateGlossaryOutput->Description;
    my $DomainId        = $CreateGlossaryOutput->DomainId;
    my $Id              = $CreateGlossaryOutput->Id;
    my $Name            = $CreateGlossaryOutput->Name;
    my $OwningProjectId = $CreateGlossaryOutput->OwningProjectId;
    my $Status          = $CreateGlossaryOutput->Status;

    # Returns a L<Paws::DataZone::CreateGlossaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateGlossary>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description of this business glossary.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this business glossary is
created.



=head2 B<REQUIRED> Name => Str

The name of this business glossary.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The ID of the project that currently owns business glossary.



=head2 Status => Str

The status of this business glossary.

Valid values are: C<"DISABLED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlossary in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

