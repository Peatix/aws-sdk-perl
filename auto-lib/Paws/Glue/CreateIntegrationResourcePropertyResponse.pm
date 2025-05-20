
package Paws::Glue::CreateIntegrationResourcePropertyResponse;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceProcessingProperties => (is => 'ro', isa => 'Paws::Glue::SourceProcessingProperties');
  has TargetProcessingProperties => (is => 'ro', isa => 'Paws::Glue::TargetProcessingProperties');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateIntegrationResourcePropertyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The connection ARN of the source, or the database ARN of the target.


=head2 SourceProcessingProperties => L<Paws::Glue::SourceProcessingProperties>

The resource properties associated with the integration source.


=head2 TargetProcessingProperties => L<Paws::Glue::TargetProcessingProperties>

The resource properties associated with the integration target.


=head2 _request_id => Str


=cut

1;