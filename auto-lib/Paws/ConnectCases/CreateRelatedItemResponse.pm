
package Paws::ConnectCases::CreateRelatedItemResponse;
  use Moose;
  has RelatedItemArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relatedItemArn', required => 1);
  has RelatedItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relatedItemId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateRelatedItemResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> RelatedItemArn => Str

The Amazon Resource Name (ARN) of the related item.


=head2 B<REQUIRED> RelatedItemId => Str

The unique identifier of the related item.


=head2 _request_id => Str


=cut

