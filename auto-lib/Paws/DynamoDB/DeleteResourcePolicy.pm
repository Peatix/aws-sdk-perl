
package Paws::DynamoDB::DeleteResourcePolicy;
  use Moose;
  has ExpectedRevisionId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourcePolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::DeleteResourcePolicyOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::DeleteResourcePolicy - Arguments for method DeleteResourcePolicy on L<Paws::DynamoDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourcePolicy on the
L<Amazon DynamoDB|Paws::DynamoDB> service. Use the attributes of this class
as arguments to method DeleteResourcePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourcePolicy.

=head1 SYNOPSIS

    my $dynamodb = Paws->service('DynamoDB');
    my $DeleteResourcePolicyOutput = $dynamodb->DeleteResourcePolicy(
      ResourceArn        => 'MyResourceArnString',
      ExpectedRevisionId => 'MyPolicyRevisionId',    # OPTIONAL
    );

    # Results:
    my $RevisionId = $DeleteResourcePolicyOutput->RevisionId;

    # Returns a L<Paws::DynamoDB::DeleteResourcePolicyOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dynamodb/DeleteResourcePolicy>

=head1 ATTRIBUTES


=head2 ExpectedRevisionId => Str

A string value that you can use to conditionally delete your policy.
When you provide an expected revision ID, if the revision ID of the
existing policy on the resource doesn't match or if there's no policy
attached to the resource, the request will fail and return a
C<PolicyNotFoundException>.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DynamoDB resource from which the
policy will be removed. The resources you can specify include tables
and streams. If you remove the policy of a table, it will also remove
the permissions for the table's indexes defined in that policy
document. This is because index permissions are defined in the table's
policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourcePolicy in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

