
package Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ExportStatus => (is => 'ro', isa => 'Str', required => 1);
  has OutputConfig => (is => 'ro', isa => 'Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutputConfig', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the Vector Enrichment job being
exported.


=head2 B<REQUIRED> CreationTime => Str

The creation time.


=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role with permission to
upload to the location in OutputConfig.


=head2 B<REQUIRED> ExportStatus => Str

The status of the results the Vector Enrichment job being exported.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">
=head2 B<REQUIRED> OutputConfig => L<Paws::SageMakerGeospatial::ExportVectorEnrichmentJobOutputConfig>

Output location information for exporting Vector Enrichment Job
results.


=head2 _request_id => Str


=cut

