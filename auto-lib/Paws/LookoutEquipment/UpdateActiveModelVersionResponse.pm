
package Paws::LookoutEquipment::UpdateActiveModelVersionResponse;
  use Moose;
  has CurrentActiveVersion => (is => 'ro', isa => 'Int');
  has CurrentActiveVersionArn => (is => 'ro', isa => 'Str');
  has ModelArn => (is => 'ro', isa => 'Str');
  has ModelName => (is => 'ro', isa => 'Str');
  has PreviousActiveVersion => (is => 'ro', isa => 'Int');
  has PreviousActiveVersionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::UpdateActiveModelVersionResponse

=head1 ATTRIBUTES


=head2 CurrentActiveVersion => Int

The version that is currently active of the machine learning model for
which the active model version was set.


=head2 CurrentActiveVersionArn => Str

The Amazon Resource Name (ARN) of the machine learning model version
that is the current active model version.


=head2 ModelArn => Str

The Amazon Resource Name (ARN) of the machine learning model for which
the active model version was set.


=head2 ModelName => Str

The name of the machine learning model for which the active model
version was set.


=head2 PreviousActiveVersion => Int

The previous version that was active of the machine learning model for
which the active model version was set.


=head2 PreviousActiveVersionArn => Str

The Amazon Resource Name (ARN) of the machine learning model version
that was the previous active model version.


=head2 _request_id => Str


=cut

1;