
package Paws::S3Control::PutAccessGrantsInstanceResourcePolicyResult;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Organization => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PutAccessGrantsInstanceResourcePolicyResult

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The date and time when you created the S3 Access Grants instance
resource policy.



=head2 Organization => Str

The Organization of the resource policy of the S3 Access Grants
instance.



=head2 Policy => Str

The updated resource policy of the S3 Access Grants instance.




=cut

