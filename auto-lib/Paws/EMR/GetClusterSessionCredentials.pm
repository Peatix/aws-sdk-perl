
package Paws::EMR::GetClusterSessionCredentials;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetClusterSessionCredentials');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::GetClusterSessionCredentialsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetClusterSessionCredentials - Arguments for method GetClusterSessionCredentials on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetClusterSessionCredentials on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method GetClusterSessionCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetClusterSessionCredentials.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $GetClusterSessionCredentialsOutput =
      $elasticmapreduce->GetClusterSessionCredentials(
      ClusterId        => 'MyXmlStringMaxLen256',
      ExecutionRoleArn => 'MyArnType',              # OPTIONAL
      );

    # Results:
    my $Credentials = $GetClusterSessionCredentialsOutput->Credentials;
    my $ExpiresAt   = $GetClusterSessionCredentialsOutput->ExpiresAt;

    # Returns a L<Paws::EMR::GetClusterSessionCredentialsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/GetClusterSessionCredentials>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The unique identifier of the cluster.



=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the runtime role for interactive
workload submission on the cluster. The runtime role can be a
cross-account IAM role. The runtime role ARN is a combination of
account ID, role name, and role type using the following format:
C<arn:partition:service:region:account:resource>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetClusterSessionCredentials in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

