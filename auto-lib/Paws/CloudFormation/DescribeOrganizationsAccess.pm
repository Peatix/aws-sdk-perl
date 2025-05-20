
package Paws::CloudFormation::DescribeOrganizationsAccess;
  use Moose;
  has CallAs => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationsAccess');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::DescribeOrganizationsAccessOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeOrganizationsAccessResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeOrganizationsAccess - Arguments for method DescribeOrganizationsAccess on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOrganizationsAccess on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method DescribeOrganizationsAccess.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOrganizationsAccess.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $DescribeOrganizationsAccessOutput =
      $cloudformation->DescribeOrganizationsAccess(
      CallAs => 'SELF',    # OPTIONAL
      );

    # Results:
    my $Status = $DescribeOrganizationsAccessOutput->Status;

  # Returns a L<Paws::CloudFormation::DescribeOrganizationsAccessOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/DescribeOrganizationsAccess>

=head1 ATTRIBUTES


=head2 CallAs => Str

[Service-managed permissions] Specifies whether you are acting as an
account administrator in the organization's management account or as a
delegated administrator in a member account.

By default, C<SELF> is specified.

=over

=item *

If you are signed in to the management account, specify C<SELF>.

=item *

If you are signed in to a delegated administrator account, specify
C<DELEGATED_ADMIN>.

Your Amazon Web Services account must be registered as a delegated
administrator in the management account. For more information, see
Register a delegated administrator
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html)
in the I<CloudFormation User Guide>.

=back


Valid values are: C<"SELF">, C<"DELEGATED_ADMIN">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOrganizationsAccess in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

