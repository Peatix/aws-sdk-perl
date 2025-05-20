
package Paws::CloudFront::UpdateDomainAssociationResult;
  use Moose;
  has Domain => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has ResourceId => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDomainAssociationResult

=head1 ATTRIBUTES


=head2 Domain => Str

The domain that you're moving.



=head2 ETag => Str

The current version of the target distribution or distribution tenant
that was associated with the domain.



=head2 ResourceId => Str

The intended destination for the domain.




=cut

