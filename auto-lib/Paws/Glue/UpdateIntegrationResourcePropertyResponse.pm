
package Paws::Glue::UpdateIntegrationResourcePropertyResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str');
  has SourceProcessingProperties => (is => 'ro', isa => 'Paws::Glue::SourceProcessingProperties');
  has TargetProcessingProperties => (is => 'ro', isa => 'Paws::Glue::TargetProcessingProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateIntegrationResourcePropertyResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.


=head2 SourceProcessingProperties => L<Paws::Glue::SourceProcessingProperties>

The resource properties associated with the integration source.


=head2 TargetProcessingProperties => L<Paws::Glue::TargetProcessingProperties>

The resource properties associated with the integration target.


=head2 _request_id => Str


=cut

1;