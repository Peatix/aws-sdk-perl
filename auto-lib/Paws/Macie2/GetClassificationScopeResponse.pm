
package Paws::Macie2::GetClassificationScopeResponse;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has S3 => (is => 'ro', isa => 'Paws::Macie2::S3ClassificationScope', traits => ['NameInRequest'], request_name => 's3');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetClassificationScopeResponse

=head1 ATTRIBUTES


=head2 Id => Str

The unique identifier for the classification scope.


=head2 Name => Str

The name of the classification scope:
automated-sensitive-data-discovery.


=head2 S3 => L<Paws::Macie2::S3ClassificationScope>

The S3 buckets that are excluded from automated sensitive data
discovery.


=head2 _request_id => Str


=cut

