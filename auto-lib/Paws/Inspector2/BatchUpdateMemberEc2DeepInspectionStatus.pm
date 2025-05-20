
package Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatus;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::MemberAccountEc2DeepInspectionStatus]', traits => ['NameInRequest'], request_name => 'accountIds', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateMemberEc2DeepInspectionStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ec2deepinspectionstatus/member/batch/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatus - Arguments for method BatchUpdateMemberEc2DeepInspectionStatus on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateMemberEc2DeepInspectionStatus on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method BatchUpdateMemberEc2DeepInspectionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateMemberEc2DeepInspectionStatus.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $BatchUpdateMemberEc2DeepInspectionStatusResponse =
      $inspector2->BatchUpdateMemberEc2DeepInspectionStatus(
      AccountIds => [
        {
          AccountId              => 'MyAccountId',    # min: 12, max: 12
          ActivateDeepInspection => 1,

        },
        ...
      ],

      );

    # Results:
    my $AccountIds =
      $BatchUpdateMemberEc2DeepInspectionStatusResponse->AccountIds;
    my $FailedAccountIds =
      $BatchUpdateMemberEc2DeepInspectionStatusResponse->FailedAccountIds;

# Returns a L<Paws::Inspector2::BatchUpdateMemberEc2DeepInspectionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/BatchUpdateMemberEc2DeepInspectionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[L<Paws::Inspector2::MemberAccountEc2DeepInspectionStatus>]

The unique identifiers for the Amazon Web Services accounts to change
Amazon Inspector deep inspection status for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateMemberEc2DeepInspectionStatus in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

