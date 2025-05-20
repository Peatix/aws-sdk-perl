
package Paws::CloudFront::ListConflictingAliasesResult;
  use Moose;
  has ConflictingAliasesList => (is => 'ro', isa => 'Paws::CloudFront::ConflictingAliasesList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListConflictingAliasesResult

=head1 ATTRIBUTES


=head2 ConflictingAliasesList => L<Paws::CloudFront::ConflictingAliasesList>

A list of conflicting aliases.




=cut

