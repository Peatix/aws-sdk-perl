
package Paws::CloudFront::DisassociateDistributionWebACLResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has Id => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DisassociateDistributionWebACLResult

=head1 ATTRIBUTES


=head2 ETag => Str

The current version of the distribution.



=head2 Id => Str

The ID of the distribution.




=cut

