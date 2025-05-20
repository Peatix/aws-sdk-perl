
package Paws::DynamoDB::PutResourcePolicy;
  use Moose;
  has ConfirmRemoveSelfResourceAccess => (is => 'ro', isa => 'Bool');
  has ExpectedRevisionId => (is => 'ro', isa => 'Str');
  has Policy => (is => 'ro', isa => 'Str', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::PutResourcePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PutResourcePolicy - Arguments for method PutResourcePolicy on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutResourcePolicy on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method PutResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutResourcePolicy.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $PutResourcePolicyOutput = $dynamodb->PutResourcePolicy(
      Policy                          => 'MyResourcePolicy',
      ResourceArn                     => 'MyResourceArnString',
      ConfirmRemoveSelfResourceAccess => 1,                       # OPTIONAL
      ExpectedRevisionId              => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $RevisionId = $PutResourcePolicyOutput->RevisionId;

    # Returns a L<Paws::DynamoDB::PutResourcePolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/PutResourcePolicy>

=head1 ATTRIBUTES


=head2 ConfirmRemoveSelfResourceAccess => Bool

Set this parameter to C<true> to confirm that you want to remove your
permissions to change the policy of this resource in the future.



=head2 ExpectedRevisionId => Str

A string value that you can use to conditionally update your policy.
You can provide the revision ID of your existing policy to make
mutating requests against that policy.

When you provide an expected revision ID, if the revision ID of the
existing policy on the resource doesn't match or if there's no policy
attached to the resource, your request will be rejected with a
C<PolicyNotFoundException>.

To conditionally attach a policy when no policy exists for the
resource, specify C<NO_POLICY> for the revision ID.



=head2 B<REQUIRED> Policy => Str

An Amazon Web Services resource-based policy document in JSON format.

=over

=item *

The maximum size supported for a resource-based policy document is 20
KB. DynamoDB counts whitespaces when calculating the size of a policy
against this limit.

=item *

Within a resource-based policy, if the action for a DynamoDB
service-linked role (SLR) to replicate data for a global table is
denied, adding or deleting a replica will fail with an error.

=back

For a full list of all considerations that apply while attaching a
resource-based policy, see Resource-based policy considerations
(https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/rbac-considerations.html).



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DynamoDB resource to which the
policy will be attached. The resources you can specify include tables
and streams.

You can control index permissions using the base table's policy. To
specify the same permission level for your table and its indexes, you
can provide both the table and index Amazon Resource Name (ARN)s in the
C<Resource> field of a given C<Statement> in your policy document.
Alternatively, to specify different permissions for your table,
indexes, or both, you can define multiple C<Statement> fields in your
policy document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutResourcePolicy in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

