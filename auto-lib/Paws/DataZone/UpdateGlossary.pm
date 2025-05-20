
package Paws::DataZone::UpdateGlossary;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlossary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/glossaries/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateGlossaryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateGlossary - Arguments for method UpdateGlossary on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlossary on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateGlossary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlossary.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateGlossaryOutput = $datazone->UpdateGlossary(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyGlossaryId',
      ClientToken      => 'MyClientToken',            # OPTIONAL
      Description      => 'MyGlossaryDescription',    # OPTIONAL
      Name             => 'MyGlossaryName',           # OPTIONAL
      Status           => 'DISABLED',                 # OPTIONAL
    );

    # Results:
    my $Description     = $UpdateGlossaryOutput->Description;
    my $DomainId        = $UpdateGlossaryOutput->DomainId;
    my $Id              = $UpdateGlossaryOutput->Id;
    my $Name            = $UpdateGlossaryOutput->Name;
    my $OwningProjectId = $UpdateGlossaryOutput->OwningProjectId;
    my $Status          = $UpdateGlossaryOutput->Status;

    # Returns a L<Paws::DataZone::UpdateGlossaryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateGlossary>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that is provided to ensure the
idempotency of the request.



=head2 Description => Str

The description to be updated as part of the C<UpdateGlossary> action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which a business
glossary is to be updated.



=head2 B<REQUIRED> Identifier => Str

The identifier of the business glossary to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateGlossary> action.



=head2 Status => Str

The status to be updated as part of the C<UpdateGlossary> action.

Valid values are: C<"DISABLED">, C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlossary in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

