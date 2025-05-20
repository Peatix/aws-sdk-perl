
package Paws::DataZone::GetMetadataGenerationRun;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetadataGenerationRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetMetadataGenerationRunOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetMetadataGenerationRun - Arguments for method GetMetadataGenerationRun on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetadataGenerationRun on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetMetadataGenerationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetadataGenerationRun.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetMetadataGenerationRunOutput = $datazone->GetMetadataGenerationRun(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyMetadataGenerationRunIdentifier',

    );

    # Results:
    my $CreatedAt       = $GetMetadataGenerationRunOutput->CreatedAt;
    my $CreatedBy       = $GetMetadataGenerationRunOutput->CreatedBy;
    my $DomainId        = $GetMetadataGenerationRunOutput->DomainId;
    my $Id              = $GetMetadataGenerationRunOutput->Id;
    my $OwningProjectId = $GetMetadataGenerationRunOutput->OwningProjectId;
    my $Status          = $GetMetadataGenerationRunOutput->Status;
    my $Target          = $GetMetadataGenerationRunOutput->Target;
    my $Type            = $GetMetadataGenerationRunOutput->Type;

    # Returns a L<Paws::DataZone::GetMetadataGenerationRunOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetMetadataGenerationRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain the metadata generation run of
which you want to get.



=head2 B<REQUIRED> Identifier => Str

The identifier of the metadata generation run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetadataGenerationRun in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

