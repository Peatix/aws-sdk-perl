
package Paws::S3Control::GetAccessGrantsInstanceForPrefixResult;
  use Moose;
  has AccessGrantsInstanceArn => (is => 'ro', isa => 'Str');
  has AccessGrantsInstanceId => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessGrantsInstanceForPrefixResult

=head1 ATTRIBUTES


=head2 AccessGrantsInstanceArn => Str

The Amazon Resource Name (ARN) of the S3 Access Grants instance.



=head2 AccessGrantsInstanceId => Str

The ID of the S3 Access Grants instance. The ID is C<default>. You can
have one S3 Access Grants instance per Region per account.




=cut

