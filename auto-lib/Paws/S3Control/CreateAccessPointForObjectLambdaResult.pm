
package Paws::S3Control::CreateAccessPointForObjectLambdaResult;
  use Moose;
  has Alias => (is => 'ro', isa => 'Paws::S3Control::ObjectLambdaAccessPointAlias');
  has ObjectLambdaAccessPointArn => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessPointForObjectLambdaResult

=head1 ATTRIBUTES


=head2 Alias => L<Paws::S3Control::ObjectLambdaAccessPointAlias>

The alias of the Object Lambda Access Point.



=head2 ObjectLambdaAccessPointArn => Str

Specifies the ARN for the Object Lambda Access Point.




=cut

