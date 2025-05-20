
package Paws::ResourceGroups::UntagOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Keys => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::UntagOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon resource name (ARN) of the resource group from which tags
have been removed.


=head2 Keys => ArrayRef[Str|Undef]

The keys of the tags that were removed.


=head2 _request_id => Str


=cut

