
package Paws::S3Control::CreateAccessGrantsInstanceResult;
  use Moose;
  has AccessGrantsInstanceArn => (is => 'ro', isa => 'Str');
  has AccessGrantsInstanceId => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has IdentityCenterApplicationArn => (is => 'ro', isa => 'Str');
  has IdentityCenterArn => (is => 'ro', isa => 'Str');
  has IdentityCenterInstanceArn => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessGrantsInstanceResult

=head1 ATTRIBUTES


=head2 AccessGrantsInstanceArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity
Center instance that you are associating with your S3 Access Grants
instance. An IAM Identity Center instance is your corporate identity
directory that you added to the IAM Identity Center. You can use the
ListInstances
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html)
API operation to retrieve a list of your Identity Center instances and
their ARNs.



=head2 AccessGrantsInstanceId => Str

The ID of the S3 Access Grants instance. The ID is C<default>. You can
have one S3 Access Grants instance per Region per account.



=head2 CreatedAt => Str

The date and time when you created the S3 Access Grants instance.



=head2 IdentityCenterApplicationArn => Str

If you associated your S3 Access Grants instance with an Amazon Web
Services IAM Identity Center instance, this field returns the Amazon
Resource Name (ARN) of the IAM Identity Center instance application; a
subresource of the original Identity Center instance. S3 Access Grants
creates this Identity Center application for the specific S3 Access
Grants instance.



=head2 IdentityCenterArn => Str

If you associated your S3 Access Grants instance with an Amazon Web
Services IAM Identity Center instance, this field returns the Amazon
Resource Name (ARN) of the IAM Identity Center instance application; a
subresource of the original Identity Center instance. S3 Access Grants
creates this Identity Center application for the specific S3 Access
Grants instance.



=head2 IdentityCenterInstanceArn => Str

The Amazon Resource Name (ARN) of the Amazon Web Services IAM Identity
Center instance that you are associating with your S3 Access Grants
instance. An IAM Identity Center instance is your corporate identity
directory that you added to the IAM Identity Center. You can use the
ListInstances
(https://docs.aws.amazon.com/singlesignon/latest/APIReference/API_ListInstances.html)
API operation to retrieve a list of your Identity Center instances and
their ARNs.




=cut

