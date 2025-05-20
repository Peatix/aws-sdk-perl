
package Paws::Resiliencehub::BatchUpdateRecommendationStatusResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has FailedEntries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::BatchUpdateRecommendationStatusFailedEntry]', traits => ['NameInRequest'], request_name => 'failedEntries', required => 1);
  has SuccessfulEntries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::BatchUpdateRecommendationStatusSuccessfulEntry]', traits => ['NameInRequest'], request_name => 'successfulEntries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::BatchUpdateRecommendationStatusResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> FailedEntries => ArrayRef[L<Paws::Resiliencehub::BatchUpdateRecommendationStatusFailedEntry>]

A list of items with error details about each item, which could not be
included or excluded.


=head2 B<REQUIRED> SuccessfulEntries => ArrayRef[L<Paws::Resiliencehub::BatchUpdateRecommendationStatusSuccessfulEntry>]

A list of items that were included or excluded.


=head2 _request_id => Str


=cut

