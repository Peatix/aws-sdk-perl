
package Paws::Connect::BatchAssociateAnalyticsDataSetResponse;
  use Moose;
  has Created => (is => 'ro', isa => 'ArrayRef[Paws::Connect::AnalyticsDataAssociationResult]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ErrorResult]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::BatchAssociateAnalyticsDataSetResponse

=head1 ATTRIBUTES


=head2 Created => ArrayRef[L<Paws::Connect::AnalyticsDataAssociationResult>]

Information about associations that are successfully created:
C<DataSetId>, C<TargetAccountId>, C<ResourceShareId>,
C<ResourceShareArn>.


=head2 Errors => ArrayRef[L<Paws::Connect::ErrorResult>]

A list of errors for datasets that aren't successfully associated with
the target account.


=head2 _request_id => Str


=cut

