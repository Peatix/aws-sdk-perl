
package Paws::DataZone::CreateFormType;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Model => (is => 'ro', isa => 'Paws::DataZone::Model', traits => ['NameInRequest'], request_name => 'model', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OwningProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owningProjectIdentifier', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFormType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/form-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateFormTypeOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateFormType - Arguments for method CreateFormType on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFormType on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateFormType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFormType.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateFormTypeOutput = $datazone->CreateFormType(
      DomainIdentifier => 'MyDomainId',
      Model            => {
        Smithy => 'MySmithy',    # min: 1, max: 100000; OPTIONAL
      },
      Name                    => 'MyFormTypeName',
      OwningProjectIdentifier => 'MyProjectId',
      Description             => 'MyDescription',    # OPTIONAL
      Status                  => 'ENABLED',          # OPTIONAL
    );

    # Results:
    my $Description     = $CreateFormTypeOutput->Description;
    my $DomainId        = $CreateFormTypeOutput->DomainId;
    my $Name            = $CreateFormTypeOutput->Name;
    my $OriginDomainId  = $CreateFormTypeOutput->OriginDomainId;
    my $OriginProjectId = $CreateFormTypeOutput->OriginProjectId;
    my $OwningProjectId = $CreateFormTypeOutput->OwningProjectId;
    my $Revision        = $CreateFormTypeOutput->Revision;

    # Returns a L<Paws::DataZone::CreateFormTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateFormType>

=head1 ATTRIBUTES


=head2 Description => Str

The description of this Amazon DataZone metadata form type.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this metadata form type
is created.



=head2 B<REQUIRED> Model => L<Paws::DataZone::Model>

The model of this Amazon DataZone metadata form type.



=head2 B<REQUIRED> Name => Str

The name of this Amazon DataZone metadata form type.



=head2 B<REQUIRED> OwningProjectIdentifier => Str

The ID of the Amazon DataZone project that owns this metadata form
type.



=head2 Status => Str

The status of this Amazon DataZone metadata form type.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFormType in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

