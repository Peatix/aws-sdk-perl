
package Paws::IoTManagedIntegrations::CreateOtaTaskResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::CreateOtaTaskResponse

=head1 ATTRIBUTES


=head2 Description => Str

A description of the over-the-air (OTA) task.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the over-the-air (OTA) task.


=head2 TaskId => Str

The identifier of the over-the-air (OTA) task.


=head2 _request_id => Str


=cut

