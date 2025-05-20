
package Paws::EC2::DisassociateInstanceEventWindow;
  use Moose;
  has AssociationTarget => (is => 'ro', isa => 'Paws::EC2::InstanceEventWindowDisassociationRequest', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceEventWindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateInstanceEventWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DisassociateInstanceEventWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisassociateInstanceEventWindow - Arguments for method DisassociateInstanceEventWindow on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateInstanceEventWindow on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DisassociateInstanceEventWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateInstanceEventWindow.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DisassociateInstanceEventWindowResult =
      $ec2->DisassociateInstanceEventWindow(
      AssociationTarget => {
        DedicatedHostIds => [ 'MyDedicatedHostId', ... ],    # OPTIONAL
        InstanceIds      => [ 'MyInstanceId',      ... ],    # OPTIONAL
        InstanceTags     => [
          {
            Key   => 'MyString',    # OPTIONAL
            Value => 'MyString',    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },
      InstanceEventWindowId => 'MyInstanceEventWindowId',
      DryRun                => 1,                           # OPTIONAL
      );

    # Results:
    my $InstanceEventWindow =
      $DisassociateInstanceEventWindowResult->InstanceEventWindow;

    # Returns a L<Paws::EC2::DisassociateInstanceEventWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DisassociateInstanceEventWindow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationTarget => L<Paws::EC2::InstanceEventWindowDisassociationRequest>

One or more targets to disassociate from the specified event window.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceEventWindowId => Str

The ID of the event window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateInstanceEventWindow in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

