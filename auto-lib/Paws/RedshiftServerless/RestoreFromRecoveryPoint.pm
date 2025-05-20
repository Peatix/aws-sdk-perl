
package Paws::RedshiftServerless::RestoreFromRecoveryPoint;
  use Moose;
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);
  has RecoveryPointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryPointId' , required => 1);
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::RestoreFromRecoveryPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreFromRecoveryPoint - Arguments for method RestoreFromRecoveryPoint on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreFromRecoveryPoint on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method RestoreFromRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreFromRecoveryPoint.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $RestoreFromRecoveryPointResponse =
      $redshift -serverless->RestoreFromRecoveryPoint(
      NamespaceName   => 'MyNamespaceName',
      RecoveryPointId => 'MyString',
      WorkgroupName   => 'MyWorkgroupName',

      );

    # Results:
    my $Namespace       = $RestoreFromRecoveryPointResponse->Namespace;
    my $RecoveryPointId = $RestoreFromRecoveryPointResponse->RecoveryPointId;

# Returns a L<Paws::RedshiftServerless::RestoreFromRecoveryPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/RestoreFromRecoveryPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to restore data into.



=head2 B<REQUIRED> RecoveryPointId => Str

The unique identifier of the recovery point to restore from.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup used to restore data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreFromRecoveryPoint in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

