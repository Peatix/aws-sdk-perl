
package Paws::EC2::EnableIpamOrganizationAdminAccount;
  use Moose;
  has DelegatedAdminAccountId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableIpamOrganizationAdminAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::EnableIpamOrganizationAdminAccountResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EnableIpamOrganizationAdminAccount - Arguments for method EnableIpamOrganizationAdminAccount on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableIpamOrganizationAdminAccount on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method EnableIpamOrganizationAdminAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableIpamOrganizationAdminAccount.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $EnableIpamOrganizationAdminAccountResult =
      $ec2->EnableIpamOrganizationAdminAccount(
      DelegatedAdminAccountId => 'MyString',
      DryRun                  => 1,            # OPTIONAL
      );

    # Results:
    my $Success = $EnableIpamOrganizationAdminAccountResult->Success;

    # Returns a L<Paws::EC2::EnableIpamOrganizationAdminAccountResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/EnableIpamOrganizationAdminAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DelegatedAdminAccountId => Str

The Organizations member account ID that you want to enable as the IPAM
account.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableIpamOrganizationAdminAccount in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

