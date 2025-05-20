
package Paws::S3Control::GetAccessPointScopeResult;
  use Moose;
  has Scope => (is => 'ro', isa => 'Paws::S3Control::Scope');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointScopeResult

=head1 ATTRIBUTES


=head2 Scope => L<Paws::S3Control::Scope>

The contents of the access point scope.




=cut

