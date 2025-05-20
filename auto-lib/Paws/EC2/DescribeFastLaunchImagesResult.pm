
package Paws::EC2::DescribeFastLaunchImagesResult;
  use Moose;
  has FastLaunchImages => (is => 'ro', isa => 'ArrayRef[Paws::EC2::DescribeFastLaunchImagesSuccessItem]', request_name => 'fastLaunchImageSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeFastLaunchImagesResult

=head1 ATTRIBUTES


=head2 FastLaunchImages => ArrayRef[L<Paws::EC2::DescribeFastLaunchImagesSuccessItem>]

A collection of details about the fast-launch enabled Windows images
that meet the requested criteria.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

