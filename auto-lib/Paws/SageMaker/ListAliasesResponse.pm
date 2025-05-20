
package Paws::SageMaker::ListAliasesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SageMakerImageVersionAliases => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAliasesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token for getting the next set of aliases, if more aliases exist.


=head2 SageMakerImageVersionAliases => ArrayRef[Str|Undef]

A list of SageMaker AI image version aliases.


=head2 _request_id => Str


=cut

1;