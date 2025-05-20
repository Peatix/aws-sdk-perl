
package Paws::CloudFront::CreateConnectionGroupResult;
  use Moose;
  has ConnectionGroup => (is => 'ro', isa => 'Paws::CloudFront::ConnectionGroup', traits => ['ParamInBody']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateConnectionGroupResult

=head1 ATTRIBUTES


=head2 ConnectionGroup => L<Paws::CloudFront::ConnectionGroup>

The connection group that you created.



=head2 ETag => Str

The current version of the connection group.




=cut

