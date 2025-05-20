
package Paws::SSOAdmin::DescribeInstanceResponse;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has IdentityStoreId => (is => 'ro', isa => 'Str');
  has InstanceArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeInstanceResponse

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date the instance was created.


=head2 IdentityStoreId => Str

The identifier of the identity store that is connected to the instance
of IAM Identity Center.


=head2 InstanceArn => Str

The ARN of the instance of IAM Identity Center under which the
operation will run. For more information about ARNs, see Amazon
Resource Names (ARNs) and Amazon Web Services Service Namespaces in the
I<Amazon Web Services General Reference>.


=head2 Name => Str

Specifies the instance name.


=head2 OwnerAccountId => Str

The identifier of the Amazon Web Services account for which the
instance was created.


=head2 Status => Str

The status of the instance.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"ACTIVE">
=head2 _request_id => Str


=cut

1;