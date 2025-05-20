
package Paws::CloudTrail::RegisterOrganizationDelegatedAdmin;
  use Moose;
  has MemberAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterOrganizationDelegatedAdmin');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::RegisterOrganizationDelegatedAdminResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::RegisterOrganizationDelegatedAdmin - Arguments for method RegisterOrganizationDelegatedAdmin on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterOrganizationDelegatedAdmin on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method RegisterOrganizationDelegatedAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterOrganizationDelegatedAdmin.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $RegisterOrganizationDelegatedAdminResponse =
      $cloudtrail->RegisterOrganizationDelegatedAdmin(
      MemberAccountId => 'MyAccountId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/RegisterOrganizationDelegatedAdmin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberAccountId => Str

An organization member account ID that you want to designate as a
delegated administrator.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterOrganizationDelegatedAdmin in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

