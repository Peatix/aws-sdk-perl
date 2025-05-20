
package Paws::LookoutEquipment::ImportModelVersionResponse;
  use Moose;
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has ModelVersion => (is => 'ro', isa => 'Int');
  has ModelVersionArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ImportModelVersionResponse

=head1 ATTRIBUTES


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the model being created.


=head2 ModelName => Str

The name for the machine learning model.


=head2 ModelVersion => Int

The version of the model being created.


=head2 ModelVersionArn => Str

The Amazon Resource Name (ARN) of the model version being created.


=head2 Status => Str

The status of the C<ImportModelVersion> operation.

Valid values are: C<"IN_PROGRESS">, C<"SUCCESS">, C<"FAILED">, C<"IMPORT_IN_PROGRESS">, C<"CANCELED">
=head2 _request_id => Str


=cut

1;