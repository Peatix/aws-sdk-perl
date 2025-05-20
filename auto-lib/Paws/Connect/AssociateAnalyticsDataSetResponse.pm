
package Paws::Connect::AssociateAnalyticsDataSetResponse;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str');
  has ResourceShareArn => (is => 'ro', isa => 'Str');
  has ResourceShareId => (is => 'ro', isa => 'Str');
  has TargetAccountId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::AssociateAnalyticsDataSetResponse

=head1 ATTRIBUTES


=head2 DataSetId => Str

The identifier of the dataset that was associated.


=head2 ResourceShareArn => Str

The Amazon Resource Name (ARN) of the Resource Access Manager share.


=head2 ResourceShareId => Str

The Resource Access Manager share ID that is generated.


=head2 TargetAccountId => Str

The identifier of the target account.


=head2 _request_id => Str


=cut

